var express = require('express');
var router = express.Router();
var mysql = require('mysql');
var db = require('../db-config.json');


var con = mysql.createConnection({
    host: db.host,
    user: db.user,
    password: db.password,
    database: db.database
  })


  router.post("/", function (req, res, next) {
    console.log("!!!!!!!!!!!!");
    console.log(req.body)
    if (req.session.user) {
      console.log('already login!');
    // TODO 이미 로그인 되어 있을 경우          
    
    } else {
      // 로그인이 되어 있지 않을 경우 (로그인동작)
      var userEmail = req.body.email;
      var userPassword = req.body.password;
      console.log("usr email, password : " +userEmail+ ", " + userPassword);
    
      var sql = "SELECT * FROM usr WHERE email = ?";
      con.query(sql, [userEmail], function (error, results) {
        if (error) throw error;  
        else {
          console.log("db password : " + results[0]);
          if(userPassword == results[0].password){
            req.session.user =
            {      
                email: userEmail,
                password: userPassword
            };
            console.log("!!!!!!!!!!!!!1");
            console.log(req.session.user);
            res.send('login!');
          }else {
            console.log("!!!!!!!!!!!!!!!2")
              res.json('incorrect password');
          }
        }
      });
    }
    });


    module.exports = router;