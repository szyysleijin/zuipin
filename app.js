const express = require("express");

const bodyParser = require("body-parser") //导入中间件

const Home = require("./routes/Home.js"); //引入路由
const classify = require("./routes/classify.js");
const wx = require("./routes/WX.js");




const cors = require("cors");

//创建web服务器
var app = express();
app.listen(0729);

app.use(cors({
	origin: ["http://localhost:8080", "http://127.0.0.1:8080"]
}))

app.use(bodyParser.json())						
app.use(bodyParser.urlencoded({		
	extended: false
}));

/*app.use(bodyParser.urlencoded(		//使用中间件
	{extended:false;}
));*/


app.use(express.static('public')); //托管静态文件

app.use("/home", Home); //挂载路由044444444   
app.use("/classify", classify)
app.use('/wx', wx)
