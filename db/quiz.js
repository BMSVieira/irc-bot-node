
// Quiz
const quiz = [
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

module.exports = quiz