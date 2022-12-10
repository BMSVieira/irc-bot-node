// ###########################################
/*
    IMPORTANTE:
    Modificar a linguagem de Ingles para PT
    node_modules > irc-connect > nick.js
*/
// ###########################################



  const irc = require('irc-connect');

// Create a new IRC client
const client = new irc.Client();

// Connect to the IRC server
client.connect('167.114.210.155', 6697, () => {
  // Join a channel
  client.join('#Portugal', (users) => {
    console.log('Joined channel with users:', users);
  });
});

// Listen for messages in the channel
client.on('message', (from, to, message) => {
  console.log(`${from} => ${to}: ${message}`);
});