
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
    },
    {
      pergunta: "O sushi é um prato original de qual país?",
      resposta: "Japão"
    },
    {
      pergunta: "Qual é o animal que aparece no logotipo da Ferrari?",
      resposta: "Cavalo"
    },
    {
      pergunta: "Qual é o nome da empresa de tecnologia que criou o iPhone?",
      resposta: "Apple"
    },
    {
      pergunta: "Qual é o nome do inventor do telefone?",
      resposta: "Alexander Graham Bell"
    },
    {
      pergunta: "O vinho é feito com qual fruta?",
      resposta: "Uva"
    },
    {
      pergunta: "Segundo a lenda, quantas vidas um gato teria?",
      resposta: "7"
    },
    {
      pergunta: "Quantos dias tem um ano bissexto?",
      resposta: "366"
    },
    {
      pergunta: "Qual é a cor da caixa-preta do avião?",
      resposta: "Laranja"
    },
    {
      pergunta: "Qual evento histórico aconteceu entre os anos de 1914 e 1918?",
      resposta: "Primeira Guerra Mundial"
    },
    {
      pergunta: "A queda do muro de Berlim, em 1989, marcou o fim de qual conflito?",
      resposta: "Guerra Fria"
    },
    {
      pergunta: "Qual país foi o pioneiro na Revolução Industrial?",
      resposta: "Inglaterra"
    },
    {
      pergunta: "Qual rei ou rainha ocupou por mais tempo o trono do Reino Unido?",
      resposta: "Rainha Elizabeth II"
    },
    {
      pergunta: "Em qual continente aconteceu a pandemia da chamada Peste Negra?",
      resposta: "Europa"
    },
    {
      pergunta: "Qual foi o famoso navio que naufragou em sua viagem inaugural, em 1912?",
      resposta: "Titanic"
    },
    {
      pergunta: "A qual país europeu a Rússia declarou guerra em 2022?",
      resposta: "Ucrânia"
    },
    {
      pergunta: "Quantos anos tem um século?",
      resposta: "100"
    },
    {
      pergunta: "Entre quais países ocorreu a Guerra Fria?",
      resposta: "Estados Unidos e União Soviética"
    },
    {
      pergunta: "Qual é século em que vivemos atualmente? (Resposta em numeração Romana)",
      resposta: "XXI"
    },
    {
      pergunta: "Quem veio para o Brasil no ano de 1808?",
      resposta: "Família Real Portuguesa"
    },
    {
      pergunta: "Qual é o planeta mais próximo do Sol?",
      resposta: "Mercúrio"
    },
    {
      pergunta: "Qual é o animal mais alto do mundo?",
      resposta: "Girafa"
    },
    {
      pergunta: "Qual é a única parte do corpo humano que continua do mesmo tamanho desde o nascimento?",
      resposta: "Olhos"
    },
    {
      pergunta: "Como é chamado o filhote do sapo?",
      resposta: "Girino"
    },
    {
      pergunta: "Qual é o nome do satélite natural da Terra?",
      resposta: "Lua"
    },
    {
      pergunta: "Os morcegos pertencem a qual classe animal?",
      resposta: "Mamíferos"
    },
    {
      pergunta: "Qual é o nome da galáxia onde a Terra se encontra?",
      resposta: "Via Láctea"
    },
    {
      pergunta: "Qual animal se transforma em borboleta?",
      resposta: "Lagarta"
    },
    {
      pergunta: "Como é chamada a água em estado sólido?",
      resposta: "Gelo"
    },
    {
      pergunta: "Qual é a moeda oficial da Espanha?",
      resposta: "Euro"
    },
    {
      pergunta: "Qual é o continente que conta com o maior número de países?",
      resposta: "Africa"
    },
    {
      pergunta: "Qual país é conhecido como o 'mais fechado do mundo'?",
      resposta: "Coreia do Norte"
    },
    {
      pergunta: "Qual é o país mais populoso do mundo?",
      resposta: "China"
    },
    {
      pergunta: "Qual é o monumento mais famoso de Paris?",
      resposta: "Torre Eiffel"
    },
    {
      pergunta: "No filme “Procurando Nemo”, qual é a espécie de peixe do Nemo?",
      resposta: "Peixe-palhaço"
    },
    {
      pergunta: "Qual é o nome do instrumento musical de cordas tocado com um arco?",
      resposta: "Violino"
    },
    {
      pergunta: "Quantos anéis compõem o símbolo dos Jogos Olímpicos?",
      resposta: "5"
    },
    {
      pergunta: "Quantos quilômetros são percorridos em uma maratona?",
      resposta: "42"
    },
    {
      pergunta: "Qual é a cor das famosas cabines telefônicas de Londres?",
      resposta: "Vermelho"
    }
];

module.exports = quiz