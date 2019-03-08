//Declaration
var express = require('express');
var login = require('./controllers/login');
var register = require('./controllers/register');
var logout = require('./controllers/logout');
//var editor_user  = require('./controllers/editor/editor_user');
var home = require('./controllers/home');
var bodyParser = require('body-parser');
var exSession = require('express-session');
var cookieParser = require('cookie-parser');
var app = express();

//Configuration
app.set('view engine','ejs');

//Middlewares
app.use(bodyParser.urlencoded({extended: false}));
app.use(exSession({secret: 'my top secret',saveUninitialized: true, resave: false}));
app.use(cookieParser());
app.use(express.static('./public'));
//app.use(express.static(__dirname + '/public'))

app.use('/login', login);
app.use('/register',register);
app.use('/home',home);
app.use('/logout',logout);
//app.use('/editor/users',editor_user);

//Routes
app.get('/',(req,res)=>res.render('website/index'));
app.get('/portal',(req,res)=>res.render('portal/index'));


//Server Startup
app.listen(3000,function(){
    console.log('server started at 4000');
});

