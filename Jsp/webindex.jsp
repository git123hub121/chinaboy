<%@ page language="java" import="java.util.*" import="java.sql.*" pageEncoding="utf-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/donghua.css">
<style>
	span {
		font-size:12px;
	}
	span>a {
		color:orange;
	}
	span>a:hover {
		color:white;
	}
</style>
<title>首页</title>
</head>

<body>
<script type="text/javascript">
	function check() {
		window.prompt
		var n = window.prompt('请输入访问密码:',);
		if(n==123){
			alert('密码输入正确!正在跳转...');
			return true;
		}
		else {
			return false;
		}
		
}
</script>
<!------------导航部分----------------->
<div class="fixdbox">
<ul class="nav" id="ul1">
	<li class="logo">TraHeart</li>
	<li><a href="#">首页</a></li>
	<li><a href="web.jsp">关于我们</a></li>
	<li><a href="#">产品展示</a>
		<ul class="subs">	
		</ul>
	</li>
	<li><a href="#">案例作品</a></li>
	<li><a href="#">联系我们</a></li>
	<div class="kg"></div>
	<li><a href="Login.jsp">登录</a></li>
	<li><a href="Register.jsp">注册</a></li>
	<li><a href="guanli.jsp" onmousedown="check(true)">管理</a></li>
</ul>
</div>
<hr />
<!---------------BANNER----------------------------->
<div class="banner">
	<img src="img/banner.png" alt="">
</div>

<!---------------about us--------------------------->
<ul class="block">
<div class="aboutus">
	<div class="tittle">关于我们</div>
	<img src="img/image2/gsjs.jpg" alt="">
	<div class="jieshao">公司介绍</div>
	<div class="neirong">
		 <p style="font-size: 15px;font-family: "微软雅黑";float: left;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;本公司创建于2020年x月x日,拥有丰富的旅游资源和众多优秀旅游前端旅游开发旅游咨询人才,注册半月便融资xxx，是一个综合性的旅游网上运营服务公司。技术力量较为雄厚，与多家网上教学机构有过多次合作，企业规模效益明显。
		 </p>
	</div>
	<div class="more">more</div>
</div>
</ul>
<!-----------------产品展示----------------------------->
<ul>
<div class="show">
	<div class="tittle" style="color: #ffffff">产品介绍</div>
	 <div class="chanpinphoto">
        <!----pingyidonghua---------------------------------------------------->
         <div class="tuhe">
          <div class="bbox pingyi">
             <a href="http://baidu.com"><img src="img/image2/1.jpg" width="300" height="200"  alt="" /></a>
            <div class="wenzi">
           <h3> <a href="http://baidu.com" class="a">泰姬陵</a></h3>
            <p>泰姬陵，被评为“世界新7大奇迹”。相传，这是当年的莫卧儿皇帝为心爱的妃子修建的。图片上的泰姬陵，金碧辉煌、美轮美奂，让人无比向往。</p>
            </div>
           </div>
              <p style="width: 100%;height: 20px;font-size: 10px;font-family:微软雅黑;text-align: center;line-height: 20px;float: left;margin: 5px 0 0 -7px;color: white;"><span style="font-family:songti;color:greenyellow;font-size:12px;">票价特惠：</span>原价:&nbsp;&nbsp;<span style="color: red;text-decoration: line-through;">100RMB</span>&nbsp;&nbsp;&nbsp;现价:&nbsp;&nbsp;<span style="text-decoration: underline"><a href="#" action="">90RMB/人次</a></span></p>
            </div>
             <div class="tuhe">
        <div class="bbox xuanzhuan">
        <a href="http://baidu.com"><img src="img/image2/2.jpg" width="300" height="200"  alt=""/></a>
        <div class="wenzi">
            <h3><a href="http://baidu.com" class="a">八达岭长城</a></h3> 
            <p style="line-height: 27px;">“不到长城非好汉”，这句话不知道激起了多少人想去长城看一看的冲动。真切感受到它的宏伟壮阔。</p>
            <div class="kuang"></div>
        </div>
        </div>
           <p style="width: 100%;height: 20px;font-size: 10px;font-family:微软雅黑;text-align: center;line-height: 20px;float: left;margin: 5px 0 0 -7px;color: white;"><span style="font-family:songti;color:greenyellow;font-size:12px;">票价特惠：</span>原价:&nbsp;&nbsp;<span style="color: red;text-decoration: line-through;">150RMB</span>&nbsp;&nbsp;&nbsp;现价:&nbsp;&nbsp;<span style="text-decoration: underline"><a href="#" action="">120RMB/人次</a></span></p>
        </div>
        <div class="tuhe">
            <div class="bbox suofang">
        <a href="http://baidu.com"><img src="img/image2/4.jpg" width="300" height="200" alt=""/></a>
        <div class="wenzi">
		<h3><a href="http://baidu.com" class="a">英国巨石阵</a></h3>
		<p style="line-height: 25px;">巨石阵，每个英国人心中最神圣的地方。孤独的矗立在草坪中，看上去十分神秘而不可侵犯，让人只敢观而不敢肆意触摸。</p>
		<div class="kuang"></div>
	</div>
    </div>
        <p style="width: 100%;height: 20px;font-size: 10px;font-family:微软雅黑;text-align: center;line-height: 20px;float: left;margin: 5px 0 0 -7px;color: white;"><span style="font-family:songti;color:greenyellow;font-size:12px;">票价特惠：</span>原价:&nbsp;&nbsp;<span style="color: red;text-decoration: line-through;">60￡</span>&nbsp;&nbsp;&nbsp;现价:&nbsp;&nbsp;<span style="text-decoration: underline"><a href="#" action="">50￡/人次</a></span></p>
    </div>
         <div class="tuhe">
         <div class="bbox xieqie">
        <a href="http://baidu.com"><img src="img/image2/3.jpg" width="300" height="200" alt="" style="margin: 0"/></a><div class="wenzi">
		<h3><a href="http://baidu.com" class="a">故宫</a></h3>
		<p>有着“紫禁城”这个神秘奇迹的北京故宫是中国明清两代的皇家宫殿，是中国古代宫廷建筑之精华，被称为“世界十大奇迹之一”。</p>
	</div>
    </div>
        <p style="width: 100%;height: 20px;font-size: 10px;font-family:微软雅黑;text-align: center;line-height: 20px;float: left;margin: 5px 0 0 -8px;color: white;"><span style="font-family:songti;color:greenyellow;font-size:12px;">票价特惠：</span>原价:&nbsp;&nbsp;<span style="color: red;text-decoration: line-through;">120RMB</span>&nbsp;&nbsp;&nbsp;现价:&nbsp;&nbsp;<span style="text-decoration: underline"><a href="#" action="">100RMB/人次</a></span></p>
    </div>   
        </div>
        <div class="chaxun">点击查询</div>
</div>
</ul>
<!-----------------客户案例-------------------->
<ul>
<div class="anlibox">
	<div class="tittle">案例作品</div>
	<div class="photobox">
		<li><img src="img/just2.png" alt=""></li>
		<li><img src="img/just3.png" alt=""></li>
		<li><img src="img/just4.png" alt=""></li>
		<li><img src="img/just5.png" alt=""></li>
		<li><img src="img/just6.png" alt=""></li>
		<li><img src="img/just7.png" alt=""></li>
		<li><img src="img/just8.png" alt=""></li>
		<li><img src="img/just9.png" alt=""></li>
		<li><img src="img/just13.jpeg" alt=""></li>
		<li><img src="img/just15.png" alt=""></li>
	</div>
</div>
</ul>
<!-------------------联系我们------------------------->
<ul>
<div class="callme">
	<div class="tittle">联系我们</div>
	<div class="callmebox">
		<div>
			<img src="img/home.png" alt="">
			<p>ADRESS</p>
			<span>地址：XX市xx区xx广场</span>
		</div>
		
		<div>
			<img src="img/dianhua.png" alt="">
			<p>TELL</p>
			<span>电话：155****5938</span>
		</div>
		
		<div>
			<img src="img/xinxi.png" alt="">
			<p>MESSAGE</p>
			<span>您有什么问题请在线留言</span>
		</div>
		
	</div>
</div>
</ul>
<!------------zongti----------------->

<!------------底部----------------->
<div class="bottom">
	 <div class="logobottom">
        TraHeart
        </div>
        <div class="wenzi1">
        版权所有|*******有限公司（备注：本网页不做商用，如有侵权，请与本人协商。）
        </div>
        <div></div>
</div>


</body>
</html>
