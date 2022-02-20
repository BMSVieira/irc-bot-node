var irc = require("irc-connect");
var channels = require('irc-channels');
// var XMLHttpRequest = require("xmlhttprequest").XMLHttpRequest;

/* 
    Minhas credenciais
*/
var myNick = "Tartaruga";
var myPassword = "";

/* 
    Irc Options
*/
var ircOptions = {
    port: 6697,
    secure: true,
    nick: 'Tartaruga',
    realname: 'Brazink Bot',
    ident: 'ircbotbrazink'
}

/*
 Global
*/

var interval_shout;
var interval_quiz;
var ultimoShout;
var ultimaResposta;
var quizPergunta = 0;
var quizPerguntadas = [];
var quizCount = 0;
var quizBlockedQuestion = 0;

var shoutTime = 60000; // 60 Segundos
var quizTime = 45000; // 20 Segundos

/* 
    Utilizadores Permitidos
*/
var owner = ['AsuZ', '_Clandestina_', 'Monte'];

/*
    Estado em que está, depende se faz o jogo, shout, parado.
    0 - Parado
    1 - Shout
    2 - Quiz
*/
var modoAtual = 0;

/* 
    Shout - Vai falar estas frases de tempos em tempos
*/
var shout = [
    {
      frase: "Vai rindo enquanto tens dentes. Porque depois de meter a mão na tua cara, vão sumir todos de uma vez!"
    },
    {
      frase: "Todos falam, mas nenhum diz nada!"
    },
    {
      frase: "O único exercício físico que eu faço é correr atrás de dinheiro."
    },
    {
      frase: "Tudo que vai, volta. Menos as canetas que eu emprestei na sala de aula…"
    },
    {
      frase: "Os loucos fazem castelos no ar, os paranóicos moram dentro deles e os psicólogos cobram o aluguer"
    },
    {
      frase: "Tem coisas nesta vida que eu apenas visualizo e não respondo."
    }
];

/* 
    Respostas - Sempre que falarem no nome do bot, vai responder aleatoriamente
*/
var frases = [
    {
      frase: "{nick} também gosto muito de ti..."
    },
    {
      frase: "{nick} o que tu queres... sei eu!"
    },
    {
      frase: "Tens a certeza que queres jogar esse jogo comigo {nick}? Na escola onde tu andas, já fui professora."
    },
    {
      frase: "{nick} adoça mais a tua vida, a tua rotina já é muito amarga..."
    },
    {
      frase: "Tanta coisa para fazeres aqui e preferes continuar a chatear-me {nick}?"
    },
    {
      frase: "Ohhhh {nick} .. não!"
    },
    {
      frase: "{nick} podes por favor ir ver se está a chover? obrigado!"
    }
];

/* 
    Quiz - Vai falar estas frases de tempos em tempos
*/
var quiz = [
    {
      pergunta: "Quantos planetas Terra cabem dentro do Sol?",
      resposta: "Um milhão"
    },
    {
      pergunta: "Em que lugar vivem mais cangurus do que pessoas?",
      resposta: "Austrália"
    },
    {
      pergunta: "Quantos pares de olhos a maior parte das aranhas têm?",
      resposta: "4"
    },
    {
      pergunta: "Que escala mede intensidade sísmica de acordo com os danos provocados?",
      resposta: "Escala Mercalli"
    },
    {
      pergunta: "Qual a ciência que estuda a atmosfera da Terra e a climatologia?",
      resposta: "Meteorologia"
    },
    {
      pergunta: "Quantos tentáculos tem um polvo? ",
      resposta: "8"
    },
    {
      pergunta: "De que são constituídos os diamantes?",
      resposta: "Carbono"
    },
    {
      pergunta: "Quantas cores tem o arco-íris?",
      resposta: "7"
    },
    {
      pergunta: "Qual é a ave que não voa?",
      resposta: "Pinguim"
    },
    {
      pergunta: "Qual a unidade que mede a intensidade do som?",
      resposta: "Decibel"
    },
    {
      pergunta: "Que capital asiática tem uma Cidade Imperial e uma Cidade Proibida?",
      resposta: "Pequim"
    },
    {
      pergunta: "Qual era o deus romano do amor?",
      resposta: "Cupido"
    },
    {
      pergunta: "Que personagem da mitologia grega era metade homem metade cavalo?",
      resposta: "Centauro"
    },
    {
      pergunta: "Qual a altura do Monte Everest em metros? ",
      resposta: "8848"
    },
    {
      pergunta: "De quem é a famosa frase “Penso, logo existo”?",
      resposta: "René Descartes"
    },
    {
      pergunta: "Qual o livro mais vendido no mundo a seguir à Bíblia?",
      resposta: "Dom Quixote"
    },
    {
      pergunta: "Quantas casas decimais tem o número pi?",
      resposta: "Infinitas"
    },
    {
      pergunta: "Qual o país que tem maior expectativa de vida?",
      resposta: "Japão"
    },
    {
      pergunta: "O que a palavra legend significa em português?",
      resposta: "Lenda"
    },
    {
      pergunta: "Quem pintou 'Guernica'?",
      resposta: "Pablo Picasso"
    }
];


/* 
    Muda o modo atual do bot
*/
function mudarModo(value)
{
    modoAtual = value;
}

/* 
    Vai para todos os modos e todos os intervalos que estão ativos no momento
*/
function unbindAll()
{
    clearTimeout(interval_shout); 
    clearTimeout(interval_quiz);

    // muda para o modo default
    mudarModo(0); 

    // Reset do Quiz
    quizPergunta = 0;
    quizPerguntadas = [];
    quizCount = 0;
    quizBlockedQuestion = 0;
}

/* 
    Função que muda o tempo das mensagens
*/
function changeTime(_this, channel, cmd, query)
{
    // Limpa o interval atual
    clearTimeout(interval_shout);

    switch(cmd) {
        case "setShoutTime":
            channel.msg("<setShoutTime> A reiniciar, tempo de resposta modificado..."); 
            shoutTime = query;
            startShout(_this, channel)
        break;  
        case "setQuizTime":
            channel.msg("<setShoutTime> A reiniciar, tempo de resposta modificado..."); 
            shoutTime = query;
            startShout(_this, channel)
        break;     
      default:
        // Nada em Default
    }
}

/* 
    Vai buscar a temperatura  
*/
function startTemperatura(_this, channel, smsCmd, query, fromNick)
{
    /*
        var xhr = new XMLHttpRequest();
        xhr.open("GET", 'http://api.weatherapi.com/v1/current.json?key=f5afd9f9483348d0826161751221902&q='+query+'&aqi=no', true);
        xhr.onreadystatechange = function() {
            if(xhr.readyState == 4 && xhr.status == 200) {
                var data = JSON.parse(xhr.responseText);
                console.log(data);
                // channel.msg(fromNick+" neste momento estão "+data.current.temp_c+"ºC em "+query);
            } else {
                // channel.msg("Desculpa "+fromNick+" mas não consegui encontrar o que me pediste.");

            }
        }
        xhr.send();
    */
}

/* 
    Inicia o Shout
*/
function startShout(_this, channel)
{
    interval_shout = setInterval(function () {

            var rndInt = Math.floor(Math.random() * 5) + 1;
            while(rndInt == ultimoShout)
            {
                rndInt = Math.floor(Math.random() * 5) + 1;
            }

            channel.msg(shout[rndInt].frase);
            ultimoShout = rndInt;
        
    }, shoutTime);

    // Atualizar Estado
    mudarModo(1);
}

/* 
    Inicia o Quiz
*/
function startQuiz(_this, channel)
{
    interval_quiz = setInterval(function () {

        if(quizCount <= 5)
        {

            var rndInt = Math.floor(Math.random() * 19) + 1;
            while(quizPerguntadas.includes(rndInt))
            {
                rndInt = Math.floor(Math.random() * 19) + 1;
            }
                    
            quizBlockedQuestion = 0;
            channel.msg("Quiz: "+quiz[rndInt].pergunta);
            quizPerguntadas.push(rndInt);
            quizPergunta = rndInt;

        } else {
            unbindAll();
            channel.msg("Quiz terminou, obrigado a todos pela vossa participação.");
        }

        // Aumenta o count
        quizCount = quizCount+1;


    }, quizTime);

    // Atualizar Estado
    mudarModo(2);
}

/* 
    Inicia o Shout
*/
function CheckRespostaQuiz(_this, channel, smsNick, fromNick)
{
    // Obter a resposta atual
    var respAtual = quiz[quizPergunta].resposta;

    // Colocar a resposta e a sms em lowerCase
    smsNick = smsNick.toLowerCase();
    respAtualLower = respAtual.toLowerCase();

    if(respAtualLower == smsNick && quizBlockedQuestion == 0)
    {
        quizBlockedQuestion = 1;
        channel.msg("Resposta Certa: "+fromNick); 
    }
}


/* 
    Envia resposta se alguem tocar no nome do bot
*/
function startResposta(nick, channel)
{
    setTimeout(function () {

        var rndInt = Math.floor(Math.random() * 6) + 1;
        while(rndInt == ultimaResposta)
        {
            rndInt = Math.floor(Math.random() * 6) + 1;
        }

        var frase = frases[rndInt].frase;
        var result = frase.replace("{nick}", nick);

        channel.msg(result);
        ultimaResposta = rndInt;

    }, 2000);
}

/*
    Guarda a variavel do scope Join Channel #Portugal
    Para conseguir mandar mensagens por todo o canal
*/
var _this = 0;

var freenode = irc.connect('irc.brazink.net', ircOptions)
    //include some plugins
    .use(irc.pong, irc.names, irc.motd, channels)

    // Quando o servidor confirma a password
    .on('identified', function (nick) {
        this.send('JOIN #node.js');
    })
    // Envado quando o nick muda
    .on('nick', function (nick) {
        console.log('Your nick is now:', nick);
    })
    // Quando existe algum aviso
    .on('NOTICE', function (event) {
        console.log('NOTICE:', event.params[1]);
    })
    // Quando alguem sai da sala
    .on('JOIN', function (event) {
        console.log(event.nick, 'joined');
    })
    // Obter todos os nomes
    .on('names', function (cname, names) {
        console.log(cname, names);
    })
    // Usar o MOTD plugin
    .on('motd', function (event) {
        console.log(this.motd);
        console.log(this.support);
    });

    freenode.on('welcome', function (msg) {

        // Enviado quando se muda o nick, para um registado
        // this.nick('NickDele', 'password', function(err){
            //console.log('There was a problem setting your NICK:', err);
        //}); 

        // Save Scope do freenode
        _this = this;

        // Join Channel
        this.join('#Portugal', function(channel){
         
            // Recebe comandos
            _this.on('PRIVMSG', function(event){
                
                var params = event.params;

                // Variaveis do PV
                var fromNick = event.nick;
                var toNick = params[0];
                var smsNick = params[1];

                // Tratar a string para ir buscar o comando
                var smsCmd = smsNick.substring(smsNick.indexOf("<") + 1, smsNick.lastIndexOf(">"));
                // Tratar a string para ir buscar o resto do comando depois de >
                var query = smsNick.substring(smsNick.indexOf('>') + 1);

                // Verifica se o nome veio de um dos permitidos e se é para o bot
                // Verifica se é uma ordem ou não.
                if(owner.includes(fromNick) && toNick == myNick) // Verifica se vai ao PV
                {

                    switch(smsCmd) {
                      case "startshout":
                            channel.msg("<startshout> A iniciar..."); 
                            unbindAll();
                            startShout(_this, channel);
                        break;
                      case "stopshout":
                            channel.msg("<stopshout> Parado.");
                            unbindAll(); 
                        break;
                       case "startquiz":
                            channel.msg("<startquiz> Quiz vai iniciar dentro de 45 segundos..."); 
                            unbindAll();
                            startQuiz(_this, channel);
                       break;
                       case "stopquiz":
                            channel.msg("<stopquiz> Quiz terminou. Obrigado pela vossa participação.");
                            unbindAll(); 
                        break;  
                        case "say":
                            channel.msg(query);
                        break;  
                        case "setShoutTime":
                            changeTime(_this, channel, "setShoutTime", query);
                            //channel.msg(query);
                        break;       
                      default:
                        // Nada em Default
                    }
                    
                } else {

                    // Manda as mensagens todas para lowercase e os nicks
                    var string = smsNick.toLowerCase();
                    var substring = myNick.toLowerCase();

                    if(modoAtual == 2)
                    {
                        CheckRespostaQuiz(_this, channel, smsNick, fromNick);
                    
                    } else {

                        // Verifica se identificaram o nome do bot em algum lado
                        if(string.indexOf(substring) !== -1)
                        {
                            startResposta(fromNick, channel);

                        } else {

                            switch(smsCmd) {
                                case "temperatura":
                                    // startTemperatura(_this, channel, smsCmd, query, fromNick);
                                break;
                                case "horoscopo":
                                    // startTemperatura(_this, channel, smsCmd, query, fromNick);
                                break;     
                                case "sendto":
                                    // startTemperatura(_this, channel, smsCmd, query, fromNick);
                                break;                       
                              default:
                                // Nada em Default
                            }

                        }

                    }

                }

                console.log('message from: '+event.nick, 'to: '+params[0], params[1]);

            });
        });
    });

