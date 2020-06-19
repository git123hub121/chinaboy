<%@ page language="java" import="java.util.*" import="java.sql.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>修改</title>
    </head>
    <body>
    	<%
    	request.setCharacterEncoding("UTF-8");
		ResultSet rs =null;
    	Class.forName("com.mysql.jdbc.Driver");
    	String url = "jdbc:mysql://localhost:3306/mldn?useUnicode=true&characterEncoding=utf-8";
    	String sql_user = "root";
    	String sql_password = "123456";
    	Connection conn = DriverManager.getConnection(url,sql_user,sql_password);
    	String sql = "update lv_info set lvmc=?,lvjs=?,lvtp=?,yj=?,xj=? where id=?";
    	PreparedStatement pst = conn.prepareStatement(sql);
    	pst.setString(1,request.getParameter("lvmc"));
    	pst.setString(2,request.getParameter("lvjs"));
    	pst.setString(3,request.getParameter("lvtp"));
    	pst.setDouble(4,Double.parseDouble(request.getParameter("yj")));
    	pst.setDouble(5,Double.parseDouble(request.getParameter("xj")));
    	pst.setInt(6,Integer.parseInt(request.getParameter("id")));
    	response.setCharacterEncoding("utf-8");
    	int rows = pst.executeUpdate();
    	if(rows>0) {
    		response.sendRedirect("guanli.jsp");
    	}
    	%>
 	</body>
</html>