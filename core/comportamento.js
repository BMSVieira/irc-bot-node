
// Config Variables
const fs = require('fs');
var mysql = require('mysql');
var protected = require('../db/protected');
var db = require('../core/database');

var avisosCaps = [];
var forbiddenWords = [];
var nicksProibidos = [];

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
                    removeWhoisData(nick, client);
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
    } else { }
}

/*
    Verifica se o nick da pessoa que se juntou, é menor do que 3 letras
    ###########################################################################
*/
function verificaNick(from, client, channel, bot = null, telegram_configs) {
    var cumprimentoNick = from.length;
    var reason;

    // Verifica se o nick é menor do que 3
    if (cumprimentoNick < 3) {
        reason = "Nick demasiado curto, escolhe outro mais longo por favor.";
        client.send('kick', channel, from, reason);
        removeWhoisData(from, client);

        return; // Deixa a função ao fim de kickar
    }

    // Verifica se é composto pela mesma letra
    var sameLetterPattern = /^([a-zA-Z])\1*$/;
    if (sameLetterPattern.test(from)) {
        reason = "Nick não pode ser composto pela mesma letra repetida.";
        client.send('kick', channel, from, reason);
        removeWhoisData(from, client);
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

/*
    Adiciona WHOIS ao log de clones
    ###########################################################################
*/

function checkCloneSala(nick, host, realname, server, servinfo, channel, client) {

    const con = mysql.createConnection({ 
        host: db.dbconfig[0]['host'],
        user: db.dbconfig[0]['user'],
        password: db.dbconfig[0]['password'],
        database: db.dbconfig[0]['database']
    });
    
    const sqlCheckclone = `SELECT * FROM clones WHERE host = ? AND nick NOT IN ('AsuZ', 'EpiC', 'Rafael', 'Julinha', ?)`;
    
    con.connect(function(err) {
        if (err) {
            console.error('Erro ao conectar a BD:', err);
            return;
        }
    
        con.query(sqlCheckclone, [host, nick], function(err, result) {
            if (err) {
                console.error('Erro ao executar query:', err);
                con.end();
                return;
            }
    
            if (result.length > 0) {
                console.log(true);
                result.forEach(row => {
                    client.send('kick', channel, row.nick, "Kickado porque o IP está a ser usado em mais do que uma conexão.");
                    console.log(row.nick+" - "+host);
                });
            } else { }
    
            con.end();
        });
    });
}

/*
    Adiciona WHOIS ao log de clones
    ###########################################################################
*/

function addWhoisData(nick, host, realname, server, servinfo) {

    const con = mysql.createConnection({ 
        host: db.dbconfig[0]['host'],
        user: db.dbconfig[0]['user'],
        password: db.dbconfig[0]['password'],
        database: db.dbconfig[0]['database']
    });

    const sqlDeleteQuery = "DELETE FROM clones WHERE nick = ?";
    const sqlInsertQuery = "INSERT INTO clones (nick, host, realname, server, servinfo, time) VALUES (?, ?, ?, ?, ?, NOW())";

    con.connect(function(err) {
        if (err) {
            console.error('Erro ao conectar a BD:', err);
            return;
        }

        con.query(sqlDeleteQuery, [nick], function(err, result) {
            if (err) {
                console.error('Erro ao executar query de eliminar:', err);
                con.end();
                return;
            }

            con.query(sqlInsertQuery, [nick, host, realname, server, servinfo], function(err, result) {
                if (err) {
                    console.error('Erro ao executar query de inserir:', err);
                } else {
                    console.log('\x1b[36m%s\x1b[0m', 'WHOIS: ' + nick + ' adicionado.');
                }
                con.end();
            });
        });
    });
}

/*
    Remove WHOIS do log de clones
    ###########################################################################
*/
function removeWhoisData(nick, client = '', fpath = './data/clones.json') {
    const con = mysql.createConnection({ 
        host: db.dbconfig[0]['host'],
        user: db.dbconfig[0]['user'],
        password: db.dbconfig[0]['password'],
        database: db.dbconfig[0]['database']
    });
    
    const sqlSelectQuery = "SELECT COUNT(*) AS count FROM clones WHERE nick = ?";
    const sqlDeleteQuery = "DELETE FROM clones WHERE nick = ?";
    
    con.connect(function(err) {
        if (err) {
            console.error('Erro ao conectar a BD:', err);
            return;
        }
        
        con.query(sqlSelectQuery, [nick], function (err, result, fields) {
            if (err) {
                console.error('Erro ao executar query de select:', err);
                con.end();
                return;
            }
            
            // Check if the nick exists
            if (result[0].count > 0) {
                con.query(sqlDeleteQuery, [nick], function (err, result) {
                    if (err) {
                        console.error('Erro ao executar query de eliminar:', err);
                    } else {
                        console.log('\x1b[36m%s\x1b[0m', 'WHOIS: ' + nick + ' removido.');
                    }
                    con.end();
                });
            } else {
                console.log('\x1b[36m%s\x1b[0m', 'WHOIS: ' + nick + ' not found.');
                con.end();
            }
        });
    });
}

/*
    Sincroniza meias palavras
    ###########################################################################
*/
function syncDbMeiasPalavras(client, callback) {
    const con = mysql.createConnection({ 
        host: db.dbconfig[0]['host'],
        user: db.dbconfig[0]['user'],
        password: db.dbconfig[0]['password'],
        database: db.dbconfig[0]['database']
    });

    const sqlSelectQueryMeiasPalavras = "SELECT * FROM bot_meiaspalavras WHERE isactive = 1";

    con.connect(function(err) {
        if (err) {
            console.error('Erro ao conectar a BD:', err);
            return callback(err);
        }

        con.query(sqlSelectQueryMeiasPalavras, function (err, resultMeiasPalavras, fields) {
            if (err) {
                console.error('Erro ao executar query de select em bot_meiaspalavras:', err);
                con.end();
                return callback(err);
            }

            nicksProibidos = [];
            for (const row of resultMeiasPalavras) {
                nicksProibidos.push(row.palavra);
            }
            
            console.log('\x1b[33m%s\x1b[0m', 'Meias Palavras - Sincronizado.');
            con.end();
            callback(null, nicksProibidos);
        });
    });
}

/*
    Sincroniza palavras proibidas
    ###########################################################################
*/
function syncDbPalavrasProibidas(client, callback) {
    const con = mysql.createConnection({ 
        host: db.dbconfig[0]['host'],
        user: db.dbconfig[0]['user'],
        password: db.dbconfig[0]['password'],
        database: db.dbconfig[0]['database']
    });

    const sqlSelectQueryPalavrasProibidas = "SELECT * FROM bot_palavrasproibidas WHERE isactive = 1";

    con.connect(function(err) {
        if (err) {
            console.error('Erro ao conectar a BD:', err);
            return callback(err);
        }

        con.query(sqlSelectQueryPalavrasProibidas, function (err, resultPalavrasProibidas, fields) {
            if (err) {
                console.error('Erro ao executar query de select em bot_palavrasproibidas:', err);
                con.end();
                return callback(err);
            }

            forbiddenWords = [];
            for (const row of resultPalavrasProibidas) {
                forbiddenWords.push(row.palavra);
            }

            console.log('\x1b[33m%s\x1b[0m', 'Palavras Proibidas - Sincronizado.');
            con.end();
            callback(null, forbiddenWords);
        });
    });
}

/*
    Adiciona meia palavra
    ###########################################################################
*/
function addMeiaPalavra(client, query, fromNick) {

    const con = mysql.createConnection({ 
        host: db.dbconfig[0]['host'],
        user: db.dbconfig[0]['user'],
        password: db.dbconfig[0]['password'],
        database: db.dbconfig[0]['database']
    });


    const sqlCheckQuery = "SELECT COUNT(*) AS count FROM bot_meiaspalavras WHERE palavra = ?";
    const sqlInsertQuery = "INSERT INTO bot_meiaspalavras (palavra, isactive) VALUES (?, 1)";

    con.connect(function(err) {
        if (err) {
            console.error('Erro ao conectar a BD:', err);
        }

        // verifica se a palavra já existe.
        con.query(sqlCheckQuery, [query], function (err, result) {
            if (err) {
                console.error('Erro ao executar query de check em bot_meiaspalavras:', err);
                con.end();
            }

            // Se não, insere.
            if (result[0].count == 0) {
                con.query(sqlInsertQuery, [query], function (err, result) {
                    if (err) {
                        console.error('Erro ao executar query de insert em bot_meiaspalavras:', err);
                        con.end();
                    }
                    client.say(fromNick, "🟢 Palavra ( "+query+" ) Adicionada.");
                    con.end();
                   
                });
            } else {
                client.say(fromNick, "🟡 Palavra já existe.");
                con.end();
            }
        });
    });
}

/*
    Adiciona nick proibido
    ###########################################################################
*/
function addNickProibido(client, query, fromNick) {

    const con = mysql.createConnection({ 
        host: db.dbconfig[0]['host'],
        user: db.dbconfig[0]['user'],
        password: db.dbconfig[0]['password'],
        database: db.dbconfig[0]['database']
    });


    const sqlCheckQuery = "SELECT COUNT(*) AS count FROM bot_palavrasproibidas WHERE palavra = ?";
    const sqlInsertQuery = "INSERT INTO bot_palavrasproibidas (palavra, isactive) VALUES (?, 1)";

    con.connect(function(err) {
        if (err) {
            console.error('Erro ao conectar a BD:', err);
        }

        // verifica se a palavra já existe.
        con.query(sqlCheckQuery, [query], function (err, result) {
            if (err) {
                console.error('Erro ao executar query de check em bot_palavrasproibidas:', err);
                con.end();
            }
            // Se não, insere.
            if (result[0].count == 0) {
                con.query(sqlInsertQuery, [query], function (err, result) {
                    if (err) {
                        console.error('Erro ao executar query de insert em bot_palavrasproibidas:', err);
                        con.end();
                    }
                    console.log("ola2");
                    client.say(fromNick, "🟢 Palavra ( "+query+" ) Adicionada.");
                    con.end();
                   
                });
            } else {
                client.say(fromNick, "🟡 Palavra já existe.");
                con.end();
            }
        });
    });
}

/*
    remove nick proibido
    ###########################################################################
*/
function delNickProibido(client, query, fromNick) {

    const con = mysql.createConnection({ 
        host: db.dbconfig[0]['host'],
        user: db.dbconfig[0]['user'],
        password: db.dbconfig[0]['password'],
        database: db.dbconfig[0]['database']
    });


    const sqlCheckQuery = "SELECT COUNT(*) AS count FROM bot_palavrasproibidas WHERE palavra = ?";
    const sqlDeleteQuery = "DELETE FROM bot_palavrasproibidas WHERE palavra = ?";

    con.connect(function(err) {
        if (err) {
            console.error('Erro ao conectar a BD:', err);
        }

        // verifica se a palavra já existe.
        con.query(sqlCheckQuery, [query], function (err, result) {
            if (err) {
                console.error('Erro ao executar query de check em bot_palavrasproibidas:', err);
                con.end();
            }
            // Se não, insere.
            if (result[0].count > 0) {
                con.query(sqlDeleteQuery, [query], function (err, result) {
                    if (err) {
                        console.error('Erro ao executar query de delete em bot_palavrasproibidas:', err);
                        con.end();
                    }
                    client.say(fromNick, "🟢 Palavra ( "+query+" ) removida.");
                    con.end();
                   
                });
            } else {
                client.say(fromNick, "🟡 Palavra não existe.");
                con.end();
            }
        });
    });
}

/*
    remove meia palavra
    ###########################################################################
*/
function delMeiaPalavra(client, query, fromNick) {

    const con = mysql.createConnection({ 
        host: db.dbconfig[0]['host'],
        user: db.dbconfig[0]['user'],
        password: db.dbconfig[0]['password'],
        database: db.dbconfig[0]['database']
    });


    const sqlCheckQuery = "SELECT COUNT(*) AS count FROM bot_meiaspalavras WHERE palavra = ?";
    const sqlDeleteQuery = "DELETE FROM bot_meiaspalavras WHERE palavra = ?";

    con.connect(function(err) {
        if (err) {
            console.error('Erro ao conectar a BD:', err);
        }

        // verifica se a palavra já existe.
        con.query(sqlCheckQuery, [query], function (err, result) {
            if (err) {
                console.error('Erro ao executar query de check em bot_meiaspalavras:', err);
                con.end();
            }
            // Se não, insere.
            if (result[0].count > 0) {
                con.query(sqlDeleteQuery, [query], function (err, result) {
                    if (err) {
                        console.error('Erro ao executar query de delete em bot_meiaspalavras:', err);
                        con.end();
                    }
                    client.say(fromNick, "🟢 Palavra ( "+query+" ) removida.");
                    con.end();
                   
                });
            } else {
                client.say(fromNick, "🟡 Palavra não existe.");
                con.end();
            }
        });
    });
}

/*
    Init sincronizacao
    ###########################################################################
*/
function syncDb(client) {
    syncDbMeiasPalavras(client, function(err, nicksProibidos) {
        if (err) {
            console.error('Erro ao sincronizar Meias Palavras:', err);
            return;
        }

        syncDbPalavrasProibidas(client, function(err, forbiddenWords) {
            if (err) {
                console.error('Erro ao sincronizar Palavras Proibidas:', err);
                return;
            }

            // Both synchronizations are complete, proceed with any further logic
            console.log('Sincronizações completas:', { nicksProibidos, forbiddenWords });
        });
    });
}

// Faz o export dos modulos
module.exports = {delMeiaPalavra, delNickProibido, addNickProibido, addMeiaPalavra, syncDb, checkCloneSala, removeWhoisData, addWhoisData, checkClones, verificaNumerosNick, checkMeioNome, verificaNick, verificaCaps, checkKick};

