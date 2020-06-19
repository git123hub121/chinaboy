
<!DOCTYPE html>
<html>
    <head>
        <%@page language="java" contentType="text/html;charset=UTF-8"%>
        <title>JSP Page</title>
    </head>
    <body>
    <script>
    	alert("用户名已存在，注册失败，将重新跳转到注册页面")
    </script>
    	<%response.setHeader("Refresh","3;url=http://localhost:8080/Jsp/Register.jsp");%>
 	</body>
</html>