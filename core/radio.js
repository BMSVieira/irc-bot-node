
// Config Variables
var nowPlaying = "";

/*
    Verifica qual é a musica que está a tocar agora e atualiza
    ###########################################################################
*/
function atualizaMusicaAtual(message, from, client) {
   
    if(from == "RadioPortugal") // Só ativa se for RadioPortugal
    {
      const prefix = "Tocando agora,";
    
      if (message.startsWith(prefix)) {
        const semicolonIndex = message.indexOf(',');
        
        if (semicolonIndex !== -1) {
          nowPlaying = message.substring(semicolonIndex + 1).trim();
          return true;
        }
      }
      return null; // se não encontrar nada, retorna null
    }

  }

/*
    Verifica se alguma pessoa curtiu
    ###########################################################################
*/
function checkCurtir(string, from, client, axios, channel) {

  const regex = /\bcurtir+\b/i;
  if (regex.test(string) && nowPlaying != "") {
console.log("ola");
    const url = 'https://mooviejs.com/bot/ost_wbs/';
    const apiKey = 'a1086415c6ae4aa5b526ce940b8e8284';
    
    const data = {
      query: 'curtir',
      condition: 'add',
      parameters: {
        user_curtiu: from,
        musica_curtida: nowPlaying,
        sala: channel
      }
    };
    
    const headers = {
      'Content-Type': 'application/json',
      'apiKey': apiKey
    };
    
    axios.post(url, data, { headers })
      .then((response) => {
         // console.log('Response:', response.data);
      })
      .catch((error) => {
        console.error('Error:', error);
      });

  } else { }
}

// Faz o export dos modulos
module.exports = { atualizaMusicaAtual, checkCurtir};
