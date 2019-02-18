SET NAMES UTF8;
DROP DATABASE IF EXISTS zuipin;
CREATE DATABASE zuipin CHARSET=UTF8;
use zuipin;

create table brand(
	cid INT PRIMARY KEY AUTO_INCREMENT,
	img varchar(255),		
	title varchar(32),
  subtitle varchar(32),
	price DECIMAL(12,2),
  buy INT(8),
	imgswipe varchar(255)
);



insert into brand values(null,'pc1.jpg','醉品朴茶 2018年金骏眉 口碑好茶 皇冠100g','头采茶，蜜香浓郁，口感甘甜',138,788,'pc1-1.jpg,pc1-2.jpg,pc1-3.jpg,pc1-4.jpg');

insert into brand values(null,'pc2-1.jpg','醉品朴茶 2018年西湖龙井 核心产区正宗好茶 生态绿罐100g','香气持久，口感鲜甜',138,1287,'pc2-1.jpg,pc2-2.jpg,pc2-3.jpg,pc2-4.jpg');

insert into brand values(null,'pc3-1.jpg','醉品朴茶·本朴 2018年金骏眉 经典口粮茶 特级 JM1580-250（125g*2盒）','热销5年的明星茶礼',342,16778,'pc3-1.jpg,pc3-2.jpg,pc3-3.jpg,pc3-4.jpg');

insert into brand values(null,'pc4-1.jpg','醉品朴茶 2018年西湖龙井 口碑好茶 皇冠100g','传统炒青工艺，经典浓香',239,1999,'pc4-1.jpg,pc4-2.jpg,pc4-3.jpg,pc4-4.jpg');

insert into brand values(null,'pc5-1.jpg','醉品朴茶·良品严选 2018年金骏眉 旅行装 JM2060-50g','不加糖，不加色素，不加香精，不添加是我们的立场',239,1999,'pc5-1.jpg,pc5-2.jpg,pc5-3.jpg,pc5-4.jpg');
	
insert into brand values(null,'pc6-1.jpg','醉品朴茶·醇朴 2018年秋茶 安溪铁观音 经典口碑款 清香型 NGY0840-250g','秋茶抢鲜上市',180,16382,'pc6-1.jpg,pc6-2.jpg,pc6-3.jpg,pc6-4.jpg');

insert into brand values(null,'pc7-1.jpg','醉品朴茶 金骏眉 高性价比 自饮装 JM0800-250 醇朴','提升生活品质  从喝茶习惯开始',190,4437,'pc7-1.jpg,pc7-2.jpg,pc7-3.jpg,pc7-4.jpg');

insert into brand values(null,'pc8-1.jpg','醉品朴茶 2018年安溪铁观音 口碑好茶 皇冠100g','头采茶全芽制作，花香持久',89,419,'pc8-1.jpg,pc8-2.jpg,pc8-3.jpg,pc8-4.jpg');

insert into brand values(null,'pc9-1.jpg','醉品朴茶 地道好茶热销款 2018年金骏眉 红罐100g','头采茶全芽制作，花香持久',85,377,'pc9-1.jpg,pc9-2.jpg,pc9-3.jpg,pc9-4.jpg');

insert into brand values(null,'pc10-1.jpg','醉品朴茶 2018年安溪铁观音 GY0800-234g 清香型 一级 月享装','办公茶月享装',188,677,'pc9-1.jpg,pc9-2.jpg,pc9-3.jpg,pc9-4.jpg');
	
insert into brand values(null,'pc11-1.jpg','醉品朴茶 龙井 绿茶 浓香型 一级 醇朴 NLJ0888-180g 单盒','爱上龙井 只因那一杯茶的故事',149,4073,'pc11-1.jpg,pc11-2.jpg,pc11-3.jpg,pc11-4.jpg');
	



insert into brand values(null,'xg1-1.jpg','曦瓜 2018年 正山小种 源味 250g*2罐 一级 红茶','头春鲜叶制作 桂圆香',198,2413,'xg1-1.jpg,xg1-2.jpg,xg1-3.jpg,xg1-4.jpg');

insert into brand values(null,'xg2-1.jpg','曦瓜 武夷岩茶 大红袍 圆罐250g 中火 一级 乌龙茶 单罐','大分量口粮茶 醇香型',188,911,'xg2-1.jpg,xg2-2.jpg,xg2-3.jpg,xg2-4.jpg');

insert into brand values(null,'xg3-1.jpg','曦瓜 武夷岩茶 大红袍 茶礼240g 中火 特级 乌龙茶','花果香型 岩骨花香品质茶',298,898,'xg3-1.jpg,xg3-2.jpg,xg3-3.jpg,xg3-4.jpg');

insert into brand values(null,'xg4-1.jpg','曦瓜 2018年金骏眉  源味250g*2罐 一级  红茶','头春单芽制作 蜜香',398,469,'xg4-1.jpg,xg4-2.jpg,xg4-3.jpg,xg4-4.jpg');

insert into brand values(null,'xg5-1.jpg','曦瓜 武夷岩茶 大红袍 2018春茶 源味250g*2罐 中火 一级 乌龙茶','半岩产区 花果香型',298,763,'xg5-1.jpg,xg5-2.jpg,xg5-3.jpg,xg5-4.jpg');

insert into brand values(null,'xg6-1.jpg','曦瓜 武夷岩茶 水仙 2018春茶 250g 中火 特级 乌龙茶 单罐','浓香型 实惠口粮茶',198,392,'xg6-1.jpg,xg6-2.jpg,xg6-3.jpg,xg6-4.jpg');

insert into brand values(null,'xg7-1.jpg','曦瓜 武夷岩茶 岩茶王 96g 鉴行武夷 特级 礼盒','商务茶礼 送客户',580,200,'xg7-1.jpg,xg7-2.jpg,xg7-3.jpg,xg7-4.jpg');





insert into brand values(null,'jy1-1.jpg','集韵 武夷岩茶 大红袍 大师品质茶 2018年春茶 丹贵 中火 一级 80g','采自核心产区、高山自然生态区',125,370,'jy1-1.jpg,jy1-2.jpg,jy1-3.jpg,jy1-4.jpg');

insert into brand values(null,'jy2-1.jpg','集韵 武夷岩茶 大红袍  丹贵系列·和 中足火 一级 80g 单罐','库存告急，卖完售罄',500,409,'jy2-1.jpg,jy2-2.jpg,jy2-3.jpg,jy2-4.jpg');

insert into brand values(null,'jy3-1.jpg','【非遗大师王国兴亲制】集韵 武夷岩茶 大红袍  丹贵系列·醇 中足火 一级 80g 单罐','温性醇和 适合给父母长辈喝',700,230,'jy3-1.jpg,jy3-2.jpg,jy3-3.jpg,jy3-4.jpg');

insert into brand values(null,'jy4-1.jpg','集韵 正山小种 红茶 2018年春茶 丹贵系列 一级 90g 单盒','名匠制作，好喝更暖身',198,280,'jy4-1.jpg,jy4-2.jpg,jy4-3.jpg,jy4-4.jpg');

insert into brand values(null,'jy5-1.jpg','【非遗大师王国兴亲制】集韵 武夷岩茶 大红袍  丹贵系列·韵 中火 特级 80g 单罐','商务用茶 招待贵客',900,214,'jy5-1.jpg,jy5-2.jpg,jy5-3.jpg,jy5-4.jpg');

insert into brand values(null,'jy6-1.jpg','集韵丹贵 武夷岩茶 2018年春茶 丹贵 武夷大红袍 中低火 一级 96g','办公居家自饮',200,136,'jy6-1.jpg,jy6-2.jpg,jy6-3.jpg,jy6-4.jpg');

insert into brand values(null,'jy7-1.jpg','【非遗大师王国兴亲制】集韵 武夷岩茶 大红袍  丹贵系列·经典 中足火 特级 80g 单罐','收藏几年 茶叶转化更好喝',1200,140,'jy7-1.jpg,jy7-2.jpg,jy7-3.jpg,jy7-4.jpg');


insert into brand values(null,'df1-1.jpg','顶峰 西湖龙井 2018年雨前茶 绿茶 一级 50g 红罐单罐','雨前浓香，实惠之选',91,536,'df1-1.jpg,df1-2.jpg,df1-3.jpg,df1-4.jpg');

insert into brand values(null,'df2-1.jpg','顶峰 西湖龙井 2018年雨前茶 绿茶 一级250g 牛皮纸包茶','雨前口粮茶  西湖原产地',430,1016,'df2-1.jpg,df2-2.jpg,df2-3.jpg,df2-4.jpg');

insert into brand values(null,'df3-1.jpg','顶峰 2018年明前茶 绿茶 精品 50g 开化龙顶 单罐','雨前口粮茶  西湖原产地',111,212,'df3-1.jpg,df3-2.jpg,df3-3.jpg,df3-4.jpg');

insert into brand values(null,'df4-1.jpg','顶峰 安吉白茶 2018年明前茶 绿茶 特级50g 精选单罐','新鲜 甘甜',172,332,'df4-1.jpg,df4-2.jpg,df3-3.jpg,df4-4.jpg');

insert into brand values(null,'df5-1.jpg','顶峰 2018年明前茶 250g 开化龙顶牛皮纸包','招待、自饮茶',330,248,'df4-1.jpg,df4-2.jpg,df3-3.jpg,df4-4.jpg');

insert into brand values(null,'df6-1.jpg','顶峰 西湖龙井 2018年雨前茶 绿茶 二级 250g 牛皮纸包茶','办公自饮 鲜浓甘甜',558,303,'df4-1.jpg,df4-2.jpg,df3-3.jpg,df4-4.jpg');

insert into brand values(null,'df7-1.jpg','【G20峰会指定产品】顶峰 2018年明前茶 绿茶 特级 100g 西湖龙井 礼盒','收藏几年 茶叶转化更好喝',398,1068,'df4-1.jpg,df4-2.jpg,df3-3.jpg,df4-4.jpg');



insert into brand values(null,'bg1-1.jpg','八桂凌云 凌云白毫绿茶 神韵绿茶 2018年春茶 150g','办公家居 实惠自饮',38,400,'bg1-2.jpg,bg1-3.jpg,bg1-4.jpg,bg1-5.jpg');

insert into brand values(null,'bg2-1.jpg','八桂凌云 白毫红茶 金毫 150g  特级','家庭聚会 招待茶',225,779,'bg2-2.jpg,bg2-3.jpg,bg2-4.jpg,bg2-5.jpg');

insert into brand values(null,'bg3-1.jpg','【有机茶】八桂凌云 白毫绿茶 雾中缘凌螺春 120g 2018春茶','7年有机认证',218,434,'bg3-2.jpg,bg3-3.jpg,bg3-4.jpg,bg3-5.jpg');

insert into brand values(null,'bg4-1.jpg','八桂凌云 2018年凌云白毫绿茶 雾中缘神韵绿茶 120g 绿色礼盒','喝有机茶，健康品质生活',298,376,'bg4-2.jpg,bg4-3.jpg,bg4-4.jpg,bg4-5.jpg');

insert into brand values(null,'bg5-1.jpg','【有机茶】八桂凌云 白毫红茶 雾中缘金毫 180g   特级','只挑选 早春单芽',960,290,'bg5-2.jpg,bg5-3.jpg,bg5-4.jpg,bg5-5.jpg');

insert into brand values(null,'bg6-1.jpg','【有机茶】八桂凌云 白毫绿茶 神韵绿茶 120g 2018春茶','无农残 无污染',288,336,'bg6-2.jpg,bg6-3.jpg,bg6-4.jpg,bg6-5.jpg');



insert into brand values(null,'wm1-1.jpg','【第3批珍藏限量发售】魏荫铁观音 魏月德大师标杆代表作 十年珍品老魏道 250g','铁观音标杆代表作，招待贵宾茶',588,246,'wm1-2.jpg,wm1-3.jpg,wm1-4.jpg,wm1-5.jpg');

insert into brand values(null,'wm2-1.jpg','魏荫 安溪铁观音  乌龙茶 浓香型（熟香） 特级 一举成名 金焙笼 250g','传统竹焙笼轻火慢焙 综合清香浓香特点',475,293,'wm2-2.jpg,wm2-3.jpg,wm2-4.jpg,wm2-5.jpg');



insert into brand values(null,'dc1-1.jpg','【有机茶】天池乌岽山 凤凰单丛  乌龙茶 经典 特级 125g','SGS481项检测 出口欧盟标准有机茶 送长辈送父母',308,545,'dc1-2.jpg,dc1-3.jpg,dc1-4.jpg,dc1-5.jpg');

insert into brand values(null,'dc2-1.jpg','天池 凤凰单丛 乌龙茶 鸭屎香 特级 50g 单罐','兰花香型 1300多米高海拔品质款',598,257,'dc2-2.jpg,dc2-3.jpg,dc2-4.jpg,dc2-5.jpg');

insert into brand values(null,'dc3-1.jpg','贡茗春 凤凰单丛 2018春茶 乌龙茶 古韵 一级 150g 单盒','滋味浓厚，日常招待实惠款',160,212,'dc3-2.jpg,dc3-3.jpg,dc3-4.jpg,dc3-5.jpg');

insert into brand values(null,'dc4-1.jpg','贡茗春 凤凰单丛 2018春茶 乌龙茶 乌岽银花香 一级 128g 单罐','传统香型，全国竞赛银奖',342,853,'dc4-2.jpg,dc4-3.jpg,dc4-4.jpg,dc4-5.jpg');



create table zp_login(
	id INT PRIMARY KEY AUTO_INCREMENT,
	uname varchar(32),
	upwd varchar(32)
	
);
insert into zp_login values(null,'leilei','123456');



CREATE TABLE `zp_shopcar` (
  `iid` INT PRIMARY KEY AUTO_INCREMENT ,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `is_checked` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `zp_shopcar` VALUES(null, 1, 1, 1, 0);
INSERT INTO `zp_shopcar` VALUES(null, 2, 1, 1, 0);
#(`iid`, `user_id`, `product_id`, `count`, `is_checked`)










CREATE TABLE xz_shop(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(255),
  name    VARCHAR(255),
  addr    VARCHAR(255),
  tel     VARCHAR(25),
  mtime   VARCHAR(25),
  star    INT
);
INSERT INTO xz_shop VALUES(null,'http://127.0.0.1:0729/img/niu.png','万寿路1','万寿路','13999999999','6:00~21:00',85);
INSERT INTO xz_shop VALUES(null,'http://127.0.0.1:0729/img/niu.png','万寿路2','万寿路','13999999999','6:00~21:00',85);
INSERT INTO xz_shop VALUES(null,'http://127.0.0.1:0729/img/niu.png','万寿路3','万寿路','13999999999','6:00~21:00',85);
INSERT INTO xz_shop VALUES(null,'http://127.0.0.1:0729/img/niu.png','万寿路4','万寿路','13999999999','6:00~21:00',85);
INSERT INTO xz_shop VALUES(null,'http://127.0.0.1:0729/img/niu.png','万寿路5','万寿路','13999999999','6:00~21:00',85);
INSERT INTO xz_shop VALUES(null,'http://127.0.0.1:0729/img/niu.png','万寿路6','万寿路','13999999999','6:00~21:00',85);
INSERT INTO xz_shop VALUES(null,'http://127.0.0.1:0729/img/niu.png','万寿路7','万寿路','13999999999','6:00~21:00',85);
INSERT INTO xz_shop VALUES(null,'http://127.0.0.1:0729/img/niu.png','万寿路8','万寿路','13999999999','6:00~21:00',85);
INSERT INTO xz_shop VALUES(null,'http://127.0.0.1:0729/img/niu.png','万寿路9','万寿路','13999999999','6:00~21:00',85);
INSERT INTO xz_shop VALUES(null,'http://127.0.0.1:0729/img/niu.png','万寿路10','万寿路','13999999999','6:00~21:00',85);
INSERT INTO xz_shop VALUES(null,'http://127.0.0.1:0729/img/niu.png','万寿路11','万寿路','13999999999','6:00~21:00',85);
INSERT INTO xz_shop VALUES(null,'http://127.0.0.1:0729/img/niu.png','万寿路12','万寿路','13999999999','6:00~21:00',85);
INSERT INTO xz_shop VALUES(null,'http://127.0.0.1:0729/img/niu.png','万寿路13','万寿路','13999999999','6:00~21:00',85);
INSERT INTO xz_shop VALUES(null,'http://127.0.0.1:0729/img/niu.png','万寿路14','万寿路','13999999999','6:00~21:00',85);
INSERT INTO xz_shop VALUES(null,'http://127.0.0.1:0729/img/niu.png','万寿路15','万寿路','13999999999','6:00~21:00',85);
INSERT INTO xz_shop VALUES(null,'http://127.0.0.1:0729/img/niu.png','万寿路16','万寿路','13999999999','6:00~21:00',85);
INSERT INTO xz_shop VALUES(null,'http://127.0.0.1:0729/img/niu.png','万寿路17','万寿路','13999999999','6:00~21:00',85);
INSERT INTO xz_shop VALUES(null,'http://127.0.0.1:0729/img/niu.png','万寿路18','万寿路','13999999999','6:00~21:00',85);
INSERT INTO xz_shop VALUES(null,'http://127.0.0.1:0729/img/niu.png','万寿路19','万寿路','13999999999','6:00~21:00',85);
INSERT INTO xz_shop VALUES(null,'http://127.0.0.1:0729/img/niu.png','万寿路20','万寿路','13999999999','6:00~21:00',85);
INSERT INTO xz_shop VALUES(null,'http://127.0.0.1:0729/img/niu.png','万寿路21','万寿路','13999999999','6:00~21:00',85);
INSERT INTO xz_shop VALUES(null,'http://127.0.0.1:0729/img/niu.png','万寿路22','万寿路','13999999999','6:00~21:00',85);
