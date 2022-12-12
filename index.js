    var irc = require('irc');
    var myadd = 0;

require('dns').lookup(require('os').hostname(), function (err, add, fam) {
   myadd = add;
})



    var bot = new irc.Client('irc.ptnet.org','MeMario', {
        userName: 'node',
        realName: 'nodeJS IRC client',
        port: 6697,
        localAddress: "172.31.128.14",
        debug: true,
        showErrors: true,
        autoRejoin: true,
        autoConnect: true,
        channels: ["#Portugal"],
        secure: true,
        selfSigned: true,
        certExpired: true,
        floodProtection: false,
        floodProtectionDelay: 1000,
        sasl: false,
        retryCount: 5,
        retryDelay: 2000,
        stripColors: true,
        channelPrefixes: "&#",
        messageSplit: 512,
        encoding: ''
    });


console.log(bot);