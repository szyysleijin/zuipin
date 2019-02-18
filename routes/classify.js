const express = require("express");  //引入express
 
const pool = require("./../pool.js");   // 引入Mysql链接模块

const router = express.Router();  //创建空理由




router.get('/',(req,res)=>{
	var obj={
		// 铁观音
		tiegy:[
			{name:'乌龙茶'},
			{title:'安溪铁观音',img_url:'http://127.0.0.1:729/img/Home/tieguanying.jpg',msg:'铁观音'},
			{title:'武夷岩茶',img_url:'http://127.0.0.1:729/img/Home/yancha.jpg',msg:'岩茶'},
			{title:'广东单丛',img_url:'http://127.0.0.1:729/img/Home/dancong.jpg',msg:'单丛'},
			{title:'台湾乌龙茶',img_url:'http://127.0.0.1:729/img/Home/wulongcha.jpg',msg:'乌龙茶'},
		],
		// 红茶
		hongcha:[
			{name:'红茶'},
			{title:'金骏眉',img_url:'http://127.0.0.1:729/img/Home/jinjunmei.jpg',msg:'金骏眉'},
			{title:'正山小种',img_url:'http://127.0.0.1:729/img/Home/xiaozhong.jpg',msg:'小种'},
			{title:'广西红茶',img_url:'http://127.0.0.1:729/img/Home/hongcha.png',msg:'红茶'},
		],
		// 绿茶
		lvcha:[
			{name:'绿茶'},
			{title:'龙井',img_url:'http://127.0.0.1:729/img/Home/longjing.jpg',msg:'龙井'},
			{title:'四川绿茶',img_url:'http://127.0.0.1:729/img/Home/lvcha.jpg',msg:'绿茶'},
			{title:'安吉白茶',img_url:'http://127.0.0.1:729/img/Home/baicha.jpg',msg:'白茶'}
		]
	}
		res.send(obj)
})








module.exports = router;  //导出路由














