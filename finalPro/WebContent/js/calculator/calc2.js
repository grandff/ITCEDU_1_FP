function init(){
        document.frm01.total.focus();
    } 
    
function sum(){
    	
    	document.getElementById("resultshow").style.display = 'block';
    	
    	var num1 = document.getElementById("a1").value;//매수금액 불러오기
    	var num2 = document.getElementById("a2").value;//투자금액 불러오기
    	var num3 = document.getElementById("a3").value;//보증금 불러오기
    	var num4 = document.getElementById("a4").value;//월세 불러오기
    	var num5 = document.getElementById("a5").value;//대출금리 불러오기
    	
	    var y_ren=(num4*12);              //월세로 얻는 년 수익.
	    var dechul=(num1-num2-num3);      //대출원금.
	    var gmri=(num5/100);              //금리 %로 계산.
	    var y_eza=(dechul*gmri);          //대출금리 년 이자.
	    var m_eza=(y_eza/12);             //대출금리 월 이자.
	    var top=(y_ren-y_eza);			  //년 실수익
	    var meme=(num1-dechul-num3);      //실투자 금액.
	    var result=((top/meme)*100);      //투자수익률 결과.
	    
	    document.getElementById("n1").value = numberWithCommas(num1); //매수할금액
	    document.getElementById("n2").value = numberWithCommas(num2); //투자금액
	    document.getElementById("n3").value = numberWithCommas(num3); //보증금
	    document.getElementById("n4").value = numberWithCommas(Math.round(dechul)); //필요한 대출금
	    document.getElementById("n5").value = numberWithCommas(Math.round(num5)); //대출금리
	    document.getElementById("n6").value = numberWithCommas(num4); //월세
	    document.getElementById("n7").value = numberWithCommas(Math.round(m_eza)); //대출금 한달 이자
	    document.getElementById("n8").value = numberWithCommas((num4-m_eza)); //월 실수익
	    document.getElementById("n9").value = numberWithCommas(top); //년 실수익
	    document.getElementById("n10").value = numberWithCommas(Math.round(result)); //투자 수익률
  }

function numberWithCommas(x) {
    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}