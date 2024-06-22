
// Config Variables
var protected = require('../db/protected');
var forbiddenWords = require('../db/palavrasProibidas');
var nicksProibidos = require('../db/nicksProibidos');
var telegram = require('../core/telegram');
var avisosCaps = [];

/*
    Remove todos os caracteres especiais do nick, retorna em lowercase e limpo
    ##############################################################################
*/
function removeSpecialCharacters(str) {
  
    var regex = /[!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?\s]+/g;
    var result = str.replace(regex, '');
    result = result.toLowerCase();
  
    return result;
}

/*
    Verifica por numeros no nick
    ##############################################################################
*/
function verificaNumerosNick(nick, client, channel) {

    const digitsOnly = nick.replace(/\D/g, '');
    
    // 2 e 3 ou maior do 4 numeros.
    if ((digitsOnly.length >= 2 && digitsOnly.length <= 3) || digitsOnly.length > 4) {
        client.send('kick', channel, nick, "Nick inválido. Caracteres numéricos indevidos.");
        return true;
    } else {
      return false; 
    }
  }

/*
    Verifica por palavras proibidas no meio dos nicks
    ##############################################################################
*/
function checkMeioNome(str) {
    var encontrouMeio = [];
    str = removeSpecialCharacters(str);
    for (let i = 0; i < nicksProibidos.length; i++) {
        if (str.includes(nicksProibidos[i])) {
            encontrouMeio.push(str);
        }
    }
    // Se encontrou algum match
    if(encontrouMeio.length) { return true } else { return false }
}

/*
    Verifica por palavras proibidas
    ##############################################################################
*/
function checkForbiddenWords(obj, forbiddenWords) {
    var encontrou = [];
    obj.forEach(element => {
  
      for (let i = 0; i < forbiddenWords.length; i++) {
        if (forbiddenWords[i].toLowerCase() === element.toLowerCase()) {
          encontrou.push(element.toLowerCase());
        }
      }
    });
    // Se encontrou algum match
    if(encontrou.length) { return true } else { return false }
  }

/*
    Separa o nick da pessoa em palavras
    ##############################################################################
*/
function separateString(str) {
  let separated = str.replace(/([a-z])([A-Z0-9])/g, '$1 $2');
  separated = separated.replace(/([0-9])([a-zA-Z])/g, '$1 $2');
  return separated.replace(/[^a-zA-Z0-9]/g, ' ');
}

/*
    Dando um nick, verifica se o nick contém palavras proibidas
    ##############################################################################
*/
function checkKick(nick, client, channel, bot = null, telegram_configs)
{
    // ==========================================================================

    // Separa o nick da pessoa por Numeros, maiusculas ou caracteres especiais
    const separated = separateString(nick);
    // Coloca tudo num objecto
    const nameParts = separated.split(" ");
    // Verifica no objecto, palavra a palavra
    const containsForbiddenWord = checkForbiddenWords(nameParts, forbiddenWords);

    // ==========================================================================

    // Verifica palavras proibidas nomeio do nick
    const constainsMeioNick = checkMeioNome(nick);

    // ==========================================================================
    
    // Se retornar true um ou outro, kicka.
    if(containsForbiddenWord || constainsMeioNick)
    {
        var reason = "Nick com conteúdo sexual ou palavra não permitida. Mude de nick ou de sala!";
        client.send('kick', channel, nick, reason);

        if(telegram_configs.telegram_kick == "true")
            telegram.notify(bot, nick, telegram_configs, "kick", reason);
    }
}

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

function verificaCaps(str, from, client, channel) {

    if(!protected.includes(from))
    {
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
                    client.send('kick', channel, from, "Kickado por uso excessivo de Capslock");
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
    } else { console.log("Nick Protegido."); }
}

/*
    Verifica se o nick da pessoa que se juntou, é menor do que 3 letras
    ###########################################################################
*/
function verificaNick(from, client, channel, bot = null, telegram_configs) {

    var cumprimentoNick = from.length;
    if(cumprimentoNick < 3)
    {
        var reason = "Nick demasiado curto, escolhe outro mais longo por favor.";
        client.send('kick', channel, from, reason);

        if(telegram_configs.telegram_kick == "true")
            telegram.notify(bot, from, telegram_configs, "kick", reason);
    }
}

/*
    Verifica os clones
    ###########################################################################
*/
function checkClones(data, fromNick, client, cloneTime) {

    // Group by host
    const groupedByHost = data.reduce((acc, item) => {
        if (!acc[item.host]) {
        acc[item.host] = [];
        }
        acc[item.host].push(item);
        return acc;
    }, {});
    
    // Filter out hosts with only one user
    const filteredHosts = Object.entries(groupedByHost)
        .filter(([host, users]) => users.length > 1)
        .reduce((acc, [host, users]) => {
        acc[host] = users;
        return acc;
        }, {});
    
    // Check if there are any filtered hosts
    if (Object.keys(filteredHosts).length === 0) {
        client.say(fromNick, "Analisados "+data.length+" users. Não foram encontrados clones.");
    } else {
        // Print the nicks
        client.say(fromNick, "Analisados "+data.length+" users, clones encontrados:");
        for (const host in filteredHosts) {
            const nicks = filteredHosts[host].map(user => user.nick).join(', ');
            client.say(fromNick, nicks);
        }
    }
}

// Faz o export dos modulos
module.exports = {checkClones, verificaNumerosNick, checkMeioNome, verificaNick, verificaCaps, checkKick};
