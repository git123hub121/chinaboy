<%@ page language="java" import="java.util.*" import="java.sql.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8" />
		<title></title>
		<link rel="stylesheet" type="text/css" href="css/index.css"/>
		<script type="text/javascript" src="js/zdyzm.js"></script>
		<style type="text/css">
		 
		</style>
	</head>
	<body>
		<script>
		function setTab(m,n) { //虽然该m可以知道是一个常数1，但是在函数中参数是不能已知的，故只能写成m，但是"menus"+m <=> "menus1"
		var tli=document.getElementById("ul"+m).getElementsByTagName("li");//控制悬浮标题的显示与遮盖
		var mli=document.getElementById("box"+m).getElementsByTagName("div");//控制悬浮标题时，对应内容的显示与遮盖
		 for(i=0;i<tli.length;i++) {
		  tli[i].className=(i==n)?"hover":"";
		  mli[i].style.display=(i==n)?"block":"none";
		}
	}
		function setTab1(m,n) { //虽然该m可以知道是一个常数1，但是在函数中参数是不能已知的，故只能写成m，但是"menus"+m <=> "menus1"
		var tli=document.getElementById("u"+m).getElementsByTagName("li");//控制悬浮标题的显示与遮盖
		var mli=document.getElementById("box"+m).getElementsByTagName("div");//控制悬浮标题时，对应内容的显示与遮盖
		 for(i=0;i<tli.length;i++) {
		  tli[i].className=(i==n)?"hover":"";
		  mli[i].style.display=(i==n)?"block":"none";
		}
	}
	</script>
		<div id="" class="logo">
			<h1>Travel Heart</h1>
		</div>
		
		<div class="box">
			<div class="top">
		<div class="dlname">
			<ul class="c1" id="ul1">
			<li class="hover" onMouseOver="setTab(1,0)">用户登录</li>
			<li onMouseOver="setTab(1,1)">快速登录</li>
			</ul>
			</div>
		<div class="dlname1">
			<ul class="c2" id="u1">
			<li>USER &nbsp;LOGIN</li><!--class="hover" onMouseOver="setTab1(1,0)"-->
			<li>&nbsp;&nbsp;USER &nbsp;LOGIN</li><!--onMouseOver="setTab1(1,1)"-->
			</ul>
			</div>
		</div>
			<div class="boxd" id="box1">
				
				<div class="block">
				<form action="do_Login.jsp" method="post">
				<input type="text" name="t_name" id="name" value="" placeholder="用户名" class="user"/><!--onfocus="javascript:if(this.value=='用户名')this.value='';" -->
				<input type="password" name="t_psd" id="pwd"  value="" placeholder="密码" class="pwd"/><br />
				<input type="checkbox" name="checked" id="rem" value="" class="check"/>
				<label for="rem" style="color: #b2b2b2;">&nbsp;&nbsp;&nbsp;记住用户名和密码</label><br />
				<input type="submit" value="登录" onclick="return check();" class="sub"/>
				</form>
			</div>
			
				<div>
				<form action="" method="post">
				<input type="text" name="user_name" id="user_name" value="" placeholder="手机号" onfocus="javascript:if(this.value=='用户名')this.value='';" class="user"/>
				<!--时间：2017-01-11 描述：输入框ct100_textcode -->
				<input type="text" name="ctl00_txtcode"  value="" placeholder="验证码" id="ctl00_txtcode" class="pwd"/>
			   	<!--时间：2017-01-11 描述：把验证码定义为按钮，点击刷新-->
			   	<input type="button" id="code" onclick="createCode()"/>
			   	<!--时间：2017-01-11 描述：验证按钮 -->
			    <input type="button" value="验证" onclick="validate()" class="yz"/><br />
			    
			    <input type="checkbox" name="checked" id="rem" value="" class="check"/>
				<label for="rem" style="color: #b2b2b2;">&nbsp;&nbsp;&nbsp;记住用户名和密码</label><br />
				
				<input type="submit" value="登录" class="sub"/>
				</form>	
			</div>
		</div>
		<div class="bottom">
				<span class="c3">还没有账号？</span>
				&nbsp;&nbsp;<span class="c4"><a href="Register.jsp" class="zc">立即注册</a></span>
				&nbsp;&nbsp;<span class="c4" style="float: right;"><a href="#" class="zc">忘记密码？</a></span>
			</div>
	</div>
	    <script type="text/javascript">
        	function check(){
        		var flag = true;
        		var admin = document.getElementById("name").value;
        		var password = document.getElementById("pwd").value;
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
    			if(flag == true){
    				return true;
    				//form.submit();
    			}
    		}
        </script>
    
	</body>
</html>
