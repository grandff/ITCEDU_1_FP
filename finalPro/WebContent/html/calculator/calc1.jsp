<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype HTML>
<html>
<head>
<meta charset="utf-8">
<title>cal</title>
<link rel="stylesheet" href="./css/calculator/calc1.css">
<script type="text/javascript" src="./js/calculator/calc1.js"></script>

</head>

<body>
	<div class="wrapper">
		<div class="explain">
			<h3>중개수수료</h3>
			<p>부동산중개업자가 중개를 한 대가로 받는 보수를 말하며 수수료는 거래 금액에 따라 다르다.</p>
		</div>
		<br> <br> <br>
		<div class="mainbord">
			<form name="select1">
				<div class="menu">주택종류</div>
				<div class="menucontent">
					<input type="radio" name="home" id="home1" value="1">
					<label for="home1" class="mousechange">주택</label> 
					&emsp;&emsp;&emsp;&emsp;
					<input type="radio" name="home" id="home2" value="2">
					<label for="home2" class="mousechange">주거용 오피스텔(전용면적 85m<sup>2</sup> 이하)
					</label>
				</div>
			</form>
			<form name="select2">
				<div class="menu">거래종류</div>
				<div class="menucontent">
					<input type="radio" name="deal" id="deal1" value="1">
					<label for="deal1" class="mousechange">매매,교환</label> 
					&emsp;&emsp;
					<input type="radio" name="deal" id="deal2" value="2">
					<label for="deal2" 	class="mousechange">전세</label>
					&emsp;&emsp; 
					<input type="radio" name="deal" 	id="deal3" value="3">
					<label for="deal3" 	class="mousechange">월세</label>
				</div>
			</form>
			<div class="menu">거래가액</div>
			<div class="menucontent">
				<input type="text" placeholder="금액입력" id="cal" class="textbox"
					class="textbox">
				<button onclick="radiochk()" class="click">계산하기</button>
				(만원단위)
			</div>
			<div class="elsecontent">
				<br>
				중계보수료 산출방법 : 거래가액 X 보수료율<br> -매매, 교환, 전세 : 계약금액을 거래가액으로 함<br>
				-월세 : 거래가액 = 보증금 + (월세 x 100) 단, 거래가액이 5천만원 미만일 경우 100을 70으로 함
				<br>
			</div>
		</div>
		<br> <br>
		<div id="resultshow" style="display: none">
			<table>
				<tr>
					<td colspan="2">========================<br>중개수수료 계산 결과<br>========================<br>
						<br></td>
				</tr>
				<tr>
					<td>거래가액</td>
					<td><input type="text" id="result3"></td>
				</tr>
				<tr>
					<td>보수료율</td>
					<td><input type="text" id="result2"></td>
				</tr>
				<tr>
					<td>중개수수료</td>
					<td><input type="text" id="result"></td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>