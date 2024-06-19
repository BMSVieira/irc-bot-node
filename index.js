        // ****************************************************************
        // IRC BOT
        // ****************************************************************

        var irc = require('irc');
        var os = require('os');
        var core = require("./core/init");

        // Modulos
        // var radio = require("./core/radio");
        var comportamento = require("./core/comportamento");
        var ajuda = require("./core/ajuda");
        var owners = require('./db/owners');

        // Verifica se o telegram está ativo
        if(core.config[0]["telegram"]['telegram_active'])
        {
            var telegramBot = require('node-telegram-bot-api');
            var telegram = require("./core/telegram");
        }

        // 0 - Modo Normal.
        // 2 - Quiz
        // 3 - Shout

        // Boot
        console.log("** BOT A iniciar... **");
        console.log(" ");

    // ########################################################################################
    // Faz a conexão ao servidor
    // ########################################################################################

    var client = new irc.Client( core.config[0]["global_irc"], core.config[0]["global_nick"], {
        userName: core.config[0]["global_userName"],
        realName: core.config[0]["global_realName"],
        port: core.config[0]["global_port"],
        localAddress: "",
        debug: false,
        showErrors: true,
        autoRejoin: false,
        autoConnect: false,
        secure: true,
        selfSigned: true,
        certExpired: true,
        floodProtection: false,
        floodProtectionDelay: 1000,
        sasl: false,
        retryCount: 0,
        retryDelay: 2000,
        stripColors: false,
        channelPrefixes: "#",
        messageSplit: 512,
        encoding: ''
    });

    client.connect();

    // Fez conexão ao Telegram
    if(core.config[0]["telegram"]['telegram_active'])
    {
        var bot = new telegramBot(core.config[0]["telegram"]['telegram_token'], {polling: true});
    }

    // ########################################################################################
    // Após estar registado, junta-se e entra com a conta
    // ########################################################################################

        // Verifica se conecta com sucesso
        client.addListener('registered', function () {
                
            console.log("joined.");

            // Junta-se ao canal
            client.join(core.config[0]["global_channel"], function(channel, error) {
                if(core.config[0]["global_isRegistered"]) { client.send('PRIVMSG NickServ :IDENTIFY ', core.config[0]["global_nick"], ' ', core.config[0]["global_password"]); }
            });

            // Cria a função que envia as mensagens
            let interval = setInterval(function(){
                if(core.fila.length > 0)
                {
                    client.say(core.config[0]["global_channel"], core.fila[0]);
                    core.fila.shift();
                }
            }, 2000);
        
        });
  
    // ########################################################################################
    // Mensagens do dia
    // ########################################################################################
        
        // Recebe a Message of The Day
        client.addListener('motd', function (motd) {
            console.log(motd);
            console.log("** BOT Está ativo. **");
            console.log(" ");
        });

        // Recebe um ping do servidor
        client.addListener('ping', function (motd) {
            console.log("Keep-alive enviado");
        });

    // ########################################################################################
    // Obter mensagens totais
    // ########################################################################################
        
        // Escuta por Utilizadores que entrem com status para dar a mensagem de boas vindas
        client.addListener('+mode', function (channel, by, mode, argument, message) {
            if(core.config[0]["modoAtual"] == 0 && argument != core.config[0]["global_nick"]) { core.nickJoinedChannel(client, argument); }    
        });

        // Escuta por utilizadores que desligam o browser
        client.addListener('quit', function (channel, nick, reason, message) {
            console.log('\x1b[35m%s\x1b[0m', '' + message.nick + ' saiu. ('+reason+')'); 

            // Notifica via Telegram
            if(core.config[0]["telegram"]['telegram_leave'] == "true") { telegram.notify(bot, message.nick, core.config[0]["telegram"], "leave"); }
        });

        // Escuta por utilizadores que saiem do canal
        client.addListener('part', function (channel, nick, reason, message) {
            console.log('\x1b[35m%s\x1b[0m', '' + message.nick + ' saiu. ('+reason+')'); 

            // Notifica via Telegram
            if(core.config[0]["telegram"]['telegram_leave'] == "true") { telegram.notify(bot, message.nick, core.config[0]["telegram"], "leave"); }
        });

        // Escuta por utilizadores que entrem no canal
        client.addListener('join', function (channel, nick, message) {

            // Notifica via Telegram
            if(core.config[0]["telegram"]['telegram_join'] == "true") { telegram.notify(bot, nick, core.config[0]["telegram"], "join"); }

            // Verifica os nicks
            comportamento.verificaNick(nick, client, core.config[0]["global_channel"], bot, core.config[0]["telegram"]);
            comportamento.checkKick(nick, client, core.config[0]["global_channel"], bot, core.config[0]["telegram"]);
        });

        // Escuta por erros
        client.addListener('error', function (message) {
            console.error('Error:', message['args'][2]);
        });
        
        // Escuta por mensagens
        client.addListener('message', function (from, to, message) {
            
            // Ignorar todas as mensagens direcionadas a mim, isso é tratado no scope abaixo.
            if(to != core.config[0]["global_nick"])
            {
              // Variaveis do PV
              var fromNick = from.toLowerCase();
              var myNick = core.config[0]["global_nick"].toLowerCase();
              var smsNick = message.toLowerCase();

              switch (core.config[0]["modoAtual"]) {
                case 0: // Modo Normal
                    if(smsNick.indexOf(myNick) !== -1) { core.startResposta(from, client);  }
                break;
                case 2: // Modo Quiz
                    core.CheckRespostaQuiz(client, smsNick, fromNick);
                break;
                default:
              }

                // Verifica se a mensagem tem mais de 5 caracteres Caps juntos.
                console.log(from + '(' + to + ') : ' + message);

                // Funções & Modulos
                comportamento.verificaCaps(message, from, client, core.config[0]["global_channel"]);
                
                // Pesquisa por comandos que os utilizadores possam dizer
                const regex = /<([^>]+)>/;
                const matches = message.match(regex);
                if(matches)
                {
                  switch (matches[1].toLowerCase()) {
                    case 'regras':
                        ajuda.regrasSala(fromNick, client);
                    break;
                    default:
                    // Nada em default
                  }
                }
            }
            
        });

    // ########################################################################################
    // Obter mensagens de ordem
    // ########################################################################################

        client.addListener('pm', function (from, message) 
        {
            // Variaveis do PV
            var fromNick = from;
            var smsNick = message;

            // Tratar a string para ir buscar o comando
            var smsCmd = smsNick.substring(smsNick.indexOf("<") + 1, smsNick.lastIndexOf(">"));
            // Tratar a string para ir buscar o resto do comando depois de >
            var query = smsNick.substring(smsNick.indexOf('>') + 1);
            query = query.substring(1); // Remove espaço entre o comando e o inicio da query

            // Chama a função com base na instrução dele.
            switch(smsCmd) {
                case "say":
                    if(core.isAdmin(fromNick))
                    {
                        // Diz o que lhe mandaram
                        core.filaDeMensagens(query);
                    }
                break; 
                case "startquiz":
                    if(core.isAdmin(fromNick))
                    {
                        // Iniciar Quiz
                        core.filaDeMensagens("#### Quiz vai iniciar dentro de segundos ####");
                        core.filaDeMensagens("#### Só serão consideradas respostas completas e com acentuação. ####");
                        client.say(fromNick, "Quiz a iniciar.");
                        core.unbindAll();
                        core.startQuiz(client);
                    }
                break; 
                case "stopquiz":
                    if(core.isAdmin(fromNick))
                    {
                        // Anuncia o vencedor e acaba com o quiz    
                        client.say(fromNick, "Quiz parou.");
                        core.unbindAll(); 
                    }
                break;
                case "startshout":
                    if(core.isAdmin(fromNick))
                    {
                        // Inicia o Shout
                        client.say(fromNick, "Shout a iniciar.");
                        core.unbindAll();
                        core.startShout(client);       
                    }
                break;
                case "startanuncios":
                        if(core.isAdmin(fromNick))
                        {
                            if(query)
                            {
                                // Inicia o Anuncios
                                client.say(fromNick, "Anuncios a iniciar.");
                                core.unbindAll();
                                core.startAnuncios(client, query);   
                            } else {
                                client.say(fromNick, "Tem de dizer qual é o anúncio.");
                            }
                        }                    
                break;
                case "stopanuncios":
                    if(core.isAdmin(fromNick))
                    {
                        // Cancela os anuncios
                        client.say(fromNick, "Anuncios parados.");
                        core.unbindAll();
                    }                    
                break;
                case "stopshout":
                    if(core.isAdmin(fromNick))
                    {
                        // Cancela o Shout
                        client.say(fromNick, "Shout parado.");
                        core.unbindAll(); 
                    }
                break;
                case "setmode":
                    if(core.isAdmin(fromNick))
                    {
                        // Cancela o Shout
                        client.say(fromNick, "Modo Anterior: "+core.config[0]["modoAtual"]);
                        core.config[0]["modoAtual"] = query;
                        client.say(fromNick, "Modo Atual: "+core.config[0]["modoAtual"]);
                    }
                break;
                case "setQuizLimit":
                    if(core.isAdmin(fromNick))
                    {
                        // Muda o limite do quiz
                        core.changeTime(fromNick, client, "setQuizLimit", query);
                    }
                break; 
                case "setShoutTime":
                    if(core.isAdmin(fromNick))
                    {
                        // Muda o limite do quiz
                        core.changeTime(fromNick, client, "setShoutTime", query);
                    }
                break;       
                case "disconnect":
                    if(core.isAdmin(fromNick))
                    {
                        // Desliga-se do servidor.
                        client.disconnect();
                    }
                break; 
                case "rename":
                    if(core.isAdmin(fromNick))
                    {
                        // Modifica o nome do bot
                        client.send('nick', query);
                    }
                break;  
                case "kick":
                    if(core.isAdmin(fromNick))
                    {
                        // Kicka um nick
                        client.send('kick', core.config[0]["global_channel"], query, "");
                        if(core.config[0]["telegram"]['telegram_kick'] == "true") { telegram.notify(bot, query, core.config[0]["telegram"], "kick", "Kickado do canal"); }
                    }
                break; 
                case "leave":
                    if(core.isAdmin(fromNick))
                    {
                        // Sai de um canal especifico
                        client.send('part', "#"+query);
                        client.say(fromNick, "Desconectou-se de: #"+query);
                    }
                break; 
                case "atualiza":
                    if(core.isAdmin(fromNick))
                    {
                        // Atualiza os parametros de kick
                        comportamento.atualizaMeioNick(client);
                        comportamento.atualizaPalavrasProibidas(client);
                        client.say(fromNick, "Parametros Atualizados.");
                    }
                break; 
                case "regras":
                    ajuda.regrasSala(fromNick, client);
                break; 
                case "denunciar":
                    core.denunciar(query, fromNick, client, core.config[0]["global_channel"]);
                break; 

                // ########################################################################################
                // Eventos do Telegram
                // ########################################################################################

                case "teleg_join":
                    if(core.isAdmin(fromNick))
                    {
                        client.say(fromNick, "Modo Anterior: "+core.config[0]["telegram"]['telegram_join']);
                        core.telegramChange("telegram_join", query);
                        client.say(fromNick, "Modo Atual: "+core.config[0]["telegram"]['telegram_join']);
                    }
                break;   
                case "teleg_leave":
                    if(core.isAdmin(fromNick))
                    {
                        client.say(fromNick, "Modo Anterior: "+core.config[0]["telegram"]['telegram_leave']);
                        core.telegramChange("telegram_leave", query);
                        client.say(fromNick, "Modo Atual: "+core.config[0]["telegram"]['telegram_leave']);
                    }
                break; 
                case "teleg_kick":
                    if(core.isAdmin(fromNick))
                    {
                        client.say(fromNick, "Modo Anterior: "+core.config[0]["telegram"]['telegram_kick']);
                        core.telegramChange("telegram_kick", query);
                        client.say(fromNick, "Modo Atual: "+core.config[0]["telegram"]['telegram_kick']);
                    }
                break;  
                case "teleg_configs":
                    if(core.isAdmin(fromNick))
                    {
                        client.say(fromNick, "Notificações ao entrar: "+core.config[0]["telegram"]['telegram_join']);
                        client.say(fromNick, "Notificações ao sair: "+core.config[0]["telegram"]['telegram_leave']);
                        client.say(fromNick, "Notificações ao kickar: "+core.config[0]["telegram"]['telegram_kick']);
                    }
                break;   
                default:
                // Nada em Default
            }
        });

    // ########################################################################################
    // Escuta por mensagens do telegram.
    // ########################################################################################

        bot.onText(/\/echo (.+)/, (msg, match) => {
            const chatId = msg.chat.id;
            const resp = match[1];
            bot.sendMessage(chatId, resp);
        });

        bot.on('message', (msg) => {
        const chatId = msg.chat.id;

            // Variaveis do PV
            var fromNick = chatId;
            var smsNick = msg.text;

            // Tratar a string para ir buscar o comando
            var smsCmd = smsNick.substring(smsNick.indexOf("<") + 1, smsNick.lastIndexOf(">"));
            // Tratar a string para ir buscar o resto do comando depois de >
            var query = smsNick.substring(smsNick.indexOf('>') + 1);
            query = query.substring(1); // Remove espaço entre o comando e o inicio da query
            
            if(telegram.isAdmin(String(fromNick)))
            {
                console.log("Mensagem Enviada: "+msg.text);
                client.emit('pm', owners[0], msg.text);
            }
          
        });


