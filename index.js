    // ****************************************************************
    // IRC BOT
    // ****************************************************************

    var irc = require('irc');
    var os = require('os');
    var core = require("./core/init");

    // 0 - Modo Normal.
    // 2 - Modo Quiz, não responde a nada.
    // 3 - Modo Shout.
    // 4 - Completamente parado.

    // Boot
    console.log("** BOT A iniciar... **");
    console.log(" ");

    // Criar conexão bot
    var client = new irc.Client( core.config[0]["global_irc"], core.config[0]["global_nick"], {
        userName: core.config[0]["global_userName"],
        realName: core.config[0]["global_realName"],
        port: core.config[0]["global_port"],
        localAddress: null,
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
        retryCount: 5,
        retryDelay: 2000,
        stripColors: true,
        channelPrefixes: "&#",
        messageSplit: 512,
        encoding: ''
    });

        // Conecta com sucesso.
        client.addListener('registered', function () {
            client.join(core.config[0]["global_channel"], function(channel, error) {});
            // Event listener para verificar se se juntou com sucesso
            client.on('join', function(channel, nick) {
            });

        });

    // ########################################################################################
    // Verifica se precisa de fazer registo
    // ########################################################################################

        // Verifica se tem de registar o nick mas só o faz quando receber a mensagem de sucesso.
        if(core.config[0]["global_isRegistered"])
        {
            client.addListener('registered', function (message) {
              client.send('PRIVMSG NickServ :IDENTIFY ', core.config[0]["global_nick"], ' ', core.config[0]["global_password"]);
            }); 
        }
  
    // Mensagens do dia e bot ativo.
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

        // Quando estiver registado, inicia a procura por mensagens
        client.addListener('registered', function (argument) {

                // function creation
                let interval = setInterval(function(){
                  if(core.fila.length > 0)
                  {
                    client.say(core.config[0]["global_channel"], core.fila[0]);
                    core.fila.shift();
                  }
                }, 1500);
        });

    // ########################################################################################
    // Obter mensagens totais
    // ########################################################################################
        
        // Escuta por Utilizadores que entrem com status para dar a mensagem de boas vindas
        client.addListener('+mode', function (channel, by, mode, argument, message) {
            
            if(core.config[0]["modoAtual"] == 0 && argument != core.config[0]["global_nick"])
            {
               core.nickJoinedChannel(client, argument); 
            }    

        });

        var canal;

        // Escuta por utilizadores que entrem
        client.addListener('join', function (channel, nick, message) {

                canal = channel // Canal do user

                // Faz um Whois ao nick que acabou de entrar
                client.whois(message.nick, function (raw) {
                
                        // Retirar todos os espaçamentos da mensagem
                        var message = raw.realname;
                        if(message)
                        {
                            message = message.replace(/\s/g, '');
                            // Verifica se está a usar VPN ou não
                            if(core.getSubstring(message, '*', '-') === "Estáem" || message == 'https://batepapo.brazink.com.br')
                            {
                              console.log('\x1b[31m%s\x1b[0m', '' + raw.nick + ' - ' + raw.realname); 
                            } else {
                              console.log('\x1b[36m%s\x1b[0m', '' + raw.nick + ' - ' + raw.realname);
                            }
                        }

                });
        });

        // Escuta por utilizadores que saiem
        client.addListener('quit', function (channel, nick, reason, message) {
            console.log('\x1b[35m%s\x1b[0m', '' + message.nick + ' saiu. ('+reason+')'); 
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

              // Modo 2, está em modo quiz
              if(core.config[0]["modoAtual"] == 2)
              {
                core.CheckRespostaQuiz(client, smsNick, fromNick);
              } else {
                
                // Verifica se identificaram o nome do bot em algum lado
                if(smsNick.indexOf(myNick) !== -1 && core.config[0]["modoAtual"] == 0)
                {
                    core.startResposta(from, client);
                }
              }

                // Faz console da mensagem
                console.log(from + '(' + to + ') : ' + message);
                // Verifica se a mensagem tem mais de 5 caracteres Caps juntos.
                core.verificaCaps(message, from, client);
            }
            
        });
    // ########################################################################################
    // Obter mensagens privadas que enviam para mim
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
                        client.say(core.config[0]["global_channel"], query);
                    }
                break; 
                case "startquiz":
                    if(core.isAdmin(fromNick))
                    {
                        // Iniciar Quiz
                        core.filaDeMensagens("#### Quiz vai iniciar dentro de segundos... ####");
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
                        core.anunciaVencedorQuiz(client);
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
                default:
                // Nada em Default
            }
        });

