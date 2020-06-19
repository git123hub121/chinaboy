<%@ page language="java" import="java.util.*" import="java.sql.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title></title>
		<link rel="stylesheet" type="text/css" href="css/index.css"/>
	</head>
	<body>
		<div id="" class="logo">
			<h1>Travel Heart</h1>
		</div>
		
		<div class="box">
			<div class="top">
		<div class="dlname">
			<ul class="c1" id="ul1">
			<li>用户注册</li>
			</ul>
			</div>
		<div class="dlname1">
			<ul class="c2" id="u1">
			<li>USER &nbsp;REGISTER</li>
			</ul>
			</div>
		</div>
			<div class="boxd" id="box1">
				<div class="block">
				<form action="do_Reg.jsp" method="post">
				<input type="text" name="t_name" id="user_name" value="" placeholder="用户名" onfocus="javascript:if(this.value=='用户名')this.value='';" class="user"/>
				<input type="password" name="t_psd" id="password"  value="" placeholder="密码" class="pwd1"/>
				<input type="password" name="re_psd" id="repassword"  value="" placeholder="再次输入密码" class="repwd"/><br />
				<input type="checkbox" name="checked" id="rem" value="" class="check"/>
				<label for="rem" style="color: #b2b2b2;">&nbsp;&nbsp;&nbsp;记住用户名和密码</label><br />
				<input type="submit" value="注册" onclick="return check();" class="sub"/>
				</form>
				<span class="c3">已有账号？</span>&nbsp;&nbsp;<span class="c4"><a href="Login.jsp" class="dl">立即登录</a></span>
			</div>
			
		</div>
	</div>
	<script>
		function check() {
			var flag = true;
    		var admin = document.getElementById("user_name").value;
    		var password = document.getElementById("password").value;
    		var repassword = document.getElementById("repassword").value;
			if ("" == admin){
				alert("请输入用户名！");
				flag = false;
				return false;
			}
			else if ("" == password){
				alert("请输入密码！");
				flag = false;
				return false;
			}
			else if ("" == repassword){
				alert("再次输入密码框为空！");
				flag = false;
				return false;
			}
			else if (password != repassword){
				alert("两次密码输入不一致，请重新输入！");
				flag = false;
				return false;
			}
			if(flag == true){
				return true;
				//form.submit();
			}
		}
	</script>
	</body>
</html>
