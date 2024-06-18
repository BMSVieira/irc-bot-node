
// Config Variables
var telegram_owners = require('../db/telegram_owners');

/*
    Remove todos os caracteres especiais do nick, retorna em lowercase e limpo
    ##############################################################################
*/
function telegramNotify(str) {
  
    var regex = /[!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?\s]+/g;
    var result = str.replace(regex, '');
    result = result.toLowerCase();
  
    return result;
}


// Faz o export dos modulos
module.exports = { checkTelegramOwner};
