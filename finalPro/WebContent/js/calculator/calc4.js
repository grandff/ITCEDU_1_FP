/**
 * 
 */
var num1 = 0; // 주택담보대출연원리금상환액
var year_debt1 = 0; // 연원리금1
var year_debt2 = 0; // 연원리금2
var num2 = 0; // 기타부채이자상환액
var result = 0; // 신DTI 계산 결과값
var state = -1; // 빈칸 확인을 위한 변수값

// =========================== 초기화 ================================
function init() {
    document.getElementById("DTIinput1").focus();
}
//================================================================
// ======================= DTI/DSR 선택 버튼 ===========================
function openDTI() {
    var newDTI = document.getElementById("newDTI");
    var DSR = document.getElementById("DSR");
    if (newDTI.style.display == 'none') {
        newDTI.style.display = 'block';
        DSR.style.display = 'none';
    }
}

function openDSR() {
    var newDTI = document.getElementById("newDTI");
    var DSR = document.getElementById("DSR");
    if (DSR.style.display == 'none') {
        DSR.style.display = 'block';
        newDTI.style.display = 'none';
    }
}
//=============================================================
// ====================== 초기화 버튼 =================================
function clearAll() {
    location.reload();
}
//=============================================================
// ============== 3자리수 마다 ,를 찍어줌 =============================
function numberWithCommas(x) {
    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}
//=============================================================
// ========================= 신DTI/DSR계산 ============================
function showDTI() {
    var year_income = document.getElementById("DTIinput1").value; // 연소득
    var etc_debt = document.getElementById("DTIinput2").value; // 기타부채
    var house_money1 = document.getElementById("DTImoney1").value; // 대출금액1
    var house_money2 = document.getElementById("DTImoney2").value; // 대출금액2
    var house_date1 = document.getElementById("DTIdate1").value; // 대출기간1
    var house_date2 = document.getElementById("DTIdate2").value; // 대출기간2
    var house_rate1 = document.getElementById("DTIrate1").value; // 대출이율1
    var house_rate2 = document.getElementById("DTIrate2").value; // 대출이율2
    var default_rate = 0.045; // 평균이자율

    // 대출이율 미 입력시 평균이자율로 계산
    if (house_rate1 == "" || house_rate2 == "") {
        if (house_rate1 == "") house_rate1 = default_rate;
        else if (house_rate2 == "") house_rate2 = default_rate;
    }

    // 연소득 및 기타부채는 필수 입력
    if (year_income == "" || etc_debt == "") {
        alert("연소득과 기타부채를 입력해주세요.");
        if (year_income == "") document.getElementById("DTIinput1").focus();
        else document.getElementById("DTIinput2").focus();
    } else {
        // 연원리금 계산
        year_debt1 = ((house_money1 * 10000) + ((house_money1 * 10000) * (house_rate1 * 1) / 100)) / house_date1 * 12;
        year_debt2 = ((house_money2 * 10000) + ((house_money2 * 10000) * (house_rate2 * 1) / 100)) / house_date2 * 12;
        // 주택담보대출을 하나만 입력시 하나로만 계산하도록 설정
        if (isNaN(year_debt2)) {
            num1 = (year_debt1) * 1;
        } else {
            num1 = (year_debt1 + year_debt2) * 1;
        }
        // 기타부채이자부담 계산
        num2 = (etc_debt * 10000) * default_rate * 1;
        // 신DTI 계산 : 주택담보대출연원리금상환액 + 기타부채이자상환액 / 연소득 * 100
        if (num1 == "") {
            result = 0 / year_income * 100;
        } else {
            result = (num1 + num2) / (year_income * 10000) * 100;
        }
        // 결과창 오픈 및 값 출력
        document.getElementById("DTIresult").style.display = 'block';

        document.getElementById("DTI_year_income").innerHTML = numberWithCommas(year_income * 10000);
        document.getElementById("DTI_etc_debt").innerHTML = numberWithCommas(etc_debt * 10000);
        document.getElementById("DTI_year_debt1").innerHTML = numberWithCommas(year_debt1);
        document.getElementById("DTI_year_debt2").innerHTML = numberWithCommas(year_debt2);
        document.getElementById("DTI_year_debtAll").innerHTML = numberWithCommas(num1);
        document.getElementById("DTI_etc_debtAll").innerHTML = numberWithCommas(num2);
        document.getElementById("result_newDTI").innerHTML = result.toFixed(2) + "%";
    }
}

function showDSR() {
    var year_income = document.getElementById("DSRinput1").value; // 연소득
    var house_money1 = document.getElementById("DSRmoney1").value; // 대출금액1
    var house_money2 = document.getElementById("DSRmoney2").value; // 대출금액2
    var house_date1 = document.getElementById("DSRdate1").value; // 대출기간1
    var house_date2 = document.getElementById("DSRdate2").value; // 대출기간2
    var house_rate1 = document.getElementById("DSRrate1").value; // 대출이율1
    var house_rate2 = document.getElementById("DSRrate2").value; // 대출이율2
    var default_rate = 0.045; // 평균이자율

    // 대출이율 미 입력시 평균이자율로 계산
    if (house_rate1 == "" || house_rate2 == "") {
        if (house_rate1 == "") house_rate1 = default_rate;
        else if (house_rate2 == "") house_rate2 = default_rate;
    }

    // 연소득은 필수 입력
    if (year_income == "") {
        alert("연소득을 입력해주세요.");
        document.getElementById("DSRinput1").focus();
    } else {
        // 연원리금 계산
        year_debt1 = ((house_money1 * 10000) + ((house_money1 * 10000) * (house_rate1 * 1) / 100)) / house_date1 * 12;
        year_debt2 = ((house_money2 * 10000) + ((house_money2 * 10000) * (house_rate2 * 1) / 100)) / house_date2 * 12;
        // 주택담보대출을 하나만 입력시 하나로만 계산하도록 설정
        if (isNaN(year_debt2)) {
            num1 = (year_debt1) * 1;
        } else {
            num1 = (year_debt1 + year_debt2) * 1;
        }
        // 신DTI 계산 : 주택담보대출연원리금상환액 + 기타부채이자상환액 / 연소득 * 100
        if (num1 == "") {
            result = 0 / year_income * 100;
        } else {
            result = (num1) / (year_income * 10000) * 100;
        }
        // 결과창 오픈 및 값 출력
        document.getElementById("DSRresult").style.display = 'block';

        document.getElementById("DSR_year_income").innerHTML = numberWithCommas(year_income * 10000);
        document.getElementById("DSR_year_debt1").innerHTML = numberWithCommas(year_debt1);
        document.getElementById("DSR_year_debt2").innerHTML = numberWithCommas(year_debt2);
        document.getElementById("DSR_year_debtAll").innerHTML = numberWithCommas(num1);
        document.getElementById("result_DSR").innerHTML = result.toFixed(2) + "%";
    }
}
//=============================================================