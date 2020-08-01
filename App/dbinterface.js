
// $ node server.js starts the service!

/*
    Server initialization
*/
var express = require('express'); // Web Framework
var app = express();
var sql = require('mssql'); // MS Sql Server client


/*
    Connection parameters
*/
var sqlConfig = {
    user: 'webAPI',
    password: 'webAPI',
    server: 'localhost',
    database: 'GiftExchange'
}


/*
    Start the service and listen on http://localhost:8081/
*/
var server = app.listen(8081, function () {
    var host = server.address().address
    var port = server.address().port

    console.log("app listening at http://%s:%s", host, port)
});


/*
    Connect to the database and execute the given query
*/
var executeQuery = function(res, query) {
    sql.connect(sqlConfig, function() {
        var request = new sql.Request();
        request.query(query, function(err, recordset) {
            if(err) console.log(err);
            res.end(JSON.stringify(recordset)); // Result in JSON format
        });
    });
}


/*
    Select query on the Group table
    Ex: http://localhost:8081/group/
*/
app.get('/group/:email', function (req, res) {
    var query = 'SELECT DISTINCT [Group] FROM dbo.UserGroups ug INNER JOIN dbo.UserProfile up ON ug.UserID = up.ID WHERE up.Email = \'' + req.params.email + '\'';
    executeQuery (res, query);
})


/*
    Select query on the Relationships table
    Ex: http://localhost:8081/relationships/
*/
app.get('/relationships', function (req, res) {
    var query = 'SELECT DISTINCT Relationship FROM dbo.Relationships';
    executeQuery (res, query);
})   


/*
    Select query on the UserProfile table (with different name for security) for login purposes
    Ex: http://localhost:8081/UserLogin/
*/
app.get('/UserLogin/:email/:pwd', function (req, res) {
    var query = 'SELECT 1 FROM dbo.UserProfile WHERE Email = \'' + req.params.email + '\' AND Password = \'' + req.params.pwd + '\'';
    executeQuery (res, query);
})


/*
    Select query on the UserProfile table (with different name for security) for profile data queries
    Ex: http://localhost:8081/UserData/rldail@earthlink.net
*/
app.get('/UserData/:email', function (req, res) {
    var query = 'SELECT Name, Password FROM dbo.UserProfile WHERE Email = \'' + req.params.email + '\'';
    executeQuery (res, query);
})


/*
    Select query on the Relationship_View view (with different name for security) for profile data queries
    Ex: http://localhost:8081/relate/rldail@earthlink.net/'BJC%20Christmas'
*/
app.get('/relate/:email/:group', function (req, res) {
    var query = 'SELECT Related, Relationship FROM dbo.Relationship_View WHERE Email = \'' + req.params.email + '\' AND [Group] = ' + req.params.group;
    executeQuery (res, query);
})


/*
    Select query on the WishList table
    Ex: http://localhost:8081/mywl/rldail@earthlink.net/'BJC%20Christmas'
*/
app.get('/mywl/:email/:group', function (req, res) {
    var query = 'SELECT Name, Item FROM dbo.WishList wl INNER JOIN dbo.UserProfile up ON wl.UserID = up.ID WHERE Email = \'' + req.params.email + '\' AND UserGroup = ' + req.params.group;
    executeQuery (res, query);
})


/*
    Update query on the UserProfile table
    Ex: http://localhost:8081/UserUpdate/rldail@earthlink.net/Randy%20Dailing/Randy/test123
*/
app.put('/UserUpdate/:email/:name/:pwd', function (req, res) {
    var query = 'UPDATE dbo.UserProfile SET Name = \'' + req.params.name + '\', Password = \'' + req.params.pwd + '\'  WHERE Email = \'' + req.params.email + '\'';
    executeQuery (res, query);
})


/*
    Delete the user's wishlist item for the group
    Ex: http://localhost:8081/wlUpdate/rldail@earthlink.net/'BJC%20Christmas'
*/
app.post('/wlDelete/:email/:group/:item', function (req, res) {
    var query = 'DELETE FROM dbo.WishList FROM dbo.WishList wl INNER JOIN dbo.UserProfile u ON wl.UserID = u.ID INNER JOIN dbo.[Group] g ON wl.UserGroup = g.[Group] WHERE Email = \'' + req.params.email + '\' AND [Group] = ' + req.params.group + ' AND Item = \'' + req.params.item + '\'';
    executeQuery (res, query);
})


/*
    Insert new values into the user's wishlist items for the group
    Ex: http://localhost:8081/wlUpdate/rldail@earthlink.net/'BJC%20Christmas'/'item'
*/
app.post('/wlInsert/:email/:group/:item', function (req, res) {
    var query = 'INSERT INTO dbo.WishList (UserID, UserGroup, Item, Purchased) SELECT u.ID, ' + req.params.group + ', ' + req.params.item + ', 0 FROM dbo.UserProfile AS u WHERE Email = \'' + req.params.email + '\'';
    executeQuery (res, query);
})

