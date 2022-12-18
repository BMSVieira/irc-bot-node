
// Owners do Bot 
const frases = [
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
    },
    {
      frase: "Dizem que é ofensivo falar de boca cheia {nick}. A mim ofende-me mais que fales de cabeça vazia!"
    },
    {
      frase: "{nick} as pessoas são perfeitas como o vinho! Ficam melhor com a rolha na boca!"
    },
    {
      frase: "{nick} és fish. Pareces um peixe espada: chato e comprido."
    },
    {
      frase: "{nick} as cobras trocam de pele, mas as que conheço trocam de roupa!"
    },
    {
      frase: "Preocupo-me mais com a previsão do tempo, do que com a tua opinião {nick}."
    },
    {
      frase: "Quem ri por último é porque não entendeu a piada! {nick}"
    },
    {
      frase: "O único exercício que faço é correr atrás de dinheiro! {nick}"
    },
    {
      frase: "Desistir é para os fracos {nick}! Faz como eu, nem tentes!"
    },
    {
      frase: "Se a tua vida estiver amarga {nick}, mexe que o açúcar acumula no fundo!"
    },
    {
      frase: "Não me mandes bocas {nick}, manda-me antes dinheiro!"
    },
    {
      frase: "Calma {nick}, tudo passa! Pode passar-te por cima, mas passa!"
    },
    {
      frase: "Fiz um teste mesmo agora! Um teste do stress. E adivinha {nick}? Deu positivo!"
    },
    {
      frase: "Nunca desistas dos teus sonhos {nick}! Continua a dormir!"
    },
    {
      frase: "Podes confiar em mim todos os teus segredos {nick}. É que eu nem os ouço!"
    },
    {
      frase: "Acabei de ver a pessoa mais inteligente do mundo {nick}! Olhei-me ao espelho!"
    },
    {
      frase: "{nick} antigamente era arrogante! Felizmente agora sou perfeita!"
    }
];

module.exports = frases