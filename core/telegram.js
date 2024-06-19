
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
    Verifica se é Owner
    ####################################################################
*/
function isAdmin(id)
{
  if(telegram_owners.includes(id)) { return true; } else {  return false; }
}
/*
    Função para fazer a notificação via telegram
    ##############################################################################
*/
function notify(bot, nick, telegram_config, notifycationType, reason = "") {
  
    // Verifica qual o tipo de notificação.
    switch (notifycationType) {
        case "join":
                sendTmessage(bot, telegram_config, "✅ Entrou: "+nick);
        break;
        case "leave":
                sendTmessage(bot, telegram_config, "⚠️ Saiu: "+nick);
        break; 
        case "kick":
                sendTmessage(bot, telegram_config, "🚫 Kickado: "+nick+ " ("+reason+")");
        break;
        case "message":
                
        break;
        default:
        break;
    }
}

// Faz o export dos modulos
module.exports = {notify, isAdmin};
