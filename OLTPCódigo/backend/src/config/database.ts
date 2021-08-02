export const database = new (require('rest-mssql-nodejs'))({
    server: 'localhost',
    user: 'admin',
    password: 'admin',
    database: 'OLTP',
});


module.exports = 
{
    database
}
