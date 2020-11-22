const mysql = require('mysql2');

const connection = mysql.createConnection({
    host: process.env.DB_HOST,
    username: process.env.DB_USER,
    password: process.env.DB_PASS,
    database: 'employees_db'
});

connection.connect(function (err) {
    if (err) throw err;
});

