<%@page import="board.BoardDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
   <%
	String vUrl = request.getContextPath();	
	/* String vUrlImg = request.getContextPath() + "/guestBook/images/"; */
	String vUrlCss = request.getContextPath();
	String vImg = "", vName = "", vSubject = "", vContent = "", vLogtime = "";
	vUrlCss += "/css/board/boardTitle.css";
	%>
	<link rel="stylesheet" type="text/css" href=<%=vUrlCss %>>
</head>
<%
	request.setCharacterEncoding("UTF-8");
	ArrayList<BoardDTO> dtoL = (ArrayList)request.getAttribute("dtoL");
	String vMsg = request.getParameter("msg");
	if(vMsg != null){
		%>
		<script>
			alert('<%=vMsg%>');
		</script>
		<%
	}
%>
<body>
	<div id = "wrapper">
	<h1>issue List 확인</h1>
    	<form action="/finalPro/boardController.do" method="post">
    		<div id = "titlelist">
	    		<div id = "titlehead">
	    			<div class = "headname">번호</div>
	    			<div class = "headname">제목</div>
	    			<div class = "headname">글쓴이</div>
	    			<div class = "headname">등록일</div>	    			
	    		</div>
	    		<%
	    		 if(dtoL != null){
		    		for(int i=0; i<dtoL.size(); i++){
		    			BoardDTO dto = (BoardDTO)dtoL.get(i);
		    			vName = dto.getBOD_NAME();
		    			vSubject = dto.getBOD_SUBJECT();
		    			vLogtime = dto.getBOD_LOGTIME(); 
    			%>
	    		<div id = "titlebody">
	    			<div class = "contname"><%=(i+1) %></div>
	    			<div class = "contname"><%=vSubject %></div>
	    			<div class = "contname"><%=vName %></div>
	    			<div class = "contname"><%=vLogtime %></div>
	    		</div>
	    		<%
		    		 }
	    		}else{
	    			response.sendRedirect(vUrl + "/boardController.do?q=boardTitle&list=2");
	    		}
	    		%>
	    		<div id = "titlefooter">
	    			<a href = "/finalPro/memberController.do?q=300"><input type = "button" value = "글쓰기" class = "btn" ></a>
                	<ul class="writenavi">
                   	 <li><a href="#">◁</a></li>
                    <li><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">5</a></li>
                    <li><a href="#">▷</a></li>
                	</ul>
	    		</div>
	    	</div>
    	</form>
    </div>
</body>

</html>