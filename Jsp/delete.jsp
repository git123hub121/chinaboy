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
    	Class.forName("com.mysql.jdbc.Driver");
    	String url = "jdbc:mysql://localhost:3306/mldn?useUnicode=true&characterEncoding=utf-8";
    	String sql_user = "root";
    	String sql_password = "123456";
    	Connection conn = DriverManager.getConnection(url,sql_user,sql_password);
    	String sql = "delete from lv_info where id=?";
    	PreparedStatement pst = conn.prepareStatement(sql);
    	pst.setInt(1,Integer.parseInt(request.getParameter("id")));
    	int rs = pst.executeUpdate();
    	%>
    	<script type="text/javascript">
			alert("删除成功，即将跳转！");
		</script>
		<%response.setHeader("Refresh","1;url=http://localhost:8080/Jsp/guanli.jsp");%>
 	</body>
</html>