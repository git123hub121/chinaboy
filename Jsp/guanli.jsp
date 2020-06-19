<%@ page language="java" import="java.util.*" import="java.sql.*" pageEncoding="utf-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="css/style1.css">
<style>
	#active a {
		background-color: #0c53ad;
		color: #fff;
	}
	
	.last:hover {
		color: #fff;
		background: #0c53ad;
	}
	
	.bigbox {
		width: 900px;
		height:100%;
		margin: 130px auto 0;
		/*background: red;*/
	}
	table {
		border: 1px solid white;
	}
 	tr { 
 	   /*width: 300px; 
 		height: 36px; 
 		margin: 0 auto; 
 		text-align: center;*/
	} 
 	tr td { 
 		width: 120px;  
 		text-align: center; 
 		margin-left: -20px;
 		/*height: 36px;
 		line-height: 20px; 
 		*/
 	}
 	.tdjs {
 		width:300px;
 	}
 	.js {
 		width:300px;
 	}
	h4 >a {
		text-decoration: none;
		margin-left: 30px;
	}
	h4 >a:hover {
		color: deeppink;
	}
	img {
		width:100px;
		height:60px;
	}
	.page {
 		margin:50px 30px;
 	}
    .page:link {
        color: skybule;
    }
    .page:visited {
        color: pink;
    }
    .page:hover {
        color: green;
    }
    .page:active {
        color: red;
    }
</style>
<title>管理页</title>
</head>

<body>
<script>
	function setTab(m, n) { //虽然该m可以知道是一个常数1，但是在函数中参数是不能已知的，故只能写成m，但是"menus"+m <=> "menus1"
		var tli = document.getElementById("ul" + m).getElementsByClassName("lia"); //控制悬浮标题的显示与遮盖
		var mli = document.getElementById("box" + m).getElementsByTagName("div");
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
    		ResultSet rs =null;
    		int cur_page=1;//当前第一页
    		if(request.getParameter("cur_page")!= null)
    		{
    			cur_page=Integer.parseInt(request.getParameter("cur_page"));
    		}
    		int num_page=2;//每页显示两条记录
        	//int cur_page=1;//当前第一页
        	//int num_page=2;//每页显示两条记录
        	String sql = "select * from lv_info limit ?,?";
        	PreparedStatement pst = conn.prepareStatement(sql);
        	pst.setInt(1,(cur_page-1)*num_page);
        	pst.setInt(2,num_page);
        	rs = pst.executeQuery("select count(*) totalCount from lv_info");//这样就OK了
        	int rowCount = 0;
        	if(rs.next()) {
        	  rowCount=rs .getInt("totalCount");
        	}
        	rs = pst.executeQuery();
    		
    		String sql1 = "select * from user_info";
    		PreparedStatement pst1 = conn.prepareStatement(sql1);
    		ResultSet rs1 = pst1.executeQuery();
    		
    		
		
%>
<!------------导航部分----------------->
<div class="fixdbox">
<ul class="nav" id="ul1">
	<li class="logo">TraHeart</li>
	<li style="margin-left: 50px;"><a href="webindex.jsp" class="last">返回首页</a></li>
	<li class="lia" onmousedown="setTab(1,0)" id="active" style="margin-left: 50px;width: 200px;"><a href="#">商品信息管理</a></li>
	<li class="lia" onmousedown="setTab(1,1)" style="margin-left: 50px;width: 200px;"><a href="#">用户信息管理</a></li>
</ul>
</div>
<hr />

<div class="bigbox" id="box1">
	
	<div class="block">
		<br />
		<h2 style="text-align: center;color: deepskyblue;">商品信息界面</h2>
				<h4><a href="selectshop.jsp">查询</a><a href="addlv.jsp">添加</a></h4>
				<table align="center" width="900px" height="400px">
			<tr>
				<td>记录</td>
				<td>商品名称</td>
				<td class="tdjs">商品介绍</td>
				<td>商品图片</td>
				<td>原价</td>
				<td>现价</td>
				<td colspan="2">操作</td>
				
			</tr>
			<% 
			while(rs.next()) {%>
			<tr>
				<td><%=rs.getInt("id")%></td>
				<td><%=rs.getString("lvmc")%></td>
				<td class="js"><%=rs.getString("lvjs")%></td>
				<td><img src="<%=rs.getString("lvtp")%>" alt=""></td>
				<td><%=rs.getDouble("yj")%>RMB/$</td>
				<td><%=rs.getDouble("xj")%>RMB/$</td>
				<td><a href="detaillv.jsp?id=<%=rs.getInt("id") %>" style="color: #676767; text-decoration: none;">修改</a></td>
				<td><a href="delete.jsp?id=<%=rs.getInt("id") %>" style="color: #676767; text-decoration: none;">删除</a></td>
			</tr>
		<% }%>
		</table>
		<% if(cur_page != 1)
	{ %>
		<a href="guanli.jsp?cur_page=1" class="page">首页</a>
	<% }%>	
	<% if(cur_page >=1 && cur_page < ((rowCount+num_page -1)/num_page))
	{ %>
		<a href="guanli.jsp?cur_page=<%=cur_page+1%>" class="page">下一页</a>
	<% }%>
	<% if(cur_page >1 &&  cur_page <= ((rowCount+num_page -1)/num_page))
 	{%> 
		<a href="guanli.jsp?cur_page=<%=cur_page-1%>" class="page">上一页</a>
	<% }%>
	<% if(cur_page != (rowCount+num_page-1)/num_page)
	{ %>
		<a href="guanli.jsp?cur_page=<%=(rowCount+num_page-1)/num_page%>" class="page">尾页</a>
	<% }%>
	<span>当前页为第<em style="color:red;"><%=cur_page%></em>页</span>
	<span>总页数为<%=(rowCount+num_page-1)/num_page%>页</span>
	<br/>
	</div>
	
	<!------------第二部分----------------->
		<div>
		<br />
		<h2 style="text-align: center;color: deepskyblue;">用户信息界面</h2>
				<h4><a href="selectuser.jsp">查询</a></h4>
		<table align="center" width="500px" height="600px">
			<tr>
				<td>记录</td>
				<td>用户名</td>
				<td>密码</td>
			</tr>
			<% 
			while(rs1.next()) {%>
			<tr>
				<td><%=rs1.getInt("id")%></td>
				<td><%=rs1.getString("user_name")%></td>
				<td><%=rs1.getString("user_password")%></td>
			</tr>
		<% }%>	
		</table>
	</div>
	<br/>
	<hr style="color:#0c53ad;width:100%;height:4px;background:#0c53ad;">
	<br/>
</div>

</body>
</html>

