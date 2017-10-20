<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Welcome Pal</title>
        <link rel="stylesheet" type="text/css" href="./css/member/MemberShipCSS.css">
</head>

<body>
<div class="wrapper">
	<form action="/finalPro/memberController.do" method = "post">
	<input type = "hidden" name = "q" value = "memInsert">
	<div id = "register_logo">
		건물주가 꿈이에요
	</div>
	<div id = "registerbox">
		<input type="text" placeholder="이름[필수]" name="mem_name" class="typingbox">
		<input type="text" placeholder="아이디[필수]" name="mem_id" class="typingbox">
		<input type="password" placeholder="패스워드[필수]" name="mem_pwd" class="typingbox">
		<input type="password" placeholder="패스워드 재입력[필수]" name="repwd" class="typingbox">
		<input type="text" placeholder="이메일[선택]" name="mem_email" class="typingbox">
		<label for="man"><input type="radio" name="mem_gender" id = "man" value = "man">Male</label>
		<label for="woman"><input type="radio" name="mem_gender"  id = "woman" value="woman">Female</label>
		
		<select class="selectbox" name="birthy" onchange="selectyear(this)">
			<script>
				for(i = 2017; i  > 1950 ; i--)
				document.write("<option value = '" + i + "'>" + i + "년") 
			</script>
		</select>
		<select class="selectbox" name="birthm" onchange="selectmonth(this)">
			<script>
				for(i = 1; i  < 13 ; i++)
				document.write("<option value = '" + i + "'>" + i + "월") 
			</script>
		</select>
		<select class="selectbox" name="birthd" onchange="selectday(this)">
			<script>
				for(i = 1; i  < 32 ; i++)
				document.write("<option value = '" + i + "'>" + i + "일") 
			</script>
		</select>
		<input type="submit" class="clickbutton" value = "가입하기">
		</div>
	</form>
</div>

</body>
</html>