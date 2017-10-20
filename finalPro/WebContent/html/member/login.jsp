<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
<link rel="stylesheet" type="text/css" href="./css/member/LoginCSS.css">
</head>
<body>
<div id="wrapper">
	<form action = "#" method ="post">
		<div id = "login_logo">
			건물주가 꿈이에요
		</div>
		<div id = "loginbar">
			<input type="text" placeholder="아이디" name="mem_id" class="typingbox"><br>
			<input type="text" placeholder="패스워드" name="mem_pwd" class="typingbox">
		</div>	
		<div id = "btnbar">
			<input type="submit" class="clickbutton" value = "로그인">
			<a href = "MemberShip.jsp"> <input type="button" class="clickbutton" value = "회원가입"></a>
		</div>
	</form>
</div>
</body>
</html>