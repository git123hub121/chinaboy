<%@ page language="java" import="java.util.*" import="java.sql.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>JSP Page</title>
    </head>
    <body>
    <%
    		Class.forName("com.mysql.jdbc.Driver");
    		String url = "jdbc:mysql://localhost:3306/mldn";
    		String username = "root";
    		String password = "123456";
    		Connection conn = DriverManager.getConnection(url,username,password);
    		String sql = "select * from user_info where user_name=? and user_password=?";
    		PreparedStatement preStmt = conn.prepareStatement(sql);
    		preStmt.setString(1,request.getParameter("t_name"));
    		preStmt.setString(2,request.getParameter("t_psd"));
    		ResultSet rs = preStmt.executeQuery();
    		if( rs.next())
    		{
    			//response.sendRedirect("web.jsp");
    			response.sendRedirect("Login_success.jsp");
    		}
    			else
    			{
    				response.sendRedirect("Login_fail.jsp");
    			}
    	%>
 	</body>
</html>