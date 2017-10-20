<%@page import="board.BoardDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <title>guest book</title>
    <link rel="stylesheet" href="./css/board/board_write.css">
</head>
<%
	request.setCharacterEncoding("UTF-8");
	ArrayList<BoardDTO> dtoL = (ArrayList)request.getAttribute("dtoL");
	String vMsg = request.getParameter("msg");
	String vUrl = request.getContextPath();
	String vList = request.getParameter("list");
	System.out.println("게시판에서 받은 list 값 : " +vList);
%>
<script>
	function selectOption(){
		var obj = document.frm01.boardSelect;
		obj.value = '<%=vList%>';
	}
</script>

<body onload = "selectOption()">
<div id="wrapper">
    <form name = "frm01" action = "/finalPro/boardController.do" method = "post">
            <div id="head">
                <label class="item">카테고리</label>
                <select name = "boardSelect">
                    <option value = "1">Q&A</option>
                    <option value = "2">이슈게시판</option>
                    <option value = "3">자랑게시판</option>
                    <option value = "4">매매게시판</option>
                </select>
                <label class="item">닉네임</label>
                <input type="text" id="user" name = "GUE_NAME">
                <label class="item">비밀번호</label>
                <input type="password" id="user" name = "GUE_PWD"><br><br>
                <label class="item">제목</label>
                <input type="text" id="user" name = "GUE_SUBJECT">
            </div>

            <div id="body">
                <textarea name = "GUE_CONTENT"></textarea>
            </div>

            <div id="footer">
                <input type="submit" class="btn" value="확인" onClick = "javascript:location.href = '<%=vUrl %>/boardController.do?q=boardWrite&list=<%=vList%>'">
                <input type="reset" class="btn" value="취소">
            </div>
     </form>
</div>

</body>

</html>