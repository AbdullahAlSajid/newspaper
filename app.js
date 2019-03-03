//Declaration
var express = require('express');
var login = require('./controllers/login');
var register = require('./controllers/register');
var logout = require('./controllers/logout');
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

//Routes
app.get('/',(req,res)=>res.render('website/index'));
app.get('/portal',(req,res)=>res.render('portal/index'));


//Server Startup
app.listen(4000,function(){
    console.log('server started at 4000');
})