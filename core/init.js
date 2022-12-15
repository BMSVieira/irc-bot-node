// Obter Config Files
var owners = require('../db/owners');
var quiz = require('../db/quiz');
var frasesNickStatus = require('../db/frasesNicksStatus');
var frases = require('../db/frases');
var shout = require('../db/shout');

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

var shoutTime = 60000; // 60 Segundos
var quizTime = 15000; // 15 Segundos
var quizLimitRespostas = 10 // Limite de respostas do quiz

// Config values
var config = [
{
    global_irc: "irc.brazink.net", // irc.brazink.net | irc.ptnet.org | irc.freenode.net | irc.libera.chat | irc.ptirc.org
    global_port: 6697,
    global_nick: "EpiC",
    global_password: "epicsalaportugal",
    global_isRegistered: true,
    global_userName: "supermario",
    global_realName: "supermario",
    global_channel: "#Portugal",
    modoAtual: 0
}];      


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
        client.say(config[0]["global_channel"], "O Vencedor é " + VencedorNome + " com " + Vencedor + " resposta(s) certa(s). Obrigado a todos pela vossa participação!");
      } else {
        // Envia os dados com o vencedor
        client.say(config[0]["global_channel"], "Não foram encontrados vencedores.");
      }

      config[0]["modoAtual"] = 0;
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
            client.say(config[0]["global_channel"], "Quiz: "+quiz[rndInt].pergunta);
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
  config[0]["modoAtual"] = 2;
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
        client.say(config[0]["global_channel"], "Resposta Certa: "+fromNick); 
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

        client.say(config[0]["global_channel"], result);
        ultimaResposta = rndInt;

    }, 2000);
}  

/* 
    Inicia o Shout
    ####################################################################
*/
function startShout(client)
{
    interval_shout = setInterval(function () {

            var rndInt = Math.floor(Math.random() * 5) + 1;
            while(rndInt == ultimoShout)
            {
                rndInt = Math.floor(Math.random() * 5) + 1;
            }

            client.say(config[0]["global_channel"], shout[rndInt].frase);
            ultimoShout = rndInt;
        
    }, shoutTime);

    // Altera o modo do bot para "In Shout"
    config[0]["modoAtual"] = 3; 
} 
/* 
    Função que muda o tempo das mensagens
    ####################################################################
*/
function changeTime(from, client, cmd, query)
{
    // Limpa o interval atual
    clearTimeout(interval_shout); 
    clearTimeout(interval_quiz);
    
    switch(cmd) {
        case "setQuizLimit":
            quizLimitRespostas = query;
            client.say(from, "Limite de perguntas modificado para: "+ query);
        break; 
      default:
        // Nada em Default
    }
} 


module.exports = { changeTime, config, unbindAll, isAdmin, anunciaVencedorQuiz, startQuiz, CheckRespostaQuiz, startResposta, startShout };