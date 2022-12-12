var irc = require('irc');

var bot = new irc.Client('irc.ptnet.org','MeMario', {
    userName: 'node',
    realName: 'nodeJS IRC client',
    port: 6697,
    localAddress: null,
    debug: true,
    showErrors: true,
    autoRejoin: true,
    autoConnect: true,
    channels: ["#Portugal"],
    secure: true,
    selfSigned: false,
    certExpired: false,
    floodProtection: false,
    floodProtectionDelay: 1000,
    sasl: false,
    retryCount: 5,
    retryDelay: 2000,
    stripColors: false,
    channelPrefixes: "&#",
    messageSplit: 512,
    encoding: ''
});


