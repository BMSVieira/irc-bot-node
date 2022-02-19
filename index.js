var irc = require("irc-connect");
var channels = require('irc-channels');

/* 
    Minhas credenciais
*/
var myNick = "Discreto2";
var myPassword = "";

/* 
    Irc Options
*/
var ircOptions = {
    port: 6697,
    secure: true,
    nick: 'Discreto2',
    realname: 'Werner Brandes',
    ident: 'wbrandes'
}

/*
 Global
*/

var interval_shout;


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
      frase: "Tens a certeza que queres jogar esse jogo comigo {nick}? Na escola onde tu andas, já fui professor."
    },
    {
      frase: "{nick} adoça mais a tua vida, a tua rotina já é muito amarga..."
    },
    {
      frase: "Tanta coisa para fazeres aqui e preferes continuar a chatear-me {nick}?"
    },
    {
      frase: "Ohhhh {nick}!! .. não!"
    }
];

/* 
    Quiz - Vai falar estas frases de tempos em tempos
*/
var quiz = [
    {
      Pergunta: "Quantas cores tem o arco-iris?",
      Resposta: "7"

    },
    {
      frase: "Filme com maior Oscares ganhos numa só noite?",
      Resposta: "O Senhor dos Anéis"
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
}

/* 
    Inicia o Shout
*/
function startShout(_this, channel)
{
    interval_shout = setInterval(function () {

        var rndInt = Math.floor(Math.random() * 5) + 1;
        channel.msg(shout[rndInt].frase);

    }, 50000);
}

/* 
    Envia resposta se alguem tocar no nome do bot
*/
function startResposta(nick, channel)
{
    setTimeout(function () {

        var rndInt = Math.floor(Math.random() * 5) + 1;
        var frase = frases[rndInt].frase;
        var result = frase.replace("{nick}", nick);

        channel.msg(result);

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

                // Verifica se o nome veio de um dos permitidos e se é para o bot
                // Verifica se é uma ordem ou não.
                if(owner.includes(fromNick) && toNick == myNick)
                {

                    switch(smsNick) {
                      case "<botcmd> startshout":
                            channel.msg("<startshout> A iniciar..."); 
                            unbindAll();
                            startShout(_this, channel);
                        break;
                      case "<botcmd> stopshout":
                            channel.msg("<stopshout> Parado.");
                            unbindAll(); 
                        break;
                       case "<botcmd> startquiz":
                            channel.msg("<startquiz> A iniciar dentro de segundos..."); 
                        break;
                       case "<botcmd> stopquiz":
                            channel.msg("<stopquiz> Parado.");
                        break;    
                      default:
                        // Nada em Default
                    }
                    
                } else {

                    // Comportamento normal
                    var string = smsNick;
                    var substring = myNick;

                    if(string.indexOf(substring) !== -1)
                    {
                        startResposta(fromNick, channel);
                    } 

                }

                console.log('message from: '+event.nick, 'to: '+params[0], params[1]);

            });
        });
    });





