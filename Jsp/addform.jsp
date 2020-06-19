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
    	request.setCharacterEncoding("utf-8");
    	Class.forName("com.mysql.jdbc.Driver");
    	String url = "jdbc:mysql://localhost:3306/mldn?useUnicode=true&characterEncoding=utf-8";
    	String sql_user = "root";
    	String sql_password = "123456";
    	Connection conn = DriverManager.getConnection(url,sql_user,sql_password);
    	String sql = "insert into lv_info (lvmc,lvjs,lvtp,yj,xj,id) values(?,?,?,?,?,?)";
    	PreparedStatement pst = conn.prepareStatement(sql);
    	pst.setString(1,request.getParameter("lvmc"));
    	pst.setString(2,request.getParameter("lvjs"));
    	pst.setString(3,request.getParameter("lvtp"));
    	pst.setDouble(4,Double.parseDouble(request.getParameter("yj")));
    	pst.setDouble(5,Double.parseDouble(request.getParameter("xj")));
    	pst.setInt(6,Integer.parseInt(request.getParameter("id")));
    	response.setCharacterEncoding("utf-8");
    	int rs = pst.executeUpdate();
    	%>
    	<script type="text/javascript">
			alert("添加成功，即将跳转！");
		</script>
		<%response.setHeader("Refresh","1;url=http://localhost:8080/Jsp/guanli.jsp");%>
 	</body>
</html>

