<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="./css/calculator/calc3.css">
</head>
<script src="./js/calculator/calc3.js"></script>

<body onload="init()">
    <div id="wrap">
        <div id="explanation">
            <h3>취득세 계산</h3>
            <p>부동산 거래 시 부과되는 취득세 예상 금액을 산정하기 위한 참고용 계산기이며, 실제 세액과는 다소 차이가 있을 수 있습니다.<br> "개인대개인"의 유상거래인 경우에만 계산이 가능합니다.<br> 자세한 정보는 위텍스를 통해 확인하시기 바랍니다.</p>
        </div>
        <div>
            <table>
                <tr>
                    <td><input type="button" class="but" id="but1" value="농지" onclick="but(1)"></td>
                    <td><input type="button" class="but" id="but2" value="비농지" onclick="but(2)"></td>
                </tr>
                <tr>
                    <td><input type="button" class="but" id="but3" value="주택" onclick="but(3)"></td>
                    <td><input type="button" class="but" id="but4" value="토지 상가 오피스텔" onclick="but(4)"></td>
                </tr>
                <tr>
                    <td><input type="button" class="but" id="but5" value="85㎡ 이하" onclick="but(5)"></td>
                    <td><input type="button" class="but" id="but6" value="85㎡ 초과" onclick="but(6)"></td>
                </tr>
                <tr>
                    <td>취득가액</td>
                    <td><input type="text" id="txt" placeholder="취득가액을 입력하세요"></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="button" value="계산하기" class="but" id="sumbut" onclick="sum()"></td>
                </tr>
            </table>
        </div>
        <div id="resultshow">
            <table>
                <tr>
                    <td colspan="2">========================<br>취득세 계산 결과<br>========================<br><br></td>
                </tr>
                <tr>
                    <td>취득가액</td>
                    <td><input type="text" id="n1"></td>
                </tr>
                <tr>
                    <td>취득세</td>
                    <td class="tooltip"><input type="text" id="n2"><span class="tooltiptext">취득가액 * 1%</span></td>
                </tr>
                <tr>
                    <td>(+)농어촌특별세</td>
                    <td class="tooltip"><input type="text" id="n3"><span class="tooltiptext">(취득가액*2%)*감면율*10%</span></td>
                </tr>
                <tr>
                    <td>(+)지방교육세</td>
                    <td class="tooltip"><input type="text" id="n4"><span class="tooltiptext">취득가액 *(표준세율-2%)<br>*감면율*20%</span></td>
                </tr>
                <tr>
                    <td>세액합계</td>
                    <td><input type="text" id="n6"></td>
                </tr>
                <tr>
                    <td colspan="2"><br><br>* 법무사 이용시 법무수수료금액은 법무사를 통해 확인하시기 바랍니다.</td>
                </tr>
            </table>
        </div>
    </div>
</body>

</html>