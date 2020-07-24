
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
    var query = 'SELECT DISTINCT [Group] FROM dbo.[Group] g INNER JOIN dbo.WishList wl ON g.[Group] = wl.UserGroup INNER JOIN dbo.UserProfile up ON wl.UserID = up.ID WHERE up.Email = \'' + req.params.email + '\'';
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
    Ex: http://localhost:8081/UserData/
*/
app.get('/UserData/:email', function (req, res) {
    var query = 'SELECT Name, Password FROM dbo.UserProfile WHERE Email = \'' + req.params.email + '\'';
    executeQuery (res, query);
})


/*
    Select query on the Relationship_View view (with different name for security) for profile data queries
    Ex: http://localhost:8081/relate/
*/
app.get('/relate/:email/:group', function (req, res) {
    var query = 'SELECT Related, Relationship FROM dbo.Relationship_View WHERE Email = \'' + req.params.email + '\' AND [Group] = ' + req.params.group;
    executeQuery (res, query);
})


/*
    Select query on the WishList table
    Ex: http://localhost:8081/mywl/
*/
app.get('/mywl/:email/:group', function (req, res) {
    var query = 'SELECT Name, Item FROM dbo.WishList wl INNER JOIN dbo.UserProfile up ON wl.UserID = up.ID WHERE Email = \'' + req.params.email + '\' AND UserGroup = ' + req.params.group;
    executeQuery (res, query);
})





// app.put('/UserUpdate/:email', function (req, res, next) {
//     sql.connect(sqlConfig, function() {
//         var request = new sql.Request();
//         var stringRequest = 'UPDATE dbo.UserProfile SET Name = 1234 WHERE Email = \'cmdail@earthlink.net\'';
//         request.query(stringRequest, function(err, recordset) {
//             if(err) console.log(err);
//             res.end(JSON.stringify(recordset)); // Result in JSON format
//         });
//     });
// })

// app.put("/api/user/:id", function(req , res, next){
//     // req.body is the body of the request
//     // req.query is the query parameters in the URL ( like ?firstname=1 )
//     var query = "UPDATE TestTable SET firstname= " + req.body.firstname  +  "   WHERE Id= " + req.params.id;
//     executeQuery (res, query);
// });






// function getEmployeeFromRec(req) {
//     const employee = {
//       first_name: req.body.first_name,
//       last_name: req.body.last_name,
//       email: req.body.email,
//       phone_number: req.body.phone_number,
//       hire_date: req.body.hire_date,
//       job_id: req.body.job_id,
//       salary: req.body.salary,
//       commission_pct: req.body.commission_pct,
//       manager_id: req.body.manager_id,
//       department_id: req.body.department_id
//     };
   
//     return employee;
// }

// async function post(req, res, next) {
//     try {
//       let employee = getEmployeeFromRec(req);
   
//       employee = await employees.create(employee);
   
//       res.status(201).json(employee);
//     } catch (err) {
//       next(err);
//     }
// }

// async function put(req, res, next) {
//   try {
//     let employee = getEmployeeFromRec(req);
 
//     employee.employee_id = parseInt(req.params.id, 10);
 
//     employee = await employees.update(employee);
 
//     if (employee !== null) {
//       res.status(200).json(employee);
//     } else {
//       res.status(404).end();
//     }
//   } catch (err) {
//     next(err);
//   }
// }
 
// module.exports.put = put;