<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>신DTI/DSR 계산기</title>
    <link rel="stylesheet" type="text/css" href="./css/calculator/calc4.css">
</head>
<script src="./js/calculator/calc4.js"></script>

<body onload="init()">
    <div id="wrapper">
        <header>
            <input id="newDTIcal" type="radio" name="btn" class="input1" onclick="openDTI()" checked="checked">
            <label for="newDTIcal" class="label_btn1">신DTI</label>
            <input id="DSRcal" type="radio" name="btn" class="input2" onclick="openDSR()">
            <label for="DSRcal" class="label_btn2">DSR</label>
        </header>
        <section>
            <div id="newDTI" style="display: block">
                <div class="explain">
                    <span class="headintro">신DTI</span><br>
                    <span class="headcont"> 신DTI는 DTI의 맹점을 보완하기 위해 나온 것으로 현재 신청하고 있는 대출금 외에도 기존에 받고 있는 다른 대출들 중 
                    <br>주택담보대출이 있다면 그 대출에 대해서도 원리금상환액을 취한다. '주택 담보'를 기준으로 잡았기 때문에 부동산 
                    <br>과열에 대한 대응책이라고 볼 수 있다.
                    </span>
                </div>
                <div class="calculator">
                    <div class="calhead">
                        <div class="headname1">연소득</div><input type="text" id="DTIinput1">
                        <div class="headtext">만원</div>
                        <div class="headname2">기타부채</div><input type="text" id="DTIinput2" placeholder="주택담보대출 제외">
                        <div class="headtext">만원</div>
                        <div class="headinputopen" onclick="opencal(0)">주택담보대출 입력▼</div>
                    </div>
                    <div class="calinput">
                        <div id="DTIinput1">
                            <div class="inputname">주택담보대출1</div>
                            <div class="moneyname">대출금액</div><input type="text" id="DTImoney1" value="0">
                            <div class="inputtext">만원</div>
                            <div class="datename">대출기간</div><input type="text" id="DTIdate1" value="0">
                            <div class="inputtext">개월</div>
                            <div class="ratename">대출이율</div><input type="text" id="DTIrate1" placeholder="미입력시 4.5%">
                            <div class="inputtext">%</div>
                        </div>
                        <div id="DTIinput2">
                            <div class="inputname">주택담보대출2</div>
                            <div class="moneyname">대출금액</div><input type="text" id="DTImoney2" value="0">
                            <div class="inputtext">만원</div>
                            <div class="datename">대출기간</div><input type="text" id="DTIdate2" value="0">
                            <div class="inputtext">개월</div>
                            <div class="ratename">대출이율</div><input type="text" id="DTIrate2" placeholder="미입력시 4.5%">
                            <div class="inputtext">%</div>
                        </div>
                    </div>
                    <div id="buttonbar">
                        <button onclick="showDTI()">결과</button>
                        <button onclick="clearAll()">초기화</button>
                    </div>
                </div>
                <div class="caution">
                    1. 기본 대출이율은 연 4.5% 입니다.<br> 2. 주택 담보대출이 한건이라도 없으면 자세한 결과값이 나오질 않습니다. <br> 3. 이 계산은 대략적인 수치만 나타내므로 꼭 전문가와 상담하시길 바랍니다.
                </div>
                <div id="DTIresult" style="display: none">
                    <table>
                        <tr>
                            <td class="tablehead" colspan="2">========================<br>신DTI 계산 결과<br>========================<br><br></td>
                        </tr>
                        <tr>
                            <th class="tablehead">연소득</th>
                            <td id="DTI_year_income" class="result_money"></td>
                        </tr>
                        <tr>
                            <th class="tablehead">기타부채 금액</th>
                            <td id="DTI_etc_debt" class="result_money"></td>
                        </tr>
                        <tr>
                            <th class="tablehead">연원리금1</th>
                            <td id="DTI_year_debt1" class="result_money"></td>
                            <!--<td class="result_etc">(대출잔액 + 총이자) / 대출기간 * 12</td>-->
                        </tr>
                        <tr>
                            <th class="tablehead">연원리금2</th>
                            <td id="DTI_year_debt2" class="result_money"></td>
                            <!--<td class="result_etc">(대출잔액 + 총이자) / 대출기간 * 12</td>-->
                        </tr>
                        <tr>
                            <th class="tablehead">총 연원리금</th>
                            <td id="DTI_year_debtAll" class="result_money"></td>
                        </tr>
                        <tr>
                            <th class="tablehead">기타 부채이자부담</th>
                            <td id="DTI_etc_debtAll" class="result_money"></td>
                            <!--<td class="result_etc">기타부채금액 * 평균이자율(4.5%)</td>-->
                        </tr>
                        <tr>
                            <th class="tablehead">신DTI</th>
                            <td id="result_newDTI" class="result_money"></td>
                            <!--<td class="result_etc">(주담대연원리금상환액 + 기타부채이자상환액) / 연소득 * 100 </td>-->
                        </tr>
                    </table>
                </div>
            </div>
            <div id="DSR" style="display: none">
                <div class="explain">
                    <span class="headintro">DSR</span><br>
                    <span class="headcont"> DTI보다 더 강화된 지표로, 기대출의 원리금 상환 부담까지 감안하여 계산한다. <br> 
                    은행끼리 대출금액뿐만 아니라 계산식을 통해 산출된 원리금을 공유해 <br>연간 총 원리금 부담액이 얼마인지를 합산해 연소득으로 나눈다.
                    </span>
                </div>
                <div class="calculator">
                    <div class="calhead">
                        <div class="headname1">연소득</div><input type="text" id="DSRinput1">
                        <div class="headtext">만원</div>
                        <div class="headinputopen" onclick="opencal(1)">주택담보대출 입력▼</div>
                    </div>
                    <div class="calinput">
                        <div id="DSRinput1">
                            <div class="inputname">주택담보대출1</div>
                            <div class="moneyname">대출금액</div><input type="text" id="DSRmoney1" value="0">
                            <div class="inputtext">만원</div>
                            <div class="datename">대출기간</div><input type="text" id="DSRdate1" value="0">
                            <div class="inputtext">개월</div>
                            <div class="ratename">대출이율</div><input type="text" id="DSRrate1" placeholder="미입력시 4.5%">
                            <div class="inputtext">%</div>
                        </div>
                        <div id="DSRinput2">
                            <div class="inputname">주택담보대출2</div>
                            <div class="moneyname">대출금액</div><input type="text" id="DSRmoney2" value="0">
                            <div class="inputtext">만원</div>
                            <div class="datename">대출기간</div><input type="text" id="DSRdate2" value="0">
                            <div class="inputtext">개월</div>
                            <div class="ratename">대출이율</div><input type="text" id="DSRrate2" placeholder="미입력시 4.5%">
                            <div class="inputtext">%</div>
                        </div>
                    </div>
                    <div id="buttonbar">
                        <button onclick="showDSR()">결과</button>
                        <button onclick="clearAll()">초기화</button>
                    </div>
                </div>
                <div class="caution">
                    1. 기본 대출이율은 연 4.5% 입니다.<br> 2. 주택 담보대출이 한건이라도 없으면 자세한 결과값이 나오질 않습니다. <br> 3. 이 계산은 대략적인 수치만 나타내므로 꼭 전문가와 상담하시길 바랍니다.
                </div>
                <div id="DSRresult" style="display: none">
                    <table>
                        <tr>
                            <td class="tablehead" colspan="2">========================<br>DSR 계산 결과<br>========================<br><br></td>
                        </tr>
                        <tr>
                            <th class="tablehead">연소득</th>
                            <td id="DSR_year_income" class="result_money"></td>
                        </tr>

                        <tr>
                            <th class="tablehead">연원리금1</th>
                            <td id="DSR_year_debt1" class="result_money"></td>
                        </tr>
                        <tr>
                            <th class="tablehead">연원리금2</th>
                            <td id="DSR_year_debt2" class="result_money"></td>
                        </tr>
                        <tr>
                            <th class="tablehead">총 연원리금</th>
                            <td id="DSR_year_debtAll" class="result_money"></td>
                        </tr>

                        <tr>
                            <th class="tablehead">DSR</th>
                            <td id="result_DSR" class="result_money"></td>
                            <!--<td class="result_etc">주담대연원리금상환액 / 연소득 * 100 </td>-->
                        </tr>
                    </table>
                </div>
            </div>
        </section>
    </div>
</body>

</html>