<%@ page language="java" import="java.util.*" import="java.sql.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link rel="stylesheet" type="text/css" href="css/upform.css"/>
        <title>商品修改界面</title>
    </head>
    <body>
    	<%
    	//request.setCharacterEncoding("utf-8");
		ResultSet rs =null;
    	Class.forName("com.mysql.jdbc.Driver");
    	String url = "jdbc:mysql://localhost:3306/mldn?useUnicode=true&characterEncoding=utf-8";
    	String sql_user = "root";
    	String sql_password = "123456";
    	Connection conn = DriverManager.getConnection(url,sql_user,sql_password);
    	String sql = "select * from lv_info where id=?";
    	PreparedStatement pst = conn.prepareStatement(sql);
    	pst.setInt(1,Integer.parseInt(request.getParameter("id")));
    	rs = pst.executeQuery();
    	rs.next();
    	%>
    		
    	<form action="updateform.jsp" method="post">
    	<div class="box">
    	<div class="boxx">商品编号：<input type="text" name="id"  value="<%=rs.getInt("id")%>"  readonly="readonly" class="inyx" /></div><br />
    	<div class="boxx">商品名称：<input type="text" name="lvmc" value="<%=rs.getString("lvmc")%>"  class="inyx" /></div><br />
    	<div class="boox2"><span>商品介绍：</span><textarea class="jsg" name="lvjs"><%=rs.getString("lvjs")%></textarea></div><br />
    	<div class="boxx">商品图片：<input type="text" name="lvtp" value="<%=rs.getString("lvtp")%>"  class="inyx1" /></div><br />
    	<div class="boxx">&nbsp;&nbsp;&nbsp;原&nbsp;&nbsp;价&nbsp;&nbsp;：<input type="text" name="yj" value="<%=rs.getDouble("yj")%>"  class="inyx" /></div><br />
    	<div class="boxx">&nbsp;&nbsp;&nbsp;现&nbsp;&nbsp;价&nbsp;&nbsp;：<input type="text" name="xj" value="<%=rs.getDouble("xj")%>"  class="inyx" /></div><br />
    	<div class="boxx1"><input type="submit" name="submit" value="修改" class="sub" /></div>
    	</div></form>
 	</body>
</html>