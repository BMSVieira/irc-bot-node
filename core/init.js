// Obter Config Files
var owners = require('../db/owners');
var quiz = require('../db/quiz');
var frasesNicksStatus = require('../db/frasesNicksStatus');
var frases = require('../db/frases');
var autores = require('../db/autores');

// ** Variaveis Globais
var interval_shout;
var interval_quiz;
var interval_anuncio;
var ultimoShout;
var ultimoAnnuncio;
var ultimaFraseNicksStatus;
var ultimaResposta;
var quizPergunta = 0;
var quizPerguntadas = [];
var quizCount = 1;
var quizBlockedQuestion = 0;
var quizVencedor = {};
var fila = [];
var denuncias = [];

var shoutTime = 300000; // 80 Segundos
var anuncioTime = 60000; // 10 minutos
var quizTime = 25000; // 25 Segundos
var quizLimitRespostas = 20 // Limite de respostas do quiz
var anuncioFrase = ""; // Frase anuncio

// Config values

var config = [
{
    global_irc: "irc.ptnet.org", // irc.brazink.net | irc.ptnet.org | irc.freenode.net | irc.libera.chat | irc.ptirc.org
    global_port: 6697,
    global_nick: "EpiC",
    global_password: "asuz12345",
    global_isRegistered: false,
    global_userName: "Portugal",
    global_realName: "Portugal",
    global_channel: "#hey",
        telegram: {
            telegram_token: "7448920077:AAF2tXjg9FUPiaqgqM_Thw-sg3pZs7F8yHE",
            telegram_active: "true",
            telegram_join: "false",
            telegram_leave: "false",
            telegram_kick: "false",
            telegram_users: [
                "5854934549",
                "6993321048"
            ]
        },
        modoAtual: 0
}];  

/*
var config = [
    {
        global_irc: "irc.brazink.net", // irc.brazink.net | irc.ptnet.org | irc.freenode.net | irc.libera.chat | irc.ptirc.org
        global_port: 6697,
        global_nick: "EpiC",
        global_password: "asuz12345",
        global_isRegistered: true,
        global_userName: "Portugal",
        global_realName: "Portugal",
        global_channel: "#Portugal",
        telegram: {
            telegram_token: "7448920077:AAF2tXjg9FUPiaqgqM_Thw-sg3pZs7F8yHE",
            telegram_active: "true",
            telegram_join: "false",
            telegram_leave: "false",
            telegram_kick: "true",
            telegram_users: [
                "5854934549",
                "6993321048"
            ]
        },
        modoAtual: 0
    }
];
*/
/*
    Trata a string para ir buscar apenas uma parte dela
    ####################################################################
*/
function getSubstring(string, char1, char2) {
    return string.slice(
    string.indexOf(char1) + 1,
    string.lastIndexOf(char2),
    );
}

/*
    Retorna um valor aleatório
    ####################################################################
*/
function randomizeBetween(min, max) {
    var time = new Date().getTime();
    var randomNum = (time % (max - min + 1)) + min;
    return randomNum;
}

/* 
    Adiciona a mensagem a fila de mensagens
    ####################################################################
*/
function filaDeMensagens(mensagem)
{
    fila.push(mensagem);
}

/* 
    Vai para todos os modos e todos os intervalos que estão ativos no momento
    ####################################################################
*/
function unbindAll()
{
    clearTimeout(interval_shout); 
    clearTimeout(interval_quiz);
    clearTimeout(interval_anuncio); 

    // Reset do Quiz
    quizPergunta = 0;
    quizPerguntadas = [];
    quizCount = 1;
    quizBlockedQuestion = 0;
    quizVencedor = {};

    config[0]["modoAtual"] = 0; 
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
    Verifica se tem status
    ####################################################################
*/
function hasStatus(user, channels, client, callback) {

    // Envia o comando para fazer trigger dos nomes
    client.send('names', channels);
  
    function listener(channel, nicks) {
      let userHasValue = false;
      if(nicks.hasOwnProperty(user))
      {
        for (let username in nicks) {
            if (nicks.hasOwnProperty(username)) {
              if (username === user && nicks[username] !== '') {
                userHasValue = true;
                break;
              }
            } 
          }
          
      } else { userHasValue = true; }

      // Remove o listener
      client.removeListener('names', listener); 
  
      if (userHasValue) {
        callback(true);
      } else {
        callback(false);
      }
    }
  
    client.addListener('names', listener);
}

/* 
    Faz a denuncia
    ####################################################################
*/
function denunciar(query, fromNick, client, channel) {

    // Verifica se o user que stá a pedir, tem status
    hasStatus(fromNick, channel, client, function(result) {
        if(result){ 

                // Verifica se o user ao qual querem denunciar, tem status.
                hasStatus(query, channel, client, function(result) {

                    if(result){
                        client.say(fromNick, "A denuncia não irá ser feita, aqui estão os possiveis motivos.");
                        client.say(fromNick, " - Escreveu mal o nick e este não se encontra na sala.");
                        client.say(fromNick, " - O nick tem status e como tal, não pode ser denunciado através desta funcionalidade. Fale com um moderador.");                  
                    } else {

                            client.whois(fromNick, function (raw) {

                                var searchNick = fromNick;
                                var searchDenuncia = query;
                                var count = 0;

                                // Conta a quantidade de denuncias que tem um determinado nick
                                for (var i = 0; i < denuncias.length; i++) {
                                    if (denuncias[i].nick === searchNick && denuncias[i].denuncia === searchDenuncia) {
                                        count++;
                                    }
                                }

                                // Verifica se a mesma pessoa já denunciou o mesmo nick uma vez.
                                if(count >= 1)
                                {
                                    client.say(fromNick, "Já denunciaste este nick, só o podes fazer uma vez.");
                                } else {

                                    // Adiciona a denuncia ao array
                                    var detalhes = {nick: fromNick, denuncia: query, host: raw['host']};
                                    denuncias.push(detalhes);

                                    client.say(fromNick, "Denuncia feita com sucesso.");

                                    // Verifica a quantidade de denuncias que aquele nick tem.
                                    var countDenunciasNick = 0;
                                    for (var i = 0; i < denuncias.length; i++) {
                                        if (denuncias[i].denuncia === searchDenuncia) {
                                            countDenunciasNick++;
                                        }
                                    }   

                                    console.log(denuncias);

                                    // Se for maior ou igual a 3, da o kick.
                                    if(countDenunciasNick >= 3)
                                    {
                                        client.send('kick', channel, query, "User kickado por denuncia de vários utilizadores.");

                                        // Remove esse utilizador da lista de denuncias
                                        denuncias = denuncias.filter(function(record) {
                                            return record.denuncia !== query;
                                        });   
                                    }
                                }
                            });
                    }
                });

        } else { client.say(fromNick, "Apenas nicks com Status podem fazer denúncias."); }
        
    });
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
        filaDeMensagens("O Vencedor é " + VencedorNome + " com " + Vencedor + " resposta(s) certa(s). Obrigado a todos pela vossa participação!");
      } else {
        // Envia os dados com o vencedor
        filaDeMensagens("Não foram encontrados vencedores.");
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

            var rndInt = randomizeBetween(1,quiz.length-1);
            while(quizPerguntadas.includes(rndInt))
            {
                rndInt = randomizeBetween(1,quiz.length-1);
            }
                    
            quizBlockedQuestion = 0;
            filaDeMensagens("Quiz: "+quiz[rndInt].pergunta);
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
        filaDeMensagens("Resposta Certa: "+fromNick);
    }
}
/* 
    Envia resposta se alguem tocar no nome do bot
    ####################################################################
*/
function startResposta(nick, client)
{
    setTimeout(function () {

        var rndInt = randomizeBetween(1,frases.length-1);
        while(rndInt == ultimaResposta)
        {
            rndInt = randomizeBetween(1,frases.length-1);
        }

        var frase = frases[rndInt].frase;
        var result = frase.replace("{nick}", nick);

        filaDeMensagens(result);
        ultimaResposta = rndInt;

    }, 2000);
}  
/* 
    Envia resposta se alguem tocar no nome do bot
    ####################################################################
*/
function nickJoinedChannel(client, nick)
{
    setTimeout(function () {

            var rndInt = randomizeBetween(1,frasesNicksStatus.length-1);
            while(rndInt == ultimaFraseNicksStatus)
            {
                rndInt = randomizeBetween(1,frasesNicksStatus.length-1);
            }

            var frase = frasesNicksStatus[rndInt].frase;
            var result = frase.replace("{nick}", nick);

            filaDeMensagens(result);
            ultimaFraseNicksStatus = rndInt;

    }, 2000);
}  
/* 
    Inicia o Shout
    ####################################################################
*/
function startShout(client, axios)
{
    interval_shout = setInterval(function () {

        var randomAutor = randomizeBetween(0,autores.length-1);
        var randomFrase = randomizeBetween(0,9);
        var autor = autores[randomAutor].autor;

        const url = "https://pensador-api.vercel.app/?term=" + autor + "&max=10";

        axios.get(url)
          .then(response => {
            try {
              const json = response.data;
              filaDeMensagens(json.frases[randomFrase].texto);
            } catch (error) {
              console.error(error.message);
            }
          })
          .catch(error => {
            console.error(error.message);
          });

    }, shoutTime);

    // Altera o modo do bot para "Shout"
    config[0]["modoAtual"] = 0; 
} 
/* 
    Inicia o Anuncios
    ####################################################################
*/
function startAnuncios(client, query)
{

    // Verifica se a mensagem trouxe frase.
    if(query)
    {
        anuncioFrase = query;
    }

    var c=0;
    interval_anuncio = setInterval(function () {
     
            if(c & 1){var even = "**";}else { var even = "*"; }
            filaDeMensagens(even+" "+anuncioFrase+" "+even);
            c++;
    
    }, anuncioTime);

    // Altera o modo do bot para "Shout"
    config[0]["modoAtual"] = 2; 
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
    clearTimeout(interval_anuncio); 

    switch(cmd) {
        case "setQuizLimit":
            quizLimitRespostas = query;
            client.say(from, "Limite de perguntas modificado para: "+ query);
        break; 
        case "setShoutTime":
            shoutTime = query;
            client.say(from, "Tempo de Shout modificado para: "+ query);
        break; 
    default:
        // Nada em Default
    }
} 

/* 
    Função que muda o tempo das mensagens
    ####################################################################
*/
function telegramChange(type, query)
{
    switch(type) {
        case "telegram_join":
            config[0]['telegram']['telegram_join'] = query;
        break; 
        case "telegram_leave":
            config[0]['telegram']['telegram_leave'] = query;
        break; 
        case "telegram_kick":
            config[0]['telegram']['telegram_kick'] = query;
        break; 
    default:
        // Nada em Default
    }
} 

// Faz o export dos modulos
module.exports = {telegramChange, startAnuncios, denunciar, hasStatus, randomizeBetween, getSubstring, filaDeMensagens, fila, nickJoinedChannel, changeTime, config, unbindAll, isAdmin, anunciaVencedorQuiz, startQuiz, CheckRespostaQuiz, startResposta, startShout };
