const express = require("express");  //引入express
 
const pool = require("./../pool.js");   // 引入Mysql链接模块

const router = express.Router();  //创建空理由

//   list
// router.get('/',(req,res)=>{
// 	var msg = decodeURIComponent(req.query.msg);
// 	console.log(msg)
// 	var sql = `select * from brand where title like "%${msg}%"`;
// 	pool.query(sql,msg,(err,result)=>{
// 		if(err) throw err;
// 		console.log(result)
// 		res.send(result)
// 	})
// })




// router.get("/",(req,res)=>{
//  //1:获取参数
//  var msg = decodeURIComponent(req.query.msg);
//  var pno = req.query.pno;
//  var pageSize = req.query.pageSize;
//  //2:设置默认值 1 7
//  if(!pno){pno = 1}
//  if(!pageSize){pageSize=4}
//  //3:创建正则表达式验证用户输入验证
//  var reg = /^[0-9]{1,3}$/;
//  //4:如果错出停止函数运行
//  if(!reg.test(pno)){
//     res.send({code:-1,msg:"页编格式不正确"});
//     return;
//  }
//  if(!reg.test(pageSize)){
//     res.send({code:-2,msg:"页大小格式不正确"});
//     return;
//  }
//  var sql=`select * from brand where title like "%${msg}%"  limit ?,?`;
// 
//  var offset=parseInt((pno-1)*pageSize)
// 		 
// 		 pno=parseInt(pno)
// 		 pageSize=parseInt(pageSize)
//  pool.query(sql,[offset,pageSize],(err,result)=>{
//    if(err)throw err;
//      res.send(result);
//  })
//  //7:返回结果
// }); 


router.get("/",(req,res)=>{
 //1:获取参数
	var msg = decodeURIComponent(req.query.msg);
 var pno = req.query.pno;  //页码
 var pageSize = req.query.pageSize;//页大小
 //2:设置默认值 1 7
 if(!pno){pno = 1}
 if(!pageSize){pageSize=4}
 //3:创建正则表达式验证用户输入验证
 var reg = /^[0-9]{1,3}$/;
 //4:如果错出停止函数运行
 if(!reg.test(pno)){
    res.send({code:-1,msg:"页编格式不正确"});
    return;
 }
 if(!reg.test(pageSize)){
    res.send({code:-2,msg:"页大小格式不正确"});
    return;
 }
 var progress = 0;
 var obj = {code:1};

 //5:创建sql1 查询总记录数   严格区分大小写
 var sql = `select * from brand where title like "%${msg}%"`;
 
 pool.query(sql,(err,result)=>{
   if(err)throw err;
	
   var pageCount = Math.ceil(result.length/pageSize);
   progress+=50;
   obj.pageCount = pageCount;
	 console.log(obj)
   if(progress==100){
     res.send(obj);
   }
 });
 //6:创建sql2 查询当前页内容 严格区分大小写
 var sql=`select * from brand where title like "%${msg}%"  limit ?,?`;
 var offset = parseInt((pno-1)*pageSize);
     pageSize = parseInt(pageSize);
 pool.query(sql,[offset,pageSize],(err,result)=>{
   if(err)throw err;
   progress+=50;
   obj.data=result;
	 
   if(progress==100){
     res.send(obj);
   }
 })
});






















//销量排序
router.get('/sales',(req,res)=>{
	var msg = decodeURIComponent(req.query.msg)
	var sql = `select * from brand where title like "%${msg}%" order by buy desc`;
	pool.query(sql,(err,result)=>{
		if(err) throw err;
		res.send(result)
	})
})

// 价格排序

router.get('/price',(req,res)=>{
	var msg = decodeURIComponent(req.query.msg)
	var sql = `select * from brand where title like "%${msg}%" order by price desc`;
	pool.query(sql,(err,result)=>{
		if(err) throw err;
		res.send(result)
	})
})

router.get('/getitem',(req,res)=>{
	var cid=parseInt(req.query.cid);
	var sql='select * from brand where cid=?';
	pool.query(sql,cid,(err,result)=>{
		if(err) throw err;
		res.send(result)
	})
})

//随机查询

router.get('/math',(req,res)=>{
	var sql='SELECT * FROM brand order by rand() LIMIT 4';
	pool.query(sql,(err,result)=>{
		if(err)throw err;
		res.send(result);
	})
})

router.get('/mathTow',(req,res)=>{
	var sql='SELECT * FROM brand order by rand() LIMIT 6';
	pool.query(sql,(err,result)=>{
		if(err)throw err;
		res.send(result);
	})
})

router.post('/login',function(req,res){
	var uname=req.body.uname;
	var upwd=req.body.upwd;
	console.log(uname,upwd)
	var sql = 'select * from zp_login where uname=? and upwd=?';
	pool.query(sql,[uname,upwd],function(err,result){
		if(err) throw err;
		console.log(result)
		if(result.length!=0){
			res.send(result)
		}else{
			res.send('0')
		}
	})
})

router.post('/register',(req,res)=>{
	var uname=req.body.uname;
	var upwd=req.body.upwd;
	if(!uname){
		res.send('用户名不能为空');
		return;
	}
	if(!upwd){
		res.send('密码不能为空');
		return;
	}
	
	var sql='insert into zp_login values(null,?,?)';
	// var sql='select * from dl where username=?'
	pool.query(sql,[uname,upwd],(err,result)=>{
		console.log(result)
		if(err) throw err;
		
		if(result.affectedRows!=0){
			res.send("1");		//添加成功 返回1
		}else{
			res.send('0');		
		}
	})
})


router.get('/shopcar',(req,res)=>{
	var obj=[
		{}
	]
})


//功能 :加入购物车
router.get("/addCart",(req,res)=>{
  var uid = req.query.uid;
  var pid = req.query.pid;
  var c = req.query.count;
  var sql  =" INSERT INTO `zp_shopcar`(`iid`, `user_id`, `product_id`, `count`, `is_checked`) VALUES (null,?,?,?,0)"
  pool.query(sql,[uid,pid,c],(err,result)=>{
       if(err)throw err;
       res.send({code:1,msg:"购物车添加成功"});
  });
})
//功能:查询购物详细信息
router.get("/getCarts",(req,res)=>{
  var uid = req.query.uid;
  var sql =" SELECT c.iid,c.user_id,c.count";
  sql +=" ,p.price,p.title,p.img";
  sql +=" FROM brand p,";
  sql +=" zp_shopcar c";
  sql +=" WHERE p.cid = c.product_id";
  sql +=" AND c.user_id = ?";
  uid = parseInt(uid);
  pool.query(sql,[uid],(err,result)=>{
   if(err)throw err;
   res.send({code:1,data:result});
  });
  //4:返回结果
})

//功能:更新购物数量
router.get("/updateCart",(req,res)=>{
   //1:参数 iid/count
   var iid = req.query.iid;
   var count = req.query.count;
   var sql = " UPDATE zp_shopcar";
   sql += " SET count = ? WHERE iid = ?";
   iid = parseInt(iid);
   count = parseInt(count);
   pool.query(sql,[count,iid],(err,result)=>{
        if(err)throw err;
        if(result.affectedRows > 0){
         res.send({code:1,msg:"数量修改成功"});
        }else{
         res.send({code:-1,msg:"数量修改失败"});
        }
   })
})


module.exports = router;  //导出路由