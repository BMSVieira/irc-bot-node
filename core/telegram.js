
// Config Variables
var telegram_owners = require('../db/telegram_owners');

/*
    Envia mensagem para todos os utilizadores
    ##############################################################################
*/
function sendTmessage(bot, telegram_config, message)
{
    // Faz loop por todos os utilzadores
    telegram_config.telegram_users.forEach(userId => {
        bot.sendMessage(userId, message);
    });
}

/*
    Função para fazer a notificação via telegram
    ##############################################################################
*/
function notify(bot, nick, telegram_config, notifycationType) {
  
    // Verifica qual o tipo de notificação.
    switch (notifycationType) {
        case "join":
                sendTmessage(bot, telegram_config, "User Entrou: "+nick);
        break;
        case "leave":
                sendTmessage(bot, telegram_config, "User Saiu: "+nick);
        break; 
        case "kick":
                sendTmessage(bot, telegram_config, "User Kick: "+nick);
        break;
        case "message":
                
        break;
        default:
        break;
    }
}


// Faz o export dos modulos
module.exports = {notify};
