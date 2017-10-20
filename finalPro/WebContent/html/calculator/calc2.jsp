<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
<title>calc2</title>
<link rel="stylesheet" type="text/css" href="./css/calculator/calc2.css"> 
<script type="text/javascript" src="./js/calculator/calc2.js"></script>
</head>
<body onload="init()">
<div id="wrapper">

	<div class="top"><br>
		<h3>투자수익률이란?</h3> 
		<br>
 		경영 성과를 종합적으로 측정하는 데 이용되는 가장 대표적인 재무비율이다.  
		순이익을 총투자액으로 나누어 산출하는데, 총투자는 대차대조표상의 총자본과 금액이 같고,
		이것은 다시 총자산과 같기 때문에 총자본이익률 혹은 총자산이익률도 투자수익률과 같은 의미로 쓰인다.<br><br>
 		<b>*투자수익률*=순이익/총투자액(총자본) × 100</b>
 	</div> 

	<div id="main">	
 		<form name="frm01" method="get">
        	<table>
            	<tr>
            		<th colspan="3">투자수익률 계산</th>
            	</tr>
            	<tr> 
	            	<th>매수할 금액</th>
	            	<td><input type="text" class="ip" id="a1" name="total" placeholder="매수금액 입력(원)"></td>
	            </tr>
	            <tr> 
	            	<th>투자금액</th>
	            	<td><input type="text" class="ip" id="a2" name="invest" placeholder="투자금액 입력(원)"></td>
	            </tr>
	            <tr> 
	            	<th>보증금</th>
	            	<td><input type="text" class="ip" id="a3" name="deposit" placeholder="보증금 입력(원)"></td>
	            </tr>
	            <tr> 
	            	<th>월세</th>
	            	<td><input type="text" class="ip" id="a4" name="m_rent" placeholder="월세 입력(원)"></td>
	            </tr>
	            <tr> 
	           		<th>대출금리</th>
	            	<td><input type="text" class="ip" id="a5" name="inter" placeholder="대출금리 입력(%)"></td>
	            </tr>                     
	            <tr>
	            	<td colspan="3">
	             	<input type="button" value="계산하기" id="butt" onclick="sum()">
	            </tr>      
        	</table>
        </form>
     </div>
     <br><br>
      <div id="resultshow" style="display: none">
            <table>
                <tr>
                    <th colspan="2">========================<br>계산 결과<br>========================<br><br></th>
                </tr>
                <tr>
                    <th>매수할금액</th>
                    <td><input type="text" class="ip" id="n1"><b>원</b></td>
                </tr>
                <tr>
                    <th>투자금액</th>
                    <td><input type="text" class="ip" id="n2"><b>원</b></td>
                </tr>
                <tr>
                    <th>보증금</th>
                    <td><input type="text" class="ip" id="n3"><b>원</b></td>
                </tr>
                <tr>
                    <th>필요한 대출금</th>
                    <td><input type="text" class="ip" id="n4"><b>원</b></td>
                </tr>
                <tr>
                    <th>대출금리</th>
                    <td><input type="text" class="ip" id="n5"><b>%</b></td>
                </tr>
                <tr>
                    <th>월세</th>
                    <td><input type="text" class="ip" id="n6"><b>원</b></td>
                </tr>
                <tr>
                    <th>대출금 한달 이자</th>
                    <td><input type="text" class="ip" id="n7"><b>원</b></td>
                </tr>
                <tr>
                    <td colspan="2">================================================</td>
                </tr>
                <tr>
                    <th>월 실수익</th>
                    <td><input type="text" class="ip" id="n8"><b>원</b></td>
                </tr>
                <tr>
                    <th>년 실수익</th>
                    <td><input type="text" class="ip" id="n9"><b>원</b></td>
                </tr>
                <tr>
                    <th><b>투자수익률</b></th>
                    <td><input type="text" class="ip" id="n10"><b>%</b></td>
                </tr>
                <tr>
                    <td colspan="2"><br><br>*해당 계산기에서는 상가 또는 기타 부동산의 취득시 부가세의 부분에 대해서는 포함되지 않았습니다.*</td>
                </tr>
            </table>
        </div>
</div>

</body>
</html>