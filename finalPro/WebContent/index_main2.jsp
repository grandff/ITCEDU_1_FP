<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>

<!doctype html>
<html>

<head>
    <meta charset="utf-8">
    <title> 건물주가 꿈이에요 </title>
    <script src = "./jquery/jquery-3.2.1.js"></script>
    <link rel="stylesheet" type="text/css" href="./css/index/index_main.css">
</head>
<%
    // ================ getParameter를 통해 주소값 가져오기 ==================
    String vCategory = request.getParameter("q");
	String vList = request.getParameter("list");
	request.setCharacterEncoding("UTF-8");
	// 10x : 계산기, 20x : 용어정리, 30x : 게시판, 40x : 로그인 기능, 50x : about
    if(vCategory != null){
    	if(vCategory.equals("100")){
    		vCategory = "./html/index/main.jsp";
    	}else if(vCategory.equals("101")){
     		vCategory = "./html/calculator/calc1.jsp";
     	}else if(vCategory.equals("102")){
     		vCategory = "./html/calculator/calc2.jsp";
     	}else if(vCategory.equals("103")){
     		vCategory = "./html/calculator/calc3.jsp";
     	}else if(vCategory.equals("104")){
    		vCategory = "./html/calculator/calc4.jsp";
    	}
    	
     	else if(vCategory.equals("200")){
     		vCategory = "/html/dictionary/dic.jsp";
     	}
    	
     	else if(vCategory.equals("300")){
     		System.out.println("전달 받은 list값 : "+vList);
     		vCategory = "/html/board/board_write.jsp?list="+vList;
     	}
     	
     	else if(vCategory.equals("301")){
     		vCategory = "./html/board/QA_list.jsp";
     	}else if(vCategory.equals("302")){
     		vCategory = "./html/board/Issue_list.jsp";
     	}else if(vCategory.equals("303")){
     		vCategory = "./html/board/Show_list.jsp";
     	}else if(vCategory.equals("304")){
     		vCategory = "./html/board/Buy_list.jsp";
     	}
    	
     	else if(vCategory.equals("401")){
     		vCategory = "./html/member/login.jsp";
     	}else if(vCategory.equals("402")){
     		vCategory = "./html/member/register.jsp";
     	}
    }
	// =============================================================
    // ========================== 기본 화면  ============================
    else{
        vCategory = "./html/index/main.jsp";
    }
	// =============================================================
%>

<body>
    <!-- 전체 사이즈 : 980px -->
    <%@ include file = "./html/index/topmenu.jsp"%>
    <div id="indexwrapper">
            <section id="indexsection">
            <jsp:include page = "<%=vCategory%>" ></jsp:include>
            </section>
            <div id="remote">
            	<div id = "remote_head">건물주가<br>꿈이에요</div>
            	<div id = "remote_list">
            		<div class = "remote_link"><a href = "#"><img src = "./img/jikbang.jpg">직방</a><span class = "showdir">▶</span></div>
            		<div class = "remote_link"><a href = "#"><img src = "./img/dabang.png">다방</a><span class = "showdir">▶</span></div>
            		<div class = "remote_link"><a href = "#"><img src = "./img/114.jpg">부동산114</a><span class = "showdir">▶</span></div>
            		<div class = "remote_link"><a href = "#"><img src = "./img/hanbang.png">한방</a><span class = "showdir">▶</span></div>
            		<div class = "remote_link"><a href = "#"><img src = "./img/naverbu.png">네이버</a><span class = "showdir">▶</span></div>
            	</div>
            </div>
    </div>
    <div id="clear"></div>
    <%@ include file = "./html/index/bottom.jsp"%>
</body>

</html>