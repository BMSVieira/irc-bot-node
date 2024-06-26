        // ****************************************************************
        // IRC BOT
        // ****************************************************************

        // Requires
        var irc = require('irc');

        // Modulos
        var core = require("./core/init");
        var comportamento = require("./core/comportamento");
        var owners = require('./db/owners');
        var log = require('./core/logs');

        // Variaveis
        var infoClones = [];

        // Verifica se o telegram está ativo
        if(core.config[0]["telegram"]['telegram_active'] == "true")
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
        autoRejoin: true,
        autoConnect: true,
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
    if(core.config[0]["telegram"]['telegram_active'] == "true")
    {
        var bot = new telegramBot(core.config[0]["telegram"]['telegram_token'], {polling: true, filepath:false});
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

            // Limpa consola todos os minutos
            setInterval(function(){ console.clear(); }, 60000);

            // Atualiza palavras
            comportamento.syncDb(client);
        
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
        
        client.addListener('names', function (channel, nicks) {
                infoClones = [];
                let keys = Object.keys(nicks);
                let index = 0;

                // Limpa o ficheiro
                core.truncateTable("clones");
            
                function processUsers() {
                    for (let i = 0; i < 3; i++) {
                        if (index < keys.length) {
                            let key = keys[index];
                            if (nicks.hasOwnProperty(key)) {
                               client.send('whois', key);
                            }
                            index++;
                        } else {
                            clearInterval(intervalClones);
                            console.log('\x1b[36m%s\x1b[0m', "Terminou a lista de nicks.");
                            break;
                        }
                    }
                }
                let intervalClones = setInterval(processUsers, 30000);
                processUsers();
        });

        // Escuta pelo comando Whois
       client.addListener('whois', function(info) {

                if ( info.nick != 'null' && info.nick != '' &&  info.host != 'null' && info.host != '' &&
                    info.realname != 'null' && info.realname != '' && info.server != 'null' && info.server != '' && info.serverinfo != 'null' && info.serverinfo != ''
                ) {

                    comportamento.checkCloneSala(info.nick, info.host, info.realname, info.server, info.serverinfo, core.config[0]["global_channel"], client);
                    comportamento.addWhoisData(info.nick, info.host, info.realname, info.server, info.serverinfo);   
                    log.log_entrada(info.nick, info.host, info.realname, info.server, info.serverinfo);   
                
                } else {
                    console.warning("Some whois information is missing, null, or empty:", info);
                }

        });

        // Escuta por utilizadores que entrem no canal
        client.addListener('join', function (channel, nick, message) {
            // Regista que este user entrou.
            client.send('whois', nick);
            console.log('\x1b[32m%s\x1b[0m', '' + message.nick + ' Entrou.'); 

            // Notifica via Telegram
            if(core.config[0]["telegram"]['telegram_join'] == "true") { telegram.notify(bot, nick, core.config[0]["telegram"], "join"); }

            // Verifica os nicks
            comportamento.verificaNick(nick, client, core.config[0]["global_channel"], bot, core.config[0]["telegram"]);
            comportamento.checkKick(nick, client, core.config[0]["global_channel"], bot, core.config[0]["telegram"]);
        });

        // Escuta por utilizadores que levam kick
        client.addListener('kick', (channel, nick, by, reason, message) => {
            
            console.log('\x1b[35m%s\x1b[0m', '' + nick + ' foi kickado. ('+reason+')');
            comportamento.removeWhoisData(nick, client);

            if(core.config[0]["telegram"]['telegram_kick'] == "true")
                telegram.notify(bot, nick, core.config[0]["telegram"], "kick", reason);
        });

        // Escuta por Utilizadores que entrem com status para dar a mensagem de boas vindas
        client.addListener('+mode', function (channel, by, mode, argument, message) {
            if(core.config[0]["modoAtual"] == 0 && argument != core.config[0]["global_nick"]) { core.nickJoinedChannel(client, argument); }    
        });

        // Escuta por utilizadores que desligam o browser
        client.addListener('quit', function (channel, nick, reason, message) {
            
            console.log('\x1b[35m%s\x1b[0m', '' + message.nick + ' saiu. ('+reason+')'); 
            comportamento.removeWhoisData(message.nick, client);

            // Notifica via Telegram
            if(core.config[0]["telegram"]['telegram_leave'] == "true") { telegram.notify(bot, message.nick, core.config[0]["telegram"], "leave"); }
        });

        // Escuta por utilizadores que saiem do canal
        client.addListener('part', function (channel, nick, reason, message) {
            
            console.log('\x1b[35m%s\x1b[0m', '' + message.nick + ' saiu. ('+reason+')'); 
            comportamento.removeWhoisData(message.nick, client);

            // Notifica via Telegram
            if(core.config[0]["telegram"]['telegram_leave'] == "true") { telegram.notify(bot, message.nick, core.config[0]["telegram"], "leave"); }
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
                // console.log(from + '(' + to + ') : ' + message);

                // Funções & Modulos
                comportamento.verificaCaps(message, from, client, core.config[0]["global_channel"]);
                
                // Pesquisa por comandos que os utilizadores possam dizer
                const regex = /<([^>]+)>/;
                const matches = message.match(regex);
                if(matches)
                {
                  switch (matches[1].toLowerCase()) {
                    case 'regras':
                       
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
                case "setQuizLimit":
                    if(core.isAdmin(fromNick))
                    {
                        // Muda o limite do quiz
                        core.changeTime(fromNick, client, "setQuizLimit", query);
                    }
                break;    
                case "kick":
                    if(core.isAdmin(fromNick))
                    {
                        // Kicka um nick
                        client.send('kick', core.config[0]["global_channel"], query, "");
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
                case "denunciar":
                    core.denunciar(query, fromNick, client, core.config[0]["global_channel"]);
                break; 
                case "sync":
                    if(core.isAdmin(fromNick))
                    {
                        // Atualiza os parametros de kick
                        comportamento.syncDb(client);
                        client.say(fromNick, "Sincronização completa.");
                    }
                break; 
                case "addmeiapalavra":
                    if(core.isAdmin(fromNick))
                    {
                        // Atualiza os parametros de kick
                        comportamento.addMeiaPalavra(client, query, fromNick);
                    }
                break; 
                case "addnickproibido":
                    if(core.isAdmin(fromNick))
                    {
                        // Atualiza os parametros de kick
                        comportamento.addNickProibido(client, query, fromNick);
                    }
                break; 
                case "delnickproibido":
                    if(core.isAdmin(fromNick))
                    {
                        // Atualiza os parametros de kick
                        comportamento.delNickProibido(client, query, fromNick);
                    }
                break; 
                case "delmeiapalavra":
                    if(core.isAdmin(fromNick))
                    {
                        // Atualiza os parametros de kick
                        comportamento.delMeiaPalavra(client, query, fromNick);
                    }
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

    if(core.config[0]["telegram"]['telegram_active'] == "true")
    { 
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
                client.emit('pm', owners.ownersBot[0], msg.text);
            }

            if(smsNick == 'ping')
            {
                bot.sendMessage(chatId, "Pong - "+core.config[0]["global_nick"]);
            }

        });

        bot.on('polling_error', (error) => {
            console.log("Erro de Polling:"+ error.code);  // => 'EFATAL'
        });

        bot.on('webhook_error', (error) => {
            console.log("Erro de Webhook:"+error.code);  // => 'EPARSE'
        });
    }

