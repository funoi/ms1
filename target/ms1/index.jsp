<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- 第一种方式的数据提交 ,简单的数据提交-->
	<!-- 第二种方式的数据提交 ,参数和接受的参数不同名-->
	第一种方式的数据提交 ,简单的数据提交<br>
	第二种方式的数据提交 ,参数和接受的参数不同名<br>
	<form action="inputParam1" method="post">
		username : <input type="text" name="username"><br>
		age : <input type="text" name="age">
		<input type="submit" value="提交">
	</form>
	<hr>
	
	<!-- 第三种方式的数据提交 ,模型对象的参数的提交-->
	第三种方式的数据提交 ,模型对象的参数的提交<br>
	<form action="inputParam2" method="post">
		username : <input type="text" name="username">
		age : <input type="text" name="age"> <!--对应对象参数中的set方法  --><br>
		<input type="submit" value="提交">
	</form>
	<hr>
	
	<!-- 第四种方式的数据提交 ,集合的提交-->
	第四种方式的数据提交 ,集合的提交<br>
	<form action="inputParam3" method="post">
		username : <input type="text" name="username"><br>
		age : <input type="text" name="age"><br> <!--对应对象参数中的set方法  -->
		hover: <input type="checkbox" name="hover" value="足球">足球
		<input type="checkbox" name="hover" value="篮球">籃球
		<input type="checkbox" name="hover" value="台球">台球<br>
		<input type="submit" value="提交">
	</form>
	<hr>
	<!-- 第五种方式的数据提交 ,对象中嵌套对象-->
	
	第五种 对象中嵌套对象
	<form action="inputParam4" method="post">
	username : 	<input type="text" name="user.username"/> <br>
									<!-- ouser.user.username -->
	age : 	<input type="text" name="user.age"/><br>
		<input type="submit" value="提交">
	</form>
	<hr>
	
	
	
	第六种 对象中嵌套对象集合
	<form action="inputParam5" method="post">
	username1 : 	<input type="text" name="users[0].username"/> <br>
	age1 : 	<input type="text" name="users[0].age"/><br>
	username1 : 	<input type="text" name="users[1].username"/> <br>
	age1 : 	<input type="text" name="users[1].age"/><br>
	
		<input type="submit" value="提交">
	</form>
	<hr>
	
	第七种 超链接传参
	<a href="inputParam6/123/abc/yut">跳转</a>
	
</body>
</html>