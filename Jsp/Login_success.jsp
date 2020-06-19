<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <script>
    	alert("恭喜登录成功！即将前往主页...")
    </script>
    	<%response.setHeader("Refresh","1;url=http://localhost:8080/Jsp/webindex.jsp");%>
    	
 	</body>
</html>