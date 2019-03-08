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
                id : req.session.uid,
                name: req.session.un,
                info: req.session.type,
                uList: results
            };
            res.render('portal/editor_pages/user', data);
        });
    }else{
        res.redirect('/login');
    }
});

router.get('/edit/:id', function(req, res){
    if(req.session.type == 1){
        userModel.get(req.params.id, function(result){
            var data = {
                id : req.session.uid,
                name: req.session.un,
                info: req.session.type,
                user: result
            };
            if(result != ""){
                res.render('portal/editor_pages/user_edit', data);
            }else{
                res.redirect('/home/user');
            }
        });
    }else{
        res.redirect('/login');
    }
});

router.post("/edit/:id", function(req, res){
    if(req.session.type == 1){
        var user = {
            id: req.params.id,
            name: req.body.name,
            email: req.body.email
        };
    
        userModel.update(user, function(status){
    
            if(status){
                res.redirect('/home/user');
            }else{
                res.redirect('/home/edit:'+req.params.id);
            }
        });
    }else{
        res.redirect('/login');
    }
});

router.post("/approve/:id", function(req, res){
    if(req.session.type == 1){
        var user = {
            id: req.params.id,
        };
    
        userModel.approve(user, function(status){
    
            if(status){
                res.redirect('/home/user');
            }
        });
    }else{
        res.redirect('/login');
    }
});

router.get('/delete/:id', function(req, res){
    if(req.session.type == 1){
        userModel.get(req.params.id, function(result){

            if(result != ""){
                res.render('home/delete', result);
            }else{
                res.redirect('/home/user');
            }
        });
    }else{
        res.redirect('/login');
    }
	
});

router.post("/delete/:id", function(req, res){
    if(req.session.type == 1){
        var user = {
            id: req.params.id,
        };
    
        userModel.delete(user, function(status){
    
            if(status){
                res.redirect('/home/user');
            }else{
                res.redirect('/home/delete:'+req.params.id);
            }
        }); 
    }else{
        res.redirect('/login');
    }
});

module.exports = router;

