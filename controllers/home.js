var express = require('express');
var db = require.main.require('./model/db');
var router = express.Router();

router.get('/',function(req,res){
    if(req.session.uid != null){
        console.log(req.session.uid);
        var sql = "select * from user where id ='" + req.session.uid+ "'";
        db.getResults(sql,function(results){
            var data = {
                name: req.session.un,
                info: results[0]
            };
            res.render('portal/index',data);
        });
    }else{
        res.redirect('/login');
    }
});

module.exports = router;

