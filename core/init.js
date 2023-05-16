// Obter Config Files
var owners = require('../db/owners');
var quiz = require('../db/quiz');
var frasesNicksStatus = require('../db/frasesNicksStatus');
var frases = require('../db/frases');
var autores = require('../db/autores');

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
var fila = [];
var avisosCaps = [];

var shoutTime = 80000; // 60 Segundos
var quizTime = 25000; // 15 Segundos
var quizLimitRespostas = 10 // Limite de respostas do quiz

// Config values
var config = [
{
    global_irc: "irc.brazink.net", // irc.brazink.net | irc.ptnet.org | irc.freenode.net | irc.libera.chat | irc.ptirc.org
    global_port: 6697,
    global_nick: "EpiC",
    global_password: "brazink007",
    global_isRegistered: true,
    global_userName: "EpiC Portugal",
    global_realName: "EpiC Portugal",
    global_channel: "#Portugal",
    modoAtual: 0
}];     

/*
    Faz um loop por todas as letras de cada mensagem e verifica se está em CAPS
    ###########################################################################
*/
// Acrescenta o nome no array
function contarNotificacoes(nomes, nomeParaContar) {
    let contador = 0;
    for (let i = 0; i < nomes.length; i++) { const nome = nomes[i]; if (nome === nomeParaContar) { contador++; } }
    return contador;
}

// Remove o nome do array
function removerNome(nomeParaRemover) {
    return avisosCaps.filter(nome => nome !== nomeParaRemover);
}

function verificaCaps(str, from, client) {

    let uppercaseCount = 0;
    for (let i = 0; i < str.length; i++) {
        // Verifica se o caracter atual é uma letra
        if (/^[A-Za-zÀ-ÖØ-öø-ÿ]$/.test(str[i])) {

        // Se for uppercase, aumenta o count
        if (str[i] === str[i].toUpperCase()) {
            uppercaseCount++;
        } else {
            // Se o caracter for lowercase reseta o count
            uppercaseCount = 0;
        }
        // Se execer os 5, retorna true (este valor pode futuramente ser uma variagem global)
        if (uppercaseCount > 5) {

            if(contarNotificacoes(avisosCaps, from) > 2)
            {
                client.send('kick', config[0]["global_channel"], from, "Kickado por uso excessivo de Capslock");
                avisosCaps = removerNome(from);
            } else {
                client.say(from, "[Mensagem Automática] Cuidado com o uso excessivo de Capslock.");
                avisosCaps.push(from);
            }
            return true;
        }
        } else {
        // Se o caracter atual não for uma letra, reseta o count
        uppercaseCount = 0;
        }
    }
    return false;
}

/*
    Verifica se o nick da pessoa que se juntou, é menor do que 3 letras
    ###########################################################################
*/
function verificaNick(from, client) {

    var cumprimentoNick = from.length;
    if(cumprimentoNick < 3)
    {
        client.send('kick', config[0]["global_channel"], from, "Nick demasiado curto, escolhe outro mais longo por favor.");
    }
}

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
function startShout(client, https)
{
    interval_shout = setInterval(function () {

        var randomAutor = randomizeBetween(0,autores.length-1);
        var randomFrase = randomizeBetween(0,9);
        var autor = autores[randomAutor].autor;

            let url = "https://pensador-api.vercel.app/?term="+autor+"&max=10";
            https.get(url,(res) => {
                let body = "";
            
                res.on("data", (chunk) => {
                    body += chunk;
                });
            
                res.on("end", () => {
                    try {

                        let json = JSON.parse(body);
                        filaDeMensagens(json['frases'][randomFrase]['texto']);

                    } catch (error) {
                        console.error(error.message);
                    };
                });
            
            }).on("error", (error) => {
                console.error(error.message);
            });

    }, shoutTime);

    // Altera o modo do bot para "Shout"
    config[0]["modoAtual"] = 0; 
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
        case "setShoutTime":
            shoutTime = query;
            client.say(from, "Tempo de Shout modificado para: "+ query);
        break; 
    default:
        // Nada em Default
    }
} 

// Faz o export dos modulos
module.exports = { verificaNick, verificaCaps, randomizeBetween, getSubstring, filaDeMensagens, fila, nickJoinedChannel, changeTime, config, unbindAll, isAdmin, anunciaVencedorQuiz, startQuiz, CheckRespostaQuiz, startResposta, startShout };
