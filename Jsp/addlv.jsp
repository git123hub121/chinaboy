<%@ page language="java" import="java.util.*" import="java.sql.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link rel="stylesheet" type="text/css" href="css/upform.css"/>
        <title>商品添加界面</title>
    </head>
    <body>
    	<form action="addform.jsp" method="post">
    	<div class="box">
    	<div class="boxx">商品编号：<input type="text" name="id"  value="" placeholder="" class="inyx" /></div><br />
    	<div class="boxx">商品名称：<input type="text" name="lvmc" value="" placeholder="" class="inyx" /></div><br />
    	<div class="boox2"><span>商品介绍：</span><textarea class="jsg" name="lvjs"></textarea></div><br />
    	<div class="boxx">商品图片：<input type="text" name="lvtp" value=""  class="inyx1" /></div><br />
    	<div class="boxx">&nbsp;&nbsp;&nbsp;原&nbsp;&nbsp;价&nbsp;&nbsp;：<input type="text" name="yj" value=""  class="inyx" /></div><br />
    	<div class="boxx">&nbsp;&nbsp;&nbsp;现&nbsp;&nbsp;价&nbsp;&nbsp;：<input type="text" name="xj" value=""  class="inyx" /></div><br />
    	<div class="boxx1"><input type="submit" name="submit" value="添加" class="sub" /></div>
    	</div></form>
 	</body>
</html>
