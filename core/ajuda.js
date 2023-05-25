
/*
    Lista as regras da Sala
    ###########################################################################
*/
function regrasSala(from, client) {

    client.say(from, "É Proíbido:");
    client.say(from, "⛔️ Qualquer comportamento que interfira com o normal funcionamento da sala.");
    client.say(from, "⛔️ Xenofobia, racismo, homofobia ou qualquer tipo de discriminação.");
    client.say(from, "⛔️ Uso de nicks de cariz ou tendência sexual.");
    client.say(from, "⛔️ Publicidade a outros chats ou salas, inclusive convites em privado.");
    client.say(from, "⛔️ Spam, abuso no envio de mensagens automáticas.");
    client.say(from, "⛔️ Envio de fotos em privado sem o consentimento do receptor");
    client.say(from, "Sugestões para um bom ambiente:");
    client.say(from, "✅ Respeita todos os utilizadores.");
    client.say(from, "✅ Não fomentar assuntos com intuito de destabilizar");
    client.say(from, "✅ Caso necessário alertar moderadores, lembrando que por vezes podem estar ausentes");
    client.say(from, "✅ No caso de não haver moderadores presentes registar hora do incidente e comunicar a um moderador.");
}

// Faz o export dos modulos
module.exports = { regrasSala };
