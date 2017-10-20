<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Calc2</title>
<link rel="stylesheet" type="text/css" href="./css/calculator/calc2.css?ver=1"> 
</head>
<script>
    function init(){
        document.frm01.total.focus();
    } 
</script>

<body onload="init()">

<div id="wrapper">

	<div class="top"><b>투자수익률</b>이란?☜
	
 		<span class="tooltip">경영 성과를 종합적으로 측정하는 데 이용되는 가장 대표적인 재무비율이다.<br>  
		순이익을 총투자액으로 나누어 산출하는데, 총투자는 대차대조표상의 총자본과 금액이 같고, <br>
		이것은 다시 총자산과 같기 때문에 총자본이익률 혹은 총자산이익률도 투자수익률과 같은 의미로 쓰인다. <br>
 		<b>*투자수익률*=순이익/총투자액(총자본) × 100</b>
 	</span> 
 	</div> 

	<div id="main">	
 		<form name="frm01" method="get" action="calc2Pro.jsp">
        	<table >
            	<tr>
            	<td colspan="3"><h2>투자수익률 계산</h2></td>
            	</tr>
            	<tr> 
	            <td>매수할 금액</td>
	            <td><input type="text" class="ip" name="total" placeholder="매수금액 입력(원)"></td></tr>
	            <tr> 
	            <td>투자금액</td>
	            <td><input type="text" class="ip" name="invest" placeholder="투자금액 입력(원)"></td></tr>
	            <tr> 
	            <td>보증금</td>
	            <td><input type="text" class="ip" name="deposit" placeholder="보증금 입력(원)"></td></tr>
	            <tr> 
	            <td>월세</td>
	            <td><input type="text" class="ip" name="m_rent" placeholder="월세 입력(원)"></td></tr>
	            <tr> 
	            <td>대출금리</td>
	            <td><input type="text" class="ip" name="inter" placeholder="대출금리 입력(%)"></td></tr>                     
	            <tr>
	            <td colspan="3">
	             <input type="submit" value="계산하기" id="butt">
	            </tr>      
        	</table>
        </form>
     </div>

     <div>
     
     <br>
     *해당 계산기에서는 상가 또는 기타 부동산의 취득시 부가세의 부분에 대해서는 포함되지 않았습니다.*
     </div>

</div>

</body>
</html>