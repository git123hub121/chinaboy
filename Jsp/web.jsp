<%@ page language="java" import="java.util.*" import="java.sql.*" pageEncoding="utf-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="css/style1.css">
<link rel="stylesheet" href="css/donghua.css"/>
<style>
	#active a {
    background-color: #0c53ad;
    color: #fff;
}
	.last:hover {
	color: #fff;
	background: #0c53ad;
}
	span {
		font-size:10px;
	}
	span>a {
		color:orange;
	}
	span>a:hover {
		color:white;
	}
</style>
<title>分页</title>
</head>

<body>
<script>
	function setTab(m, n) { //虽然该m可以知道是一个常数1，但是在函数中参数是不能已知的，故只能写成m，但是"menus"+m <=> "menus1"
		var tli = document.getElementById("ul" + m).getElementsByClassName("lia"); //控制悬浮标题的显示与遮盖
		var mli = document.getElementById("box" + m).getElementsByTagName("ul");
		//控制悬浮标题时，对应内容的显示与遮盖
		for(i = 0; i < tli.length; i++) {
			tli[i].id = (i == n) ? "active" : "";
			mli[i].style.display = (i == n) ? "block" : "none";
		}
	}
</script>
<%
    		Class.forName("com.mysql.jdbc.Driver");
    		String url = "jdbc:mysql://localhost:3306/mldn";
    		String sql_user = "root";
    		String sql_password = "123456";
    		Connection conn = DriverManager.getConnection(url,sql_user,sql_password);
    		String sql = "select * from lv_info";
    		PreparedStatement pst = conn.prepareStatement(sql);
    		ResultSet rs = pst.executeQuery();
    		rs.next();
    		
%>
	
<!------------导航部分----------------->
<div class="fixdbox">
<ul class="nav" id="ul1">
	<li class="logo">TraHeart</li>
	<li><a href="webindex.jsp" class="last">返回首页</a></li>
	<li class="lia" onmousedown="setTab(1,0)" id="active"><a href="#">关于我们</a></li>
	<li class="lia" onmousedown="setTab(1,1)"><a href="#">产品展示</a></li>
	<li class="lia" onmousedown="setTab(1,2)"><a href="#">案例作品</a></li>
	<li class="lia" onmousedown="setTab(1,3)"><a href="#">联系我们</a></li>
	<!--<li><a href="Login.jsp">登录</a></li>
	<li><a href="Register.jsp">注册</a></li>-->
</ul>
</div>
<hr />
<!---------------BANNER----------------------------->
<!--<div class="banner">
	<img src="img/banner.png" alt="">
</div>-->
<!---------------about us--------------------------->
<div id="box1" class="box">
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
             <a href="http://baidu.com"><img src="<%=rs.getString("lvtp")%>" width="300" height="200"  alt="" /></a>
            <div class="wenzi">
           <h3> <a href="http://baidu.com" class="a"><%=rs.getString("lvmc")%></a></h3>
            <p><%=rs.getString("lvjs")%></p>
            </div>
           </div>
              <p style="width: 100%;height: 20px;font-size: 10px;font-family:微软雅黑;text-align: center;line-height: 20px;float: left;margin: 5px 0 0 -7px;color: white;"><span style="font-family:songti;color:greenyellow;font-size:12px;">票价特惠：</span>
              原价:&nbsp;&nbsp;<span style="color: red;text-decoration: line-through;"><%=rs.getDouble("yj")%>RMB</span>&nbsp;&nbsp;&nbsp;现价:&nbsp;&nbsp;<span style="text-decoration: underline"><a href="#" action=""><%=rs.getDouble("xj")%>RMB/人次</a></span></p>
            </div>
            <% rs.next();%>
             <div class="tuhe">
        <div class="bbox xuanzhuan">
        <a href="http://baidu.com"><img src="<%=rs.getString("lvtp")%>" width="300" height="200"  alt=""/></a>
        <div class="wenzi">
            <h3><a href="http://baidu.com" class="a"><%=rs.getString("lvmc")%></a></h3> 
            <p style="line-height: 27px;"><%=rs.getString("lvjs")%></p>
            <div class="kuang"></div>
        </div>
        </div>
           <p style="width: 100%;height: 20px;font-size: 10px;font-family:微软雅黑;text-align: center;line-height: 20px;float: left;margin: 5px 0 0 -7px;color: white;"><span style="font-family:songti;color:greenyellow;font-size:12px;">票价特惠：</span>
           原价:&nbsp;&nbsp;<span style="color: red;text-decoration: line-through;"><%=rs.getDouble("yj")%>RMB</span>&nbsp;&nbsp;&nbsp;现价:&nbsp;&nbsp;<span style="text-decoration: underline"><a href="#" action=""><%=rs.getDouble("xj")%>RMB/人次</a></span></p>
        </div>
        <% rs.next();%>
        <div class="tuhe">
            <div class="bbox suofang">
        <a href="http://baidu.com"><img src="<%=rs.getString("lvtp")%>" width="300" height="200" alt=""/></a>
        <div class="wenzi">
		<h3><a href="http://baidu.com" class="a"><%=rs.getString("lvmc")%></a></h3>
		<p style="line-height: 25px;"><%=rs.getString("lvjs")%></p>
		<div class="kuang"></div>
	</div>
    </div>
        <p style="width: 100%;height: 20px;font-size: 10px;font-family:微软雅黑;text-align: center;line-height: 20px;float: left;margin: 5px 0 0 -7px;color: white;"><span style="font-family:songti;color:greenyellow;font-size:12px;">票价特惠：</span>原价:&nbsp;&nbsp;<span style="color: red;text-decoration: line-through;">
        <%=rs.getDouble("yj")%>￡</span>&nbsp;&nbsp;&nbsp;现价:&nbsp;&nbsp;<span style="text-decoration: underline"><a href="#" action=""><%=rs.getDouble("xj")%>￡/人次</a></span></p>
    </div>
    	<% rs.next();%>
         <div class="tuhe">
         <div class="bbox xieqie">
        <a href="http://baidu.com"><img src="<%=rs.getString("lvtp")%>" width="300" height="200" alt="" style="margin: 0"/></a><div class="wenzi">
		<h3><a href="http://baidu.com" class="a"><%=rs.getString("lvmc")%></a></h3>
		<p><%=rs.getString("lvjs")%></p>
	</div>
    </div>
        <p style="width: 100%;height: 20px;font-size: 10px;font-family:微软雅黑;text-align: center;line-height: 20px;float: left;margin: 5px 0 0 -8px;color: white;"><span style="font-family:songti;color:greenyellow;font-size:12px;">票价特惠：</span>原价:&nbsp;&nbsp;<span style="color: red;text-decoration: line-through;">
        <%=rs.getDouble("yj")%>RMB</span>&nbsp;&nbsp;&nbsp;现价:&nbsp;&nbsp;<span style="text-decoration: underline"><a href="#" action=""><%=rs.getDouble("xj")%>RMB/人次</a></span></p>
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
</div>
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
