    
// ****************************************************************
// IRC BOT
// ****************************************************************

    var irc = require('irc');
    var os = require('os');
   // var networkInterfaces = os.networkInterfaces();

    // Obter Config Files
    var owners = require('./db/owners');
    var quiz = require('./db/quiz');
    var frasesNickStatus = require('./db/frasesNicksStatus');
    var frases = require('./db/frases');

    // ** Variaveis Globais
    var interval_shout;
    var interval_quiz;
    var ultimoShout;
    var ultimaFraseNicksStatus;
    var ultimaResposta;
    var quizPergunta = 0;
    var quizPerguntadas = [];
    var quizCount = 1;
    var quizBlockedQuestion = 0;
    var quizVencedor = {};
    var modoAtual = 3;

    // ** Conectar **
    var global_irc = "irc.ptnet.org"; // irc.brazink.net | irc.ptnet.org
    var global_port = 6697;

    // ** Identificação **
    var global_nick = "MeMario";
    var global_password = "epicsalaportugal";
    var global_isRegistered = false;
    var global_userName = "supermario";
    var global_realName = "supermario";
    var global_channel = "#Portugal";

    var shoutTime = 60000; // 60 Segundos
    var quizTime = 15000; // 15 Segundos
    var quizLimitRespostas = 10 // Limite de respostas do quiz
               
    // Boot
    console.log("** BOT A iniciar... **");
    console.log(" ");

    // Criar conexão bot
    var client = new irc.Client( global_irc, global_nick, {
        userName: global_userName,
        realName: global_realName,
        port: global_port,
        localAddress: null,
        debug: false,
        showErrors: true,
        autoRejoin: true,
        autoConnect: true,
        channels: [global_channel],
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

    // ########################################################################################
    // Funções Gerais
    // ########################################################################################

        // Verifica se tem de registar o nick mas só o faz quando receber a mensagem de sucesso.
        if(global_isRegistered)
        {
            client.addListener('registered', function (message) {
              client.send('PRIVMSG NickServ :IDENTIFY ', global_nick, ' ', global_password);
            }); 
        }

        /* 
            Vai para todos os modos e todos os intervalos que estão ativos no momento
            ####################################################################
        */
        function unbindAll()
        {
            clearTimeout(interval_shout); 
            clearTimeout(interval_quiz);

            // Reset do Quiz
            quizPergunta = 0;
            quizPerguntadas = [];
            quizCount = 1;
            quizBlockedQuestion = 0;
            quizVencedor = {};
        }

        /* 
            Verifica se é Owner
            ####################################################################
        */
        function isAdmin(nick)
        {
          if(owners.includes(nick)) { return true; } else {  return false; }
        }

        /* 
            Faz as contas e anuncia o vencedor do quiz
            ####################################################################
        */
        function anunciaVencedorQuiz(client)
        {
              var Vencedor = 0;
              var VencedorNome;

              // Faz as contas e verifica o vencedor do quiz
              for (var k in quizVencedor) {
                // Se o numero atual for maior do que o antigo Vencedor
                if (quizVencedor[k] > Vencedor) {
                  Vencedor = quizVencedor[k];
                  VencedorNome = k;
                }
              }

              // Verifica se existem utilizadores ou não
              if(VencedorNome != undefined)
              {
                // Envia os dados com o vencedor
                client.say(global_channel, "O Vencedor é " + VencedorNome + " com " + Vencedor + " resposta(s) certa(s). Obrigado a todos pela vossa participação!");
              } else {
                // Envia os dados com o vencedor
                client.say(global_channel, "Não foram encontrados vencedores.");
              }

              modoAtual = 0;
        }
        /* 
            Inicia o Quiz
            ####################################################################
        */
        function startQuiz(client)
        {
            interval_quiz = setInterval(function () {

                if(quizCount <= quizLimitRespostas)
                {

                    var rndInt = Math.floor(Math.random() * 60) + 1;
                    while(quizPerguntadas.includes(rndInt))
                    {
                        rndInt = Math.floor(Math.random() * 60) + 1;
                    }
                            
                    quizBlockedQuestion = 0;
                    client.say(global_channel, "Quiz: "+quiz[rndInt].pergunta);
                    quizPerguntadas.push(rndInt);
                    quizPergunta = rndInt;

                } else {

                    // Anuncia o vencedor    
                    anunciaVencedorQuiz(client);

                    // Reseta tudo
                    unbindAll();
                }

                // Aumenta o count
                quizCount = quizCount+1;

            }, quizTime);

          // Altera o modo do bot para "In Quiz"
          modoAtual = 2;
        }
        /* 
            Verifica a resposta da quiz
            ####################################################################
        */
        function CheckRespostaQuiz(client, smsNick, fromNick)
        {
            // Obter a resposta atual
            var respAtual = quiz[quizPergunta].resposta;

            // Colocar a resposta e a sms em lowerCase
            smsNick = smsNick.toLowerCase();
            respAtualLower = respAtual.toLowerCase();

            // Procura se na mensagem completa da pessoa, existe a resposta
            // Desta forma consegue excluir quais quer código "invisivel" que venha na mensagem
            if (smsNick.indexOf(respAtualLower) > -1 && quizBlockedQuestion == 0) {

                // Verifica se já existe o registo dele no array
                var valorPontos = 1;
                if(quizVencedor[fromNick])
                {
                  var data = quizVencedor[fromNick];
                  valorPontos = data+1;
                } 

                quizVencedor[fromNick] = valorPontos;
                quizBlockedQuestion = 1;
                client.say(global_channel, "Resposta Certa: "+fromNick); 
            }
        }
        /* 
            Envia resposta se alguem tocar no nome do bot
            ####################################################################
        */
        function startResposta(nick, client)
        {
            setTimeout(function () {

                var rndInt = Math.floor(Math.random() * 59) + 1;
                while(rndInt == ultimaResposta)
                {
                    rndInt = Math.floor(Math.random() * 59) + 1;
                }

                var frase = frases[rndInt].frase;
                var result = frase.replace("{nick}", nick);

                client.say(global_channel, result);
                ultimaResposta = rndInt;

            }, 2000);
        }        
    // ########################################################################################
    // ########################################################################################

    // Mensagens do dia e bot ativo.
    // ########################################################################################
        client.addListener('motd', function (motd) {
            console.log(motd);
            console.log("** BOT Está ativo. **");
            console.log(" ");
        });
    // ########################################################################################
    // Obter mensagens totais
    // ########################################################################################
        client.addListener('message', function (from, to, message) {
            
            // Ignorar todas as mensagens direcionadas a mim, isso é tratado no scope abaixo.
            if(to != global_nick)
            {
              // Variaveis do PV
              var fromNick = from.toLowerCase();
              var myNick = global_nick.toLowerCase();
              var smsNick = message.toLowerCase();

              // Modo 2, está em modo quiz
              if(modoAtual == 2)
              {
                CheckRespostaQuiz(client, smsNick, fromNick);
              } else {
                
                // Verifica se identificaram o nome do bot em algum lado
                if(smsNick.indexOf(myNick) !== -1 && modoAtual != 2 && modoAtual != 3)
                {
                    startResposta(from, client);
                } else { }

              }

            console.log(from + '(' + to + ') : ' + message);

            }

        });
    // ########################################################################################
    // Obter mensagens privadas que enviam para mim
    // ########################################################################################
        client.addListener('pm', function (from, message) {

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
                    if(isAdmin(fromNick))
                    {
                      // Diz o que lhe mandaram
                      client.say(global_channel, query);
                    }
              break; 
              case "startquiz":
                    if(isAdmin(fromNick))
                    {
                      // Iniciar Quiz
                      client.say(global_channel, "Quiz vai iniciar dentro de segundos...");
                      unbindAll();
                      startQuiz(client);
                    }
              break; 
              case "stopquiz":
                  if(isAdmin(fromNick))
                  {
                    // Anuncia o vencedor e acaba com o quiz    
                    anunciaVencedorQuiz(client);
                    unbindAll(); 
                  }
              break;  
              default:
                // Nada em Default
            }
        });

    // ########################################################################################
    // Obter mensagens privadas que enviam para mim
    // ########################################################################################
    client.addListener('error', function(message) {
        console.log('error: ', message);
    });