
// Config Variables
var mysql = require('mysql');
var db = require('../core/database');
var protected = require('../db/protected');

/*
    Função escrever o log
    ##############################################################################
*/
function log(log_type, description) {

    const con = mysql.createConnection({ 
        host: db.dbconfig[0]['host'],
        user: db.dbconfig[0]['user'],
        password: db.dbconfig[0]['password'],
        database: db.dbconfig[0]['database']
    });

    const sqlInsertQuery = "INSERT INTO bot_logs (log_type, description, date) VALUES (?, ?, NOW())";

    con.connect(function(err) {
        if (err) {
            console.error('Erro ao conectar a BD:', err);
            return;
        }
        con.query(sqlInsertQuery, [log_type, description], function(err, result) {
            if (err) {
                console.error('Erro ao executar query de insert:', err);
            } else {
            }
            con.end();
        });
      
    });
}

/*
    Fz o log de todos os que entram.
    ##############################################################################
*/
function log_entrada(nick, host, realname, server, servinfo) {

    if(!protected.logProtected.includes(nick))
    {
        const con = mysql.createConnection({ 
            host: db.dbconfig[0]['host'],
            user: db.dbconfig[0]['user'],
            password: db.dbconfig[0]['password'],
            database: db.dbconfig[0]['database']
        });
    
        const sqlInsertQuery = "INSERT INTO bot_entradas (nick, host, date) VALUES (?, ?, NOW())";
    
        con.connect(function(err) {
            if (err) {
                console.error('Erro ao conectar a BD:', err);
                return;
            }
            con.query(sqlInsertQuery, [nick, host], function(err, result) {
                if (err) {
                    console.error('Erro ao executar query de insert:', err);
                } else {
                }
                con.end();
            });
        });
    }
}

// Faz o export dos modulos
module.exports = {log, log_entrada};
