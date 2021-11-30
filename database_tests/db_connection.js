// Fichier de connection à la base de données MySQL
//@author Corentin GOETGHEBEUR

// importation du module msql
let mysql = require('mysql');


// connection
let connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'shw96ZWZS@',
    database: 'todoapp'
});

connection.connect(function(err) {
    if (err) {
      return console.error('error: ' + err.message);
    }
  
    console.log('Connected to the MySQL server.');
  });