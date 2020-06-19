<%@ page language="java" import="java.util.*" import="java.sql.*" pageEncoding="utf-8"%>
<%-- <%@ page   errorPage="Reg_fail.jsp" %> --%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    	<%
    		ResultSet rs =null;
    		Class.forName("com.mysql.jdbc.Driver");
    		String url = "jdbc:mysql://localhost:3306/mldn";
    		String username = "root";
    		String password = "123456";
    		Connection conn = DriverManager.getConnection(url,username,password);
    		
    		String user_name = request.getParameter("t_name");
    		String sql1 = "select * from user_info where user_name='"+user_name+"'";
    		PreparedStatement pst = conn.prepareStatement(sql1);
    		rs = pst.executeQuery(sql1);
     		if (rs.next()) {
     		   	response.sendRedirect("Reg_fail.jsp");
     		}
     		else 
     		{
    		String sql = "INSERT INTO user_info(user_name,user_password) VALUES(?,?)";
    		PreparedStatement preStmt = conn.prepareStatement(sql);
    		preStmt.setString(1,request.getParameter("t_name"));
    		preStmt.setString(2,request.getParameter("t_psd"));
    		int rows = preStmt.executeUpdate();
    		if( rows > 0)
    		{
    			response.sendRedirect("Reg_success.jsp");
    		}
    		else
    			{
    				response.sendRedirect("Reg_fail.jsp");
    			}
     		}
    	%>
 	</body>
</html>