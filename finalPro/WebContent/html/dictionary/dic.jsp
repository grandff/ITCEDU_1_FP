<%@page import="board.BoardDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link rel="stylesheet" type="text/css" href="./css/dictionary/dic.css"> 

	<!-- <link rel="stylesheet" type="text/css" href="./../../css/dictionary/dic.css"> -->
</head>
<!-- <script src="./../../js/dictionary/dic.js"></script> -->
	<script type="text/javascript" src="./js/dictionary/dic.js"></script>
<body>
	<div id = "wrapper">
		<h1>용어정리</h1>	<div id ="titlelist"></div><br>

		<img src="./img/dic/5_1.png" width="240px" height="240px" onclick="on1()" onmouseover="hon1()">    
	    
	    <div id="overlay1" onclick="off1()">
	  		<div id="text">
	  		<h1>부동산 뉴스에 꼭 등장하는 용어</h1><br>
	  		
	  			<b>전용면적</b><br>
				아파트 등의 공동주택에서 공용면적을 제외한 나머지 바닥의 면적의 넓이를 말합니다.<br>
				방과 거실, 주방, 화장실 등 주로 거주자의 전용 생활공간이 이에 속합니다. 단, 발코니는 전용면적에서 제외.<br><br>
				
				<b>주거공용면적과 분양면적</b><br>
				전용면적 외에 다른 세대와 공동으로 사용하는 공간을 말합니다. 계단, 복도, 엘리베이터 등이 이에 해당된다.<br>
				분양면적(공급면적)이란 전용면적과 주거공영면적을 합한 것을 의미.<br><br>
				
				<b>연면적</b><br>
				대지에 들어선 하나의 건축물의 바닥면적의 합계를 말합니다. 여기에는 지상층은 물론 지하층과 주차장시설까지 <br>
				모두 포함됩니다. 예를 들어 각 층의 바닥 면적이 400제곱미터인 지상 3층짜리 건물을 지었다면 연면적은 <br>
				1200제곱미터(400제곱미터*3).<br><br>
				
				<b>건축면적과 대지면적</b><br>
				건물의 외벽 또는 기둥의 중심선으로 둘러싸인 면적을 말하는데, 보통 건물 1층의 바닥 면적이라고 생각하면 쉽다.<br>
				대지면적은 건축법상 건물을 지을 수 있는 땅의 넓이를 말한다.<br><br>
			</div></div>
			
			
		<img src="./img/dic/1_2.png" width="240px" height="240px" onclick="on2()">
		<div id="overlay2" onclick="off2()">
		  	<div id="text">
		  	<h1>재건축과 재개발의 차이</h1><br>
			
				<b>재개발</b><br>
				재개발은 정비기반시설이 열악하고 노후, 불량 건축물이 밀집한 지역에서 주거환경을 개선하거나 상업지역, 공업지역 등에서<br>
				도시기능의 회복 및 상권활성화 등을 위하여 도시환경을 개선하기 위한 사업을 말한다.<br><br>
				
				<b>재건축</b><br>
				재건축은 정비기반시설은 양호하나 노후, 불량 건축물에 해당하는 공동주택이 밀집한 지역에서 주거환경을 개선하기 위한 사업을 말함.<br><br>
				</div></div>
				
		
		<img src="./img/dic/1_3.png" width="240px" height="240px" onclick="on3()">
		    <div id="overlay3" onclick="off3()">
		  	<div id="text">
		  	<h1>주택 종류</h1><br>
			
				<b>공동주택</b><br>
				하나의 건축물 안에서 서로 독립적인 여러세대 생활할수 있도록 만들어진 주택.<br>
				-아파트, 다세대주택, 연립주택등.<br><br>
					
				<b>단독추택</b><br>
				공동주택이 아닌 주택으로 보통 하나의 주택안에 한세대가 생활할 수 있는 구조.<br>
				-건축법에서는 다가구주택 다중주택, 공관도 포함.<br><br>
					
				<b>아파트</b><br>
				한 동의 건물안에 독립된 여러세대가 살수 있게 만들어진 공동주택으로, 보통 층수가 5개 층 이상인 주택.<br>
				-공동주택의 대표적인 형태.<br><br>
					
				<b>다세대주택</b><br>
				한 동이 건물 안에 여러 세대가 거주할 수 있도록 주거공간이 분리된 공동주택으로 연면적이 660입방 이하이고 층수가 4층이하인 주택.<br>
				-구분소유이고, 세대별 매매 및 분양이 가능.<br><br>
					
				<b>다가구주택</b><br>
				단독소유인 닥독주택의 일종이지만 건물 내에 여러 가구가 살수 있도록 만들어진 건물로 연면적이 660입방 이하이고 주택 층수가 3층 이하인 주택.<br>
				-구분소유가 불가능하고 각 가구를 분리하여 매매할수 없음 건물 전체로만 매매가능.<br><br>
					
				<b>다중주택</b><br>
				연면적 330이방이하 3층 이하의 건물인 단독주택 일종으로, 여러 사람이 장기간 거주할 수 있도록 만들어져 있으나 독립된 주거 형태를 갖추지 아니한 주택.<br>
				-각 실별 욕실은 설치할 수 있으나 취사시설은 설치하지 않은것.<br><br>
				</div></div>
	
		
		<img src="./img/dic/1_4.png" width="240px" height="240px" onclick="on4()">
		    <div id="overlay4" onclick="off4()">
		  	<div id="text">
		  	<h1>부동산 투자 '리츠' 들어보셨나요?</h1><br>
			
				<b>리츠란?</b><br>
				기본 투자자로부터 자금을 모아 부동산에 투자한 뒤에 발생한 이익을 다시 투자자들게 되돌려주는 부동산 투자 신탁입니다. <br>
				-추자자가 직접 투자하는 '직접투자'와 대비되는 '간접투자'이다.<br>
				-부동산투자회사가 주식을 발행하여 투자자를 모으면 그 주식을 취득하여 부동산에 직접 투자하는 것과 같은 효과를 얻을 수 있다.<br>
				-리츠의 구조는 주식시장에서 펀드와 비슷하지만 투자대상이 금융자산이 아닌 부동산이라고 이해하는게 쉽다.<br>
				-리츠의 투자자산 유형은 유형은 오피스텔, 호텔, 물류센터 등 다양하다.<br><br>
				
				<b>-유동성-</b><br>
				리츠는 코스피에 상장되어 자유로운 매매가 가능합니다.<br>
				리츠의 매각을 통해 투자 원본을 회수할 수 있습니다.<br>
				<b>-안전성-</b><br>
				리츠는 부동산이라는 담보가 존재하게 되어 안전하며, 일반 기업의 주식에 비해서 안전합니다.<br>
				<b>-수익성-</b><br>
				투자자들에게 투자운용수익의 결과로 발생하게 된 이익의 90%이상을 배당하도록 규정되어 있습니다.<br>
				주식보다 안정적인 배당소득을 확보할 수 있으며 리츠가격이 상승할때에는 매각하여 매매차익을 얻는 방법도 있습니다.<br>
				<b>-세금감면-</b><br>
				리츠를 통하여 투자를 하게 되면 취득에 동반되는 취득세 및 등록세를 감면받을 수 있습니다.<br>
				직접투자 할 때보다 세금을 절감할 수 있는 장점이 있습니다.<br><br>
													
				</div></div>
				
		<img src="./img/dic/1_5.png" width="240px" height="240px" onclick="on5()">
		    <div id="overlay5" onclick="off5()">
		  	<div id="text">
		  	<h1>간단한 부동산 법률 용어</h1><br>
			
				<b>임대인:</b>집주인<br>
				<b>임차인:</b>해당 건물에 들어가서 거주하는 세입자.<br><br>
				<b>임대차계약:</b> 임대인에게 부동산을 임대하는 계약.<br>
				<b>전대차계약:</b> 임대한 건물을 또 다른 사람에게 임대하는 것.<br><br>
				<b>확정일자:</b>법원, 동사무소, 등기소 등에서 찍어주는 도장.주택임대차계약의 체결 날짜를 확인해줍니다.<br>
				<b>주택임대차 보호법:</b>주택 임대 계약시 상대적으로 약자일 수 밖에 없는 임차인을 보호하기 위해 만들어진 법입니다.<br>
	                      	일정기간의 계약기간을 보장해주고 집세 인상비율의 최대치도 정해져 있으며 대향력과 우선변제권을 보장.<br><br>
				<b>대항력:</b> 임차권을 주장하면서 해당 주택을 계속 사용할 수 있는것.<br>
				<b>우선변제권:</b>건물이 경매로 넘어갔을 때에 우선적으로 보증금을 받을 수 있는 권리.
				<br><br>							
				</div></div>
				
				
				
		<img src="./img/dic/1_6.png" width="240px" height="240px" onclick="on6()">
		    <div id="overlay6" onclick="off6()">
		  	<div id="text">
		  	<h1>맥세권, 벅세권, 스세권을 모른다면 당신은 아재?</h1><br>
			
				<b>역세권</b><br>
				집에서 도보 5~10분거리에 지하철 역 등이 있는경우<br><br>
				<b>학세권</b><br>
				주택 인근에 학교나 학원가가 가까운 경우<br>
				학세권은 주택 인근에 학교나 학원가가 가까운 경우를 뜻하는 것으로써,<br>
				자녀 교육에 대한 의욕이 높은 실수요자들인 30~40대의 교육 열기가 만들어낸 신조어다.<br><br>
				<b>맥세권</b><br>
				맥도날드+역세권<br>
				맥도날드 서비스가 가능한 지역으로 주문 후 배달까지 17분 30초.<br>
				같은 개념으로 벅세권(버거+역세권).<br><br>
				<b>스세권</b><br>
				집에서 도보 가능한 거리에 스타벅스가 있다면 바로 스세권.<br>
				국내에서는 연간 13만톤 이상의 커피를 소비하고 10명중 8명은 하루 2잔 이상 커피를 마신다고 하니 한국인의
				커피사랑은 엄청나다고 할 수 있다.<br> 
				스세권은 집 근처에 스타벅스가 도보 가능한 거리에 위치한 지역을 말하는데 출퇴근할 때나 주말에 커피 한잔을
				즐기려는 직장인들과 학생들에게 인기가 높다.<br><br>
				<b>몰세권</b><br>
				몰(Mall)+역세권<br>
				문화생활을 편리하게 즐길 수 있는 곳 강남 코엑스몰, 영등포 타임스퀘어 등이 대표적.
				풍요로운 삶의 질을 생각한다면 몰세권과 의세권.<br>
			
				</div></div>
				
				
		<img src="./img/dic/1_7.jpg" width="240px" height="240px" onclick="on7()">
		    <div id="overlay7" onclick="off7()">
		  	<div id="text">
		  	<h1>분양 공고를 볼 때 꼭 확인해 봐야 하는것.</h1><br>
			
				<b>시행사</b><br> 
				주택을 지을 때 모든 공사의 책임을 맡아 전 과정을 관리,감독하는 회사를 말합니다.<br>
				주택 건축을 위한 기초적인 행정절차부터 계약자들의 입주까지 모든 과정을 담당하는 회사.
				<br><br>
				
				<b>시공사</b><br>
				시행사로부터 사업을 발주 받아 실제로 건축을 하는 회사를 말하니다.<br>
				현대건설, 대우건설 등 우리가 흔히 알고 있는 대형 건설사들이 바로 시공사에 속합니다.<br><br>
				
				<b>신탁사</b><br>
				주택 매매 시 계약자는 계약금을 시행사에 바로 주는 것이 아니라 신탁사를 통해 계약금을 위탁하게 되는데,<br>
				이는 시행사에 자금 상 문제가 생길 경우 소비자의 피해를 최소화하기 위해 만든 안전장치.<br><br>
				
				<b>감리사</b><br>
				지식과 기술 경험 등을 바탕으로 주택 공사 시공 과정에 문제가 없는지 확인하는 역할을 합니다.<br>
				설계도와 기타 관계서류대로 시공되는지를 감독.<br><br>
				</div></div>
				
			<img src="./img/dic/1_8.jpg" width="240px" height="240px" onclick="on8()">
		    <div id="overlay8" onclick="off8()">
		  	<div id="text">
		  	<h1>부동산 계약서 쓸 때 알아두면 좋은 용어들</h1><br>
			
				<b>우선변제권</b><br>
				임대한 주택이 경매나 공매에 부쳐졌을 때 임차인이 보증금을 우선 변제받을 수 있는 권리. 단, 임차인이 확정일자(계약 체결 사실을 확인<br>
				하기 위해 법원이나 동사무소 등에서 임대차계약서에 도장으로 찍어 준 날짜)를 받은 경우에만 보장받을 수 있다.<br><br>
				
				<b>대항력</b><br>
				확정일자를 통해 법률상의 권리가 발생하면 혹여 임대주택의 소유권이 제3자에게 넘어가더라도 계약 기간동안은 퇴거하지 않고 살 수 있는데<br>
				 이를 대항력이라고 합니다. 대항력이 성립하기 위해서는 돈을 주고받은 것을 입증할 수 있는 임대차계약과 전입신고(학정일자), 점유 등<br>
				 3가지 조건을 충족해야 합니다. 임대차 기간 종료 후 보증금을 돌려받지 못했다면 임차인은 '임차권등기 명령'을 신청해 전입신고와<br>
				 점유 없이도 기존의 대항력을 유지할 수 있다.<br><br>
				 
				<b>유치권</b><br>
				 다른 사람의 물건이나 유가 증권을 담보로 빌려준 금액을 돌려받을 때까지 담보물을 점유할 수 있는 권리를 말함.<br>
				 보통 건물 공사와 관련해 비용을 받지 못했을 때 주로 발생.<br><br>
				</div></div>

		
</body>
</html>