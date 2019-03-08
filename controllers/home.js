var express = require('express');
var userModel = require.main.require('./model/user_model');
var router = express.Router();

router.get('/',function(req,res){
    if(req.session.uid != null){
        //  console.log(req.session.uid);
        //  var sql = "select * from user where id ='" + req.session.uid+ "'";
        //  db.getResults(sql,function(results){
            var data = {
                name: req.session.un,
                info: req.session.type
            };
            res.render('portal/index',data);
        //});
    }else{
        res.redirect('/login');
    }
});

router.get('/user',function(req,res){
    if(req.session.uid != null){
        userModel.getAll(function(results){
            var data = {
                name: req.session.un,
                info: req.session.type,
                ulist: results
            };
        });
        res.render('portal/editor_pages/user',data)
    }else{
        res.redirect('/login');
    }
});

module.exports = router;

