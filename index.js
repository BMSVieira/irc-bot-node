
var irc = require("irc-connect");
var ircOptions = {
  //[port] if not provided defaults to 6667 (or if secure, 6697)
  port: 6697,
  //[secure] can be true/false or 'semi' for lazy CA checking (self-signed, obscure CA, etc)
  secure: "semi",
  //[nick] is the desired nickname, if not provided one will be generated (you can always use nick() later)
  nick: 'WernerB',
  //[realname] is the "real name" shown in WHOIS results
  realname: 'Werner Brandes',
  //[ident] is the user part of your hostmask (before the @), if not provided 'irc-cnct' will be used
  // note this may either be prefixed with a ~ on some servers, if you don't have an 'identd' service
  // if you do have such a service, most servers will use what is obtained there and ignore this
  ident: 'wbrandes'
}
var freenode = irc.connect('irc.brazink.net', ircOptions)
  //include some plugins
  .use(irc.pong, irc.names, irc.motd)
  //fires when the servers sends the welcome message (RPL_WELCOME)
  .on('welcome', function (msg) {
    console.log(msg);
    this.nick('pokey', 'pa$$word', function(err){
      console.log('There was a problem setting your NICK:', err);
    });
  })
  //fires after the server confirms password
  .on('identified', function (nick) {
    this.send('JOIN #portugal');
  })
  //fires only when YOUR nick changes
  .on('nick', function (nick) {
    console.log('Your nick is now:', nick);
  })
  .on('NOTICE', function (event) {
    console.log('NOTICE:', event.params[1]);
  })
  .on('JOIN', function (event) {
    console.log(event.nick, 'joined');
  })
  .on('PRIVMSG', function (event) {
    var params = event.params;
    console.log('message from: '+event.nick, 'to: '+params[0], params[1]);
  })
  //from the `names` plugin.
  .on('names', function (cname, names) {
    console.log(cname, names);
  })
  //from the `motd` plugin.
  .on('motd', function (event) {
    console.log(this.motd);
    console.log(this.support);
  })
;
