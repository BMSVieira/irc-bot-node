// ###########################################
/*
    IMPORTANTE:
    Modificar a linguagem de Ingles para PT
    node_modules > irc-connect > nick.js







*/
// ###########################################


var irc = require('irc');

var bot = new irc.Client('irc.brazink.net','MeMario', {
    userName: 'node',
    realName: 'nodeJS IRC client',
    port: 6697,
    localAddress: "167.114.210.155",
    debug: true,
    showErrors: true,
    autoRejoin: true,
    autoConnect: true,
    channels: ["#Portugal"],
    secure: true,
    selfSigned: true,
    certExpired: true,
    floodProtection: true,
    floodProtectionDelay: 1000,
    sasl: false,
    retryCount: 5,
    retryDelay: 2000,
    stripColors: true,
    channelPrefixes: "&#",
    messageSplit: 512,
    encoding: ''
});

