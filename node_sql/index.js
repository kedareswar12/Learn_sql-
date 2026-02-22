const mysql = require("mysql2");

const connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "Kedareswar12@",
  database: "zara",
});

connection.connect((err) => {
  if (err) {
    console.error("Connection failed:", err.message);
    return;
  }
  console.log("Connected to MySQL!");
});

connection.query("SELECT NOW()", (err, results) => {
  if (err) throw err;
  console.log("Current Time:", results[0]);

});

connection.end();