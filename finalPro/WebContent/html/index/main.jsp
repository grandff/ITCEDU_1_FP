<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<%
	/*
	참고 사이트 :
		https://ko.wix.com/website-template/view/html/1966?originUrl=https%3A%2F%2Fko.wix.com%2Fwebsite%2Ftemplates%2Fhtml%2Fbusiness%2Ffinance-law%2F1&bookName=&galleryDocIndex=6&category=business
		https://ko.wix.com/website-template/view/html/667?originUrl=https%3A%2F%2Fko.wix.com%2Fwebsite%2Ftemplates%2Fhtml%2Fbusiness%2F2&bookName=&galleryDocIndex=9&category=business
		https://ko.wix.com/website-template/view/html/754?originUrl=https%3A%2F%2Fko.wix.com%2Fwebsite%2Ftemplates%2Fhtml%2Fbusiness%2Freal-estate%2F1&bookName=&galleryDocIndex=7&category=business
	*/
	 // ================ getParameter를 통해 주소값 가져오기 ==================
    String vContent = "./contDic.jsp";
	String vUrlCss="", vUrlJs, vUrlJquery = "";
	String vUrl = request.getContextPath();
	vUrlCss = vUrl + "/css/index/main.css";
    
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="<%=vUrlCss%>">
</head>
<script src = "<%=vUrl %>/js/index/imgslide.js"></script>
<script src = "<%=vUrl %>/jquery/jquery-3.2.1.min.js"></script>
<script>
$(document).ready(function(){
	
    $("a#menu1").click(function(){
    	$("li#li1").css('background-color','rgba(32, 86, 172, 0.96)');
    	$("a#menu1").css('color','white');
    	$("li#li2").css('background-color','white');
    	$("a#menu2").css('color','black');
    	$("li#li3").css('background-color','white');
    	$("a#menu3").css('color','black');
    	$("li#li4").css('background-color','white');
    	$("a#menu4").css('color','black');
        $("div#contView").load("./html/index/contDic.jsp");
    });
    $("a#menu2").click(function(){
    	$("li#li1").css('background-color','white');
    	$("a#menu1").css('color','black');
    	$("li#li2").css('background-color','rgba(32, 86, 172, 0.96)');
    	$("a#menu2").css('color','white');
    	$("li#li3").css('background-color','white');
    	$("a#menu3").css('color','black');
    	$("li#li4").css('background-color','white');
    	$("a#menu4").css('color','black');
    	$("div#contView").load("./html/index/contQA.jsp");
    });
    $("a#menu3").click(function(){
    	$("li#li1").css('background-color','white');
    	$("a#menu1").css('color','black');
    	$("li#li2").css('background-color','white');
    	$("a#menu2").css('color','black');
    	$("li#li3").css('background-color','rgba(32, 86, 172, 0.96)');
    	$("a#menu3").css('color','white');
    	$("li#li4").css('background-color','white');
    	$("a#menu4").css('color','black');
    	$("div#contView").load("./html/index/contShow.jsp");
    });
    $("a#menu4").click(function(){
    	$("li#li1").css('background-color','white');
    	$("a#menu1").css('color','black');
    	$("li#li2").css('background-color','white');
    	$("a#menu2").css('color','black');
    	$("li#li3").css('background-color','white');
    	$("a#menu3").css('color','black');
    	$("li#li4").css('background-color','rgba(32, 86, 172, 0.96)');
    	$("a#menu4").css('color','white');
    	$("div#contView").load("./html/index/contBuy.jsp");
    });
});
</script>
<body>
	<div id="wrapper">
		<div id = "imgslider">
			<div class = "imgcontainer">
				<div id = "img1">
					<div class = "imgexplain">
						<h2>이미지1 제목</h2>
						<p>이미지1에 대한 내용이 들어갑니다용</p>
					</div>
				</div>
				<div id = "img2">
					<div class = "imgexplain">
						<h2>이미지2 제목</h2>
						<p>이미지2에 대한 내용이 들어갑니다용</p>
					</div>
				</div>
				<div id = "img3">
					<div class = "imgexplain">
						<h2>이미지3 제목</h2>
						<p>이미지3에 대한 내용이 들어갑니다용</p>
					</div>
				</div>
			</div>
			<div id = "btnbar">
				<div id = "leftbtn" onclick = "imgslide(0)"></div>
				<div id = "rightbtn" onclick = "imgslide(1)"></div>
			</div>
		</div>
		<div id = "maincont1">
			<ul id = "contnav">
				<li class = "navli" id="li1"><a href = "#" class = "navmenu" id = "menu1">용어정리</a></li>
				<li class = "navli" id="li2"><a href = "#" class = "navmenu" id = "menu2">Q&A</a></li>
				<li class = "navli" id="li3"><a href = "#" class = "navmenu" id = "menu3">자랑게시판</a></li>
				<li class = "navli" id="li4"><a href = "#" class = "navmenu" id = "menu4">매매게시판</a></li>	
			</ul>
			<div id = "contView">
				<jsp:include page = "<%=vContent%>" ></jsp:include>
			</div>
		</div>
		<div id = "maincont2">
			<div id = "cal1"><p>중개보수료</p></div>
			<div id = "cal2"><p>투자수익률</p></div>
			<div id = "cal3"><p>취득세</p></div>
			<div id = "cal4"><p>신DTI/DSR</p></div>
		</div>
	</div>
</body>
</html>