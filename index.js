// ###########################################
/*
    IMPORTANTE:
    Modificar a linguagem de Ingles para PT
    node_modules > irc-connect > nick.js
*/
// ###########################################

var irc = require("irc-connect");
var channels = require('irc-channels');
const fs = require('fs');
var XMLHttpRequest = require("xmlhttprequest").XMLHttpRequest;

/* 
    Minhas credenciais
*/
var myNick = "EpiC";
var myPassword = "asuzmeuamor";

/* 
    Irc Options
*/
var ircOptions = {
    port: 6697,
    secure: true,
    nick: 'Unknown',
    realname: 'Bot Portugal',
    ident: 'botportugal'
}

/*
 Variaveis Global
*/

var interval_shout;
var interval_quiz;
var ultimoShout;
var ultimaFraseNicksStatus;
var ultimaResposta;
var quizPergunta = 0;
var quizPerguntadas = [];
var quizCount = 1;
var quizBlockedQuestion = 0;
var quizVencedor = {};

var shoutTime = 60000; // 60 Segundos
var quizTime = 25000; // 45 Segundos
var quizLimitRespostas = 10 // Limite de respostas do quiz

/* 
    Utilizadores Permitidos
*/
var owner = fs.readFileSync('db/owner.txt').toString().split("\n");
var nicksStatus = fs.readFileSync('db/nicksstatus.txt').toString().split("\n");
var blackList = fs.readFileSync('db/blacklist.txt').toString().split("\n");

/*
    Estado em que está, depende se faz o jogo, shout, parado.
    0 - Default
    1 - Shout
    2 - Quiz
    3 - Não responde ao identificar
    4 - Frases para Nicks registados
*/
var modoAtual = 0;

/* 
    Frases para nicks registados
*/
var frasesNicksStatus = [
    {
      frase: "Seja bem-vindo {nick}, a senha para o WI-FI é: a saída é por ali. Tudo junto. "
    },
    {
      frase: "Bem-vindo(a) {nick}. Não era necessário tanto perfume. "
    },
    {
      frase: "Ainda bem, chegaste {nick}! Não repares na bagunça. "
    },
    {
      frase: "Bem-vindo(a) hoje {nick} e restantes 364 dias. "
    },
    {
      frase: "Espero que tenhas trazido algo que se beba {nick}. Ou não serás bem-vindo(a). "
    },
    {
      frase: "Finalmente, vieste ver-me {nick}. Foram saudades?"
    },
    {
      frase: "{nick} Foi difícil pensar que podias não vir me visitar hoje. "
    },
    {
      frase: "{nick} Aqui só tem duas coisas que deixam saudade: eu e o autodj. O autodj não é tão bom. "
    },
    {
      frase: "Se vieste animar a sala, sejas bem-vindo {nick}. Se quiseres atrapalhar, põe-te na fila. "
    },
    {
      frase: "Sentimos a tua falta {nick}. De quem entra a cuspir fogo."
    },
    {
      frase: "Entras sempre de má cara {nick}. Hoje põe uma bonitinha. Vamos tirar foto em grupo. "
    },
    {
      frase: "{nick} Antes de entrar na sala foi à manicure, pedicure, cabeleireira, spa e depilação. Até que enfim, chegaste. "
    },
    {
      frase: "Olá, {nick}. Não recomendo o uso das moitas. Há uma praga de gambuzinos."
    },
    {
      frase: "{nick} As saudades que eu já tinha de te ver nesta salinha, tão modesta quanto eu... "
    },
    {
      frase: "Entra e senta, {nick}. Faz que estás em casa. Não é a tua casa. Não quero graffities nas paredes. "
    },
    {
      frase: "Hello, salut, willkommen, bienvenido, olá, (linguagem gestual) benvenuto e aloha {nick}. Que alegria ver-te por aqui."
    }
];
/* 
    Shout - Vai falar estas frases de tempos em tempos
*/
var shout = [
    {
      frase: "Vai rindo enquanto tens dentes. Porque depois de meter a mão na tua cara, vão sumir todos de uma vez!"
    },
    {
      frase: "Todos falam, mas nenhum diz nada!"
    },
    {
      frase: "O único exercício físico que eu faço é correr atrás de dinheiro."
    },
    {
      frase: "Tudo que vai, volta. Menos as canetas que eu emprestei na sala de aula…"
    },
    {
      frase: "Os loucos fazem castelos no ar, os paranóicos moram dentro deles e os psicólogos cobram o aluguer"
    },
    {
      frase: "Tem coisas nesta vida que eu apenas visualizo e não respondo."
    },
    {
      frase: "Todos falam, mas nenhum diz nada!"
    }
];
/* 
    Respostas - Sempre que falarem no nome do bot, vai responder aleatoriamente
*/
var frases = [
    {
      frase: "{nick} também gosto muito de ti..."
    },
    {
      frase: "{nick} o que tu queres... sei eu!"
    },
    {
      frase: "Tens a certeza que queres jogar esse jogo comigo {nick}? Na escola onde tu andas, já fui professor."
    },
    {
      frase: "{nick} adoça mais a tua vida, a tua rotina já é muito amarga..."
    },
    {
      frase: "Tanta coisa para fazeres aqui e preferes continuar a chatear-me {nick}?"
    },
    {
      frase: "Ohhhh {nick} .. não!"
    },
    {
      frase: "{nick} podes por favor ir ver se está a chover? obrigado!"
    },
    {
      frase: "{nick} 'Nóis' era trouxa mas, o tempo passou e a vida ensinou... E hoje, 'nóis' é trouxa com experiência."
    },
    {
      frase: "Quem não valoriza o nosso lado bom {nick}, tem de conhecer o lado ruim."
    },
    {
      frase: "Eu até tento ser normal {nick} mas, são os piores momentos da minha vida. "
    },
    {
      frase: "Nasci baixinho para vocês me olharem de cabeça baixa e eu de cabeça erguida, {nick}."
    },
    {
      frase: "Uma vez, Charlie Chaplin inscreveu-se num concurso de sósias de Charlie Chaplin e ficou em 3° lugar. Isso mostra {nick} que, se depender da opinião dos outros, não serves para ser tu mesmo."
    },
    {
      frase: "Entro aqui para fazer novas amizades, {nick}. Digo o que comi, como me sinto, o que estou fazer, o que ainda irei fazer e grito: Like! Com isso tudo, já arranjei três amigos: um gnr, um pj e um psiquiatra."
    },
    {
      frase: "Só vou te dizer {nick} ..que tem pessoal infiltrado nesta sala."
    },
    {
      frase: "Ajuda-me a rezar e a pedir paciência ao Senhor, {nick}. Paciência não há. Beleza tenho de sobra."
    },
    {
      frase: "Um beijo para {nick} que gosta de mim e para quem não gosta dois.."
    },
    {
      frase: "Quando me perguntam {nick} se não tenho vergonha das coisas que escrevo... Ter eu tenho mas, eu sou forte e aguento."
    },
    {
      frase: "Por favor {nick} ! Sem gritos, sem desmaios, sem aplausos, sem empurrar... Eu estou aqui."
    },
    {
      frase: "Podes ser tanta coisa {nick}: evangélico, budista, espírita, ateu, power ranger. Só não sejas chato (a)."
    },
    {
      frase: "Minha felicidade em te ver {nick} tem 15 letras: M-I-N-H-A--F-E-L-I-C-I-D-A-D-E. Que esperava? Não sou romântico."
    },
    {
      frase: "Estás cheio de dedos nessas mãos, {nick} .."
    },
    {
      frase: "{nick} Desde ontem, escrevo 'riso'. O corretor corrige para 'rico'. Se for essa a vontade, eu estou pronto!"
    },
    {
      frase: "{nick} Vou mandar embora todos os que medem menos de 1,60. Isto aqui não é um formigueiro."
    },
    {
      frase: "{nick} Algumas coisas tem preço, outras tem valor."
    },
    {
      frase: "{nick} Beijar é a terceira coisa mais linda que o ser humano faz com a boca. A segunda é comer e a primeira é ficar calado."
    },
    {
      frase: "Quando olho para ti {nick}, lembras a minha conta corrente... Fico à espera que aconteça um milagre."
    },
    {
      frase: "{nick} Um dia alguém disse 'Jamais me esquecerás'. Só não lembro quem foi. "
    },
    {
      frase: "Meu silêncio vai te mandar o troco {nick}."
    },
    {
      frase: "{nick} Já estava farto do cheiro a lavanda, pinho e limão da sala. Então, pendurei chouriços, morcelas e alheiras."
    },
    {
      frase: "{nick} Se tudo que já ofereci não serve de nada, está na hora de oferecer minha ausência."
    },
    {
      frase: "{nick} Existem finais felizes e finais necessários."
    },
    {
      frase: "Sou como o açúcar {nick}: mesmo sob pressão, mesmo sob tortura, ainda faço o bem, ainda destilo doçura. É mentira mas, foi profundo."
    },
    {
      frase: "{nick} Disseste que ias me levar a um sítio romântico e afinal... enfiou-me o dia todo no McDonald's."
    },
    {
      frase: "{nick} Todos a namorar nas moitas e eu aqui a pensar como entra água dentro dos côcos e pevides nas abóboras."
    },
    {
      frase: "Estava aqui a pensar {nick}, que com alguns prints estragava a felicidade a muita gente."
    },
    {
      frase: "{nick} Fui atrás da felicidade e voltei com uma chávena de café."
    },
    {
      frase: "Eu percebo tudo {nick} mas, fico em silêncio, não falo nada."
    },
    {
      frase: "As vezes a única maneira de permanecer são, é enlouquecer {nick}."
    },
    {
      frase: "{nick} Paciência não é o meu forte. Então, não abusa."
    },
    {
      frase: "{nick} Meu nutricionista disse que eu sou o que como. Estou à base de pizza, doces e chocolates, etc. Daí concluo que, sou muito gostoso."
    },
    {
      frase: "Às vezes {nick}, os milagres são as pessoas boas que aparecem no nosso caminho."
    },
    {
      frase: "{nick} Hoje é aquele dia que vou fazer tudo, inclusive nada."
    },
    {
      frase: "Inveja não sei do quê, {nick}. Até parece que a tua pobreza é melhor que a minha..."
    },
    {
      frase: "Quem pensas que és para afirmar que não vivo sem ti, {nick}? Por acaso, és café?"
    },
    {
      frase: "{nick} Falam de mim porque se falassem de vocês ninguém teria interesse."
    },
    {
      frase: "{nick} Confia no homem que tenhas depilação melhor que a tua..."
    },
    {
      frase: "Não me importo se é alta, baixa, magra, rica ou pobre {nick}. No final do dia... é noite!"
    },
    {
      frase: "{nick} A única coisa que o tempo cura, é o presunto."
    },
    {
      frase: "{nick} Queres sentir borboletas no estômago? Começa já a comer bichos de seda."
    },
    {
      frase: "Bebo para afogar as mágoas {nick} mas, as filhas da mãe sabem nadar... "
    },
    {
      frase: "Triste não é mudar de ideias, {nick}. Triste é não ter ideias para mudar."
    },
    {
      frase: "{nick} Errar é humano. Culpar outra pessoa é política."
    },
    {
      frase: "Comecei uma dieta, {nick}. Cortei bebidas e comidas pesadas. Em catorze dias, perdi duas semanas."
    },
    {
      frase: "{nick} Eu evito coisas que engordam, tipo espelhos, balanças e fotografias."
    },
    {
      frase: "{nick} A frase mais bipolar do mundo: Minha nossa!"
    },
    {
      frase: "{nick} As aparências iludem e em alguns casos, assustam."
    },
    {
      frase: "Aprendi a nunca discutir com um idiota, {nick}. Ele ganha sempre."
    },
    {
      frase: "{nick} Se eu sou bom partido, imagina inteiro."
    },
    {
      frase: "{nick} Segue o teu sonho... Continua a dormir."
    },
    {
      frase: "{nick} Eu nem quero mais conversa."
    },
    {
      frase: "Vai pastar {nick}.."
    }
];
/* 
    Quiz - Vai falar estas frases de tempos em tempos
*/
var quiz = [
    {
      pergunta: "Quantos planetas Terra cabem dentro do Sol?",
      resposta: "Um milhão"
    },
    {
      pergunta: "Em que lugar vivem mais cangurus do que pessoas?",
      resposta: "Austrália"
    },
    {
      pergunta: "Quantos pares de olhos a maior parte das aranhas têm?",
      resposta: "4"
    },
    {
      pergunta: "Que escala mede intensidade sísmica de acordo com os danos provocados?",
      resposta: "Escala Mercalli"
    },
    {
      pergunta: "Qual a ciência que estuda a atmosfera da Terra e a climatologia?",
      resposta: "Meteorologia"
    },
    {
      pergunta: "Quantos tentáculos tem um polvo? ",
      resposta: "8"
    },
    {
      pergunta: "De que são constituídos os diamantes?",
      resposta: "Carbono"
    },
    {
      pergunta: "Quantas cores tem o arco-íris?",
      resposta: "7"
    },
    {
      pergunta: "Qual é a ave que não voa?",
      resposta: "Pinguim"
    },
    {
      pergunta: "Qual a unidade que mede a intensidade do som?",
      resposta: "Decibel"
    },
    {
      pergunta: "Que capital asiática tem uma Cidade Imperial e uma Cidade Proibida?",
      resposta: "Pequim"
    },
    {
      pergunta: "Qual era o deus romano do amor?",
      resposta: "Cupido"
    },
    {
      pergunta: "Que personagem da mitologia grega era metade homem metade cavalo?",
      resposta: "Centauro"
    },
    {
      pergunta: "Qual a altura do Monte Everest em metros? ",
      resposta: "8848"
    },
    {
      pergunta: "De quem é a famosa frase “Penso, logo existo”?",
      resposta: "René Descartes"
    },
    {
      pergunta: "Qual o livro mais vendido no mundo a seguir à Bíblia?",
      resposta: "Dom Quixote"
    },
    {
      pergunta: "Quantas casas decimais tem o número pi?",
      resposta: "Infinitas"
    },
    {
      pergunta: "Qual o país que tem maior expectativa de vida?",
      resposta: "Japão"
    },
    {
      pergunta: "O que a palavra legend significa em português?",
      resposta: "Lenda"
    },
    {
      pergunta: "Quem pintou 'Guernica'?",
      resposta: "Pablo Picasso"
    },
    {
      pergunta: "Qual o nome da banda portuguesa que integrou o cantor Fernando Melão?",
      resposta: "Excesso"
    },
    {
      pergunta: "Em qual local da Ásia o português é língua oficial?",
      resposta: "Macau"
    },
    {
      pergunta: "Qual o nome do filme que foi baseado na obra de Shakespeare?",
      resposta: "Muito Barulho por Nada"
    },
    {
      pergunta: "Quem foi o primeiro homem a pisar na Lua?",
      resposta: "Neil Armstrong"
    },
    {
      pergunta: "Em que estado australiano fica situada a cidade de Sydney?",
      resposta: "Nova Gales do Sul"
    },
    {
      pergunta: "Em que ano Luís Filipe Vieira, iniciou no Sport Lisboa e Benfica como seu dirigente desportivo?",
      resposta: "2003"
    },
    {
      pergunta: "Qual foi o recurso utilizado inicialmente pelo homem para explicar a origem das coisas?",
      resposta: "Mitologia"
    },
    {
      pergunta: "Que substância é absorvida pelas plantas e expirada por todos os seres vivos?",
      resposta: "Artérias"
    },
    {
      pergunta: "Que substância é absorvida pelas plantas e expirada por todos os seres vivos?",
      resposta: "Dióxido de carbono"
    },
    {
      pergunta: "Em que oceano fica Madagascar?",
      resposta: "Oceano Índico"
    },
    {
      pergunta: "Que país tem mais ilhas no mundo?",
      resposta: "Suécia"
    },
    {
      pergunta: "Qual é o país mais pequeno do mundo?",
      resposta: "Vaticano"
    },
    {
      pergunta: "Qual é a capital do Canadá?",
      resposta: "Otava"
    },
    {
      pergunta: "Qual é a maior (não a mais alta) cordilheira de montanhas no mundo?",
      resposta: "Andes"
    },
    {
      pergunta: "Qual é o termo na gíria utilizada, quando se referem a Nova Iorque?",
      resposta: "Gotham"
    },
    {
      pergunta: "Qual o segundo país com maior população?",
      resposta: "Índia"
    },
    {
      pergunta: "Qual a equipa com mais UEFA Liga dos Campeões?",
      resposta: "Real Madrid"
    },
    {
      pergunta: "Quem foi campeão do mundo de futebol no ano 1998?",
      resposta: "França"
    },
    {
      pergunta: "Qual é a língua oficial de Espanha?",
      resposta: "Castelhano"
    },
    {
      pergunta: "Qual o resultado de 3+3:3?",
      resposta: "4"
    },
    {
      pergunta: "Quantos arestas tem um paralelepípedo?",
      resposta: "12"
    },
    {
      pergunta: "Quantos vértices tem um cubo? ",
      resposta: "8"
    },
    {
      pergunta: "Que ator disse: 'Um dia vou fazer 60 e vou dizer: Tenho 60 e sou sexy'?",
      resposta: "Jim Carrey"
    },
    {
      pergunta: "Qual o nome da personagem da série 'Vis a Vis' que foi colocada dentro da máquina de lavar roupa, na tentativa de a matar?",
      resposta: "Macarena"
    },
    {
      pergunta: "Em que série ficou conhecido Will Smith?",
      resposta: "Príncipe de Bel-air"
    },
    {
      pergunta: "Qual o apresentador televisivo que treinou o FC de Arouca?",
      resposta: "Jorge Gabriel"
    },
    {
      pergunta: "Porque é popularmente conhecido o coloreto de sódio (NaCl)?",
      resposta: "Sal"
    },
    {
      pergunta: "Qual o símbolo química do fósforo?",
      resposta: "P"
    },
    {
      pergunta: "Qual foi o segundo artista, que passou mais músicas na rádios a nível mundial, no ano 2021?",
      resposta: "Dua Lipa"
    },
    {
      pergunta: "Em que ano nasceu o cantor brasileiro Roberto Carlos?",
      resposta: "1941"
    },
    {
      pergunta: "Em que ano terminou a Segunda Guerra Mundial? ",
      resposta: "1945"
    },
    {
      pergunta: "Como se chama o vocalista da banda Metallica?",
      resposta: "James Alan Hetfield"
    },
    {
      pergunta: "A que país é atribuído a invenção do esparguete?",
      resposta: "China"
    },
    {
      pergunta: "Qual é o maior animal do planeta Terra?",
      resposta: "Baleia Azul"
    },
    {
      pergunta: "Qual o nome do primeiro asteróide descoberto?",
      resposta: "Ceres"
    },
    {
      pergunta: "Quem foi o apresentador do programa 'Roda da Sorte'?",
      resposta: "Herman José"
    },
    {
      pergunta: "Como se chamava o apresentador do programa 'Ponto de Encontro'?",
      resposta: "Henrique Mendes"
    },
    {
      pergunta: "Finaliza a frase imortalizada por Herman José: Eu é que sou o presidente..",
      resposta: "da junta"
    },
    {
      pergunta: "Qual a segunda língua oficial em Portugal?",
      resposta: "Mirandês"
    },
    {
      pergunta: "Quantas saias fazem parte do traje tradicional feminino da Nazaré?",
      resposta: "7"
    },
    {
      pergunta: "Portugal, país dos três F's. Fado, Futebol e ..",
      resposta: "Fátima"
    },
    {
      pergunta: "Qual foi o primeiro livro impresso na história da humanidade?",
      resposta: "Bíblia"
    },
    {
      pergunta: "Qual foi a série de livros mais vendida no século XXI? ",
      resposta: "Harry Potter"
    },
    {
      pergunta: "Quais as cores que vulgarmente são representadas numa paleta e nem são cores?",
      resposta: "Branco e Preto"
    },
    {
      pergunta: "Que artista pintou o teto da Capela Sistina em Roma?",
      resposta: "Michelangelo"
    } 
];
/* 
    Verifica se é admin ou não
    #################################################################### 
*/
function isAdmin(fromNick)
{    
    // Verifica se este nick está no array
    if (owner.includes(fromNick))
    {
      return true;
    } else {
      return false;
    }
}
/* 
    Muda o modo atual do bot
    ####################################################################
*/
function mudarModo(value)
{
    modoAtual = value;
}
/* 
    Vai para todos os modos e todos os intervalos que estão ativos no momento
    ####################################################################
*/
function unbindAll()
{
    clearTimeout(interval_shout); 
    clearTimeout(interval_quiz);

    // muda para o modo default
    mudarModo(0); 

    // Reset do Quiz
    quizPergunta = 0;
    quizPerguntadas = [];
    quizCount = 1;
    quizBlockedQuestion = 0;
    quizVencedor = {};
}
/* 
    Função que muda o tempo das mensagens
    ####################################################################
*/
function changeTime(_this, channel, cmd, query)
{
    // Limpa o interval atual
    clearTimeout(interval_shout); 
    clearTimeout(interval_quiz);
    
    switch(cmd) {
        case "setShoutTime":
            channel.msg("<setShoutTime> A reiniciar, tempo de resposta modificado..."); 
            shoutTime = query;
        break;  
        case "setQuizTime":
            channel.msg("<setQuizTime> A reiniciar, tempo de resposta modificado..."); 
            quizTime = query;
        break;
        case "setQuizLimit":
            channel.msg("<setQuizLimit> A reiniciar, limite de respostas modificado..."); 
            quizLimitRespostas = query;
        break; 
      default:
        // Nada em Default
    }
}
/* 
    Vai buscar a temperatura
    #################################################################### 
*/
function startTemperatura(_this, channel, smsCmd, query, fromNick)
{
      var xhr = new XMLHttpRequest();
      xhr.open("GET", 'http://api.weatherapi.com/v1/current.json?key=f5afd9f9483348d0826161751221902&q='+query+'&aqi=no', true);
      xhr.onreadystatechange = function() {
          if(xhr.readyState == 4 && xhr.status == 200) {
              var data = JSON.parse(xhr.responseText);
              channel.pvt("Neste momento estão "+data.current.temp_c+"ºC em "+data.location.name+", "+data.location.country, fromNick);
              channel.pvt("-- Outras informações: --", fromNick);
              channel.pvt("Velocidade do Vento: "+data.current.wind_kph+" Kmh", fromNick);
              channel.pvt("Rajada: "+data.current.gust_kph+" Kmh", fromNick);
              channel.pvt("Condição Meteorológica: "+data.current.condition.text, fromNick);
          } 
      }
      xhr.send();
}
/* 
    Grava os objectos para o ficheiro txt
    #################################################################### 
*/
function saveToFile(arrayToFile, pathToFile)
{

  // Remove espaços
  arrayToFile = arrayToFile.filter(n => n);

  const writeStream = fs.createWriteStream(pathToFile);
  const pathName = writeStream.path;

  // Vai colocar os valores e vai quebrar a linha com base nas quebras de linha
  arrayToFile.forEach(value => writeStream.write(`${value}\n`));

  // Escreve todos os eventos para o ficheiro
  writeStream.on('finish', () => {
  console.log(`Wrote all the array data to file ${pathName}`);
  });

  // Eventuais erros
  writeStream.on('error', (err) => {
  console.error(`There is an error writing the file ${pathName} => ${err}`)
  });

  // Fecha a stream depois de tudo concluido
  writeStream.end();   
}
/* 
    Faz um print integral do Objecto para o pv do user
    #################################################################### 
*/
function printObject(query, _this, channel, fromNick)
{    
    // Loop pelo objecto
    for (const value of query) {
      channel.pvt(value, fromNick);
    }
}
/* 
    Remove um valor do objecto
    #################################################################### 
*/
function removeObject(object, query, _this, channel, fromNick, pathToFile)
{    
    // Loop pelo objecto
    var index = object.indexOf(query);
    if (index !== -1) {
      object.splice(index, 1);
      saveToFile(object, pathToFile);
      channel.pvt("Item removido com sucesso.", fromNick);
    }

}
/* 
    Inicia o Shout
    ####################################################################
*/
function startShout(_this, channel)
{
    interval_shout = setInterval(function () {

            var rndInt = Math.floor(Math.random() * 5) + 1;
            while(rndInt == ultimoShout)
            {
                rndInt = Math.floor(Math.random() * 5) + 1;
            }

            channel.msg(shout[rndInt].frase);
            ultimoShout = rndInt;
        
    }, shoutTime);
}
/* 
    Inicia a resposta a utilizadores que entraram
    ####################################################################
*/
function startRepostaEntrou(_this, channel, nick)
{
    setTimeout(function () {

            var rndInt = Math.floor(Math.random() * 14) + 1;
            while(rndInt == ultimaFraseNicksStatus)
            {
                rndInt = Math.floor(Math.random() * 14) + 1;
            }

            var frase = frasesNicksStatus[rndInt].frase;
            var result = frase.replace("{nick}", nick);

            channel.msg(result);
            ultimaFraseNicksStatus = rndInt;

    }, 2000);
}
/* 
    Faz as contas e anuncia o vencedor do quiz
    ####################################################################
*/
function anunciaVencedorQuiz(_this, channel)
{
      var Vencedor = 0;
      var VencedorNome;

      // Faz as contas e verifica o vencedor do quiz
      for (var k in quizVencedor) {
        // Se o numero atual for maior do que o antigo Vencedor
        if (quizVencedor[k] > Vencedor) {
          Vencedor = quizVencedor[k];
          VencedorNome = k;
        }
      }

      // Verifica se existem utilizadores ou não
      if(VencedorNome != undefined)
      {
        // Envia os dados com o vencedor
        channel.msg("O Vencedor é " + VencedorNome + " com " + Vencedor + " resposta(s) certa(s). Obrigado a todos pela vossa participação!");
      } else {
        // Envia os dados com o vencedor
        channel.msg("Não foram encontrados vencedores.");
      }
}
/* 
    Inicia o Quiz
    ####################################################################
*/
function startQuiz(_this, channel)
{
    interval_quiz = setInterval(function () {

        if(quizCount <= quizLimitRespostas)
        {

            var rndInt = Math.floor(Math.random() * 60) + 1;
            while(quizPerguntadas.includes(rndInt))
            {
                rndInt = Math.floor(Math.random() * 60) + 1;
            }
                    
            quizBlockedQuestion = 0;
            channel.msg("Quiz: "+quiz[rndInt].pergunta);
            quizPerguntadas.push(rndInt);
            quizPergunta = rndInt;

        } else {

            // Anuncia o vencedor    
            anunciaVencedorQuiz(_this, channel);

            // Reseta tudo
            unbindAll();
        }

        // Aumenta o count
        quizCount = quizCount+1;


    }, quizTime);

    // Atualizar Estado
    mudarModo(2);
}
/* 
    Verifica a resposta da quiz
    ####################################################################
*/
function CheckRespostaQuiz(_this, channel, smsNick, fromNick)
{
    // Obter a resposta atual
    var respAtual = quiz[quizPergunta].resposta;

    // Colocar a resposta e a sms em lowerCase
    smsNick = smsNick.toLowerCase();
    respAtualLower = respAtual.toLowerCase();

    // Procura se na mensagem completa da pessoa, existe a resposta
    // Desta forma consegue excluir quais quer código "invisivel" que venha na mensagem
    if (smsNick.indexOf(respAtualLower) > -1 && quizBlockedQuestion == 0) {

        // Verifica se já existe o registo dele no array
        var valorPontos = 1;
        if(quizVencedor[fromNick])
        {
          var data = quizVencedor[fromNick];
          valorPontos = data+1;
        } 

        quizVencedor[fromNick] = valorPontos;
        quizBlockedQuestion = 1;
        channel.msg("Resposta Certa: "+fromNick); 
    }
}
/* 
    Envia resposta se alguem tocar no nome do bot
    ####################################################################
*/
function startResposta(nick, channel)
{
    setTimeout(function () {

        var rndInt = Math.floor(Math.random() * 59) + 1;
        while(rndInt == ultimaResposta)
        {
            rndInt = Math.floor(Math.random() * 59) + 1;
        }

        var frase = frases[rndInt].frase;
        var result = frase.replace("{nick}", nick);

        channel.msg(result);
        ultimaResposta = rndInt;

    }, 2000);
}
/* 
    Verifica se o nick está na blacklist
    ####################################################################
*/
function checkNickBlacklist(nick, _this, channel)
{
    
    var nickPessoa = nick.toLowerCase();

    // Verifica se o nome da pessoa contem aquelas palavras
    for (const item of blackList) {
      if(item != "")
      {
        if (nickPessoa.indexOf(item) > -1) {
          console.log("encontado -> "+item);
          setTimeout(function () {
            channel.kick("Nick com conteúdo sexual não permitido. Mude de nick ou de sala!", nick);
          }, 2000);
        }
      }
    }

}
//  ####################################################################
//  ####################################################################

/*
    Guarda a variavel do scope Join Channel #Portugal
    Para conseguir mandar mensagens por todo o canal
*/
var _this = 0;

var freenode = irc.connect('irc.brazink.net', ircOptions)
    //include some plugins
    .use(irc.pong, irc.names, irc.motd, channels)

    // Quando o servidor confirma a password
    .on('identified', function (nick) {
        this.send('JOIN #Portugal');
    })

    // Obter todos os nomes
    .on('names', function (cname, names) {
        console.log(cname, names);
    })


    // Quando existe algum aviso
    .on('NOTICE', function (event) {
        console.log('NOTICE:', event.params[1]);
    })

    freenode.on('welcome', function (msg) {

        // Keep alive enviado.
        this.on('PING', function (evt) {
            console.log("keep-alive enviado.");
        })

        // Muda o nick e entra com a conta registada
        this.nick('EpiC', 'asuzmeuamor', function(err){
            console.log('There was a problem setting your NICK:', err);
        });

         // Envado quando o nick muda
        this.on('nick', function (nick) {
            console.log('Your nick is now:', nick);
        })

        // Save Scope do freenode
        _this = this;

        // Join Channel
        this.join('#Portugal', function(channel){
         
            // Quando alguem entra na sala, se for Nick com status, envia uma mensagem!
            _this.on('JOIN', function (event) {
                if(nicksStatus.includes(event.nick)) // Verifica se vai ao PV
                {
                    startRepostaEntrou(_this, channel, event.nick);
                }
            })

            // Segurança, sempre que entra um nick faz uma verificação a ver se ele 
            // consta na blacklist
            this.on('JOIN', function (event) {
                // Ao entrar verifica se o nick está na blacklist
                checkNickBlacklist(event.nick, _this, channel);
            })

            // Recebe comandos
            _this.on('PRIVMSG', function(event){
                
                var params = event.params;

                // Variaveis do PV
                var fromNick = event.nick;
                var toNick = params[0];
                var smsNick = params[1];

                // Tratar a string para ir buscar o comando
                var smsCmd = smsNick.substring(smsNick.indexOf("<") + 1, smsNick.lastIndexOf(">"));
                // Tratar a string para ir buscar o resto do comando depois de >
                var query = smsNick.substring(smsNick.indexOf('>') + 1);
                query = query.substring(1); // Remove espaço entre o comando e o inicio da query
                // Verifica se o nome veio de um dos permitidos e se é para o bot
                // Verifica se é uma ordem ou não.
                if(toNick == myNick) // Verifica se vai ao PV
                {

                    switch(smsCmd) {
                      case "startshout":
                            if(isAdmin(fromNick))
                            {
                              // Inicia o Shout
                              channel.pvt("Shout a iniciar...", fromNick);
                              unbindAll();
                              startShout(_this, channel);       
                            }
                        break;
                      case "stopshout":
                            if(isAdmin(fromNick))
                            {
                              // Cancela o Shout
                              channel.pvt("Shout parado", fromNick);
                              unbindAll(); 
                            }
                        break;
                       case "startquiz":
                            if(isAdmin(fromNick))
                            {
                              // Ativa o quiz 
                              channel.msg("Quiz vai iniciar dentro de segundos..."); 
                              unbindAll();
                              startQuiz(_this, channel);
                            }
                       break;
                       case "stopquiz":
                            if(isAdmin(fromNick))
                            {
                              // Anuncia o vencedor    
                              anunciaVencedorQuiz(_this, channel);
                              unbindAll(); 
                            }
                        break;  
                        case "say":
                            if(isAdmin(fromNick))
                            {
                              // Envia mensagem para o canal
                              channel.msg(query);
                            }
                        break;  
                        case "setShoutTime":
                            if(isAdmin(fromNick))
                            {
                              // Muda o tempo do shout
                              changeTime(_this, channel,"setShoutTime", query);
                            }
                        break;  
                        case "setQuizTime":
                            if(isAdmin(fromNick))
                            {
                              // Muda o tempo entre respostas do quiz
                              changeTime(_this, channel, "setQuizTime", query);
                            }
                        break; 
                        case "setQuizLimit":
                            if(isAdmin(fromNick))
                            {
                              // Muda o limite do quiz
                              changeTime(_this, channel, "setQuizLimit", query);
                            }
                        break;   
                        case "setmode":
                            if(isAdmin(fromNick))
                            {
                              // Atualiza o estalo do bot
                              mudarModo(query);
                              channel.msg("Estado atualizado.");
                            }
                        break;  
                        case "addToBlacklist":
                            if(isAdmin(fromNick))
                            {
                              // Adiciona uma palavra nova à blacklist
                              if(blackList.indexOf(query) === -1)
                              { blackList.push(query); saveToFile(blackList, "db/blacklist.txt");  channel.pvt(query+" - Item adicionado", fromNick);
                              } else { channel.pvt(query+" - Este item já existe", fromNick); }
                            }
                        break;     
                        case "addToOwner":
                            if(isAdmin(fromNick))
                            {
                              // Adiciona uma palavra nova ao owner
                              if(owner.indexOf(query) === -1)
                              { owner.push(query); saveToFile(owner, "db/owner.txt"); channel.pvt(query+" - Item adicionado", fromNick); console.log(owner);
                              } else { channel.pvt(query+" - Este item já existe", fromNick); }
                            }
                        break; 
                        case "addToNicksEntra":
                            if(isAdmin(fromNick))
                            {
                              // Adiciona uma palavra nova à blacklist
                              if(nicksStatus.indexOf(query) === -1)
                              { nicksStatus.push(query); saveToFile(nicksStatus, "db/nicksstatus.txt");  channel.pvt(query+" - Item adicionado", fromNick);
                              } else { channel.pvt(query+" - Este item já existe", fromNick); }
                            }
                        break; 
                        case "show":
                            if(isAdmin(fromNick))
                            {
                              // Mostra os dados
                              switch(query) {
                                case "blackList":
                                   query = blackList;
                                break;
                                case "owner":
                                   query = owner;
                                break;
                                case "nickstatus":
                                   query = nicksStatus;
                                break;
                                default:
                                  query = "";
                              }
                              printObject(query, _this, channel, fromNick);
                            }
                        break; 
                        case "removeBlacklist":
                            if(isAdmin(fromNick))
                            {
                              // Remove um item da blacklist
                              removeObject(blackList, query, _this, channel, fromNick, "db/blacklist.txt");
                            }
                        break; 
                        case "removeOwner":
                            if(isAdmin(fromNick))
                            {
                              // Remove um item da blacklist
                              removeObject(owner, query,  _this, channel, fromNick, "db/owner.txt");
                            }
                        break; 
                        case "removeNickstatus":
                            if(isAdmin(fromNick))
                            {
                            // Remove um item da blacklist
                            removeObject(nicksStatus, query, _this, channel, fromNick, "db/nicksstatus.txt");
                            }
                        break; 
                        case "temperatura":
                            startTemperatura(_this, channel, smsCmd, query, fromNick);
                        break;
                        case "debug":
                            if(isAdmin(fromNick))
                            {
                              

                            }
                        break;    

                      default:
                        // Nada em Default
                    }
                    
                } else {

                    // Manda as mensagens todas para lowercase e os nicks
                    var string = smsNick.toLowerCase();
                    var substring = myNick.toLowerCase();

                    if(modoAtual == 2)
                    {
                        CheckRespostaQuiz(_this, channel, smsNick, fromNick);
                    
                    } else {

                        // Verifica se identificaram o nome do bot em algum lado
                        if(string.indexOf(substring) !== -1 && modoAtual != 3 && modoAtual != 2)
                        {
                            startResposta(fromNick, channel);

                        } else {

                            switch(smsCmd) {
                                case "temperatura":
                                  startTemperatura(_this, channel, smsCmd, query, fromNick);
                                break;
                                case "XXX":
                                    // startTemperatura(_this, channel, smsCmd, query, fromNick);
                                break;     
                                case "XXX":
                                    // startTemperatura(_this, channel, smsCmd, query, fromNick);
                                break;                       
                              default:
                                // Nada em Default
                            }

                        }

                    }

                }

                // Console log das mensagens
                console.log('message from: '+event.nick, 'to: '+params[0], params[1]);

            });
        });
    });
