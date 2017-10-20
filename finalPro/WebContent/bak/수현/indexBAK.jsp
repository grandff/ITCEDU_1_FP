<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="./css/index/index.css">
</head>

<body style = "background: gray">
    <img src="img/index1_1.png" id="mainimg" width="100%" height="970px" usemap="#indexmap" >

    <map name="indexmap">
      <area shape="rect" coords="274,530,420,648" alt="Menu1" href="./index_main2.jsp?q=101" id="test">
      <area shape="rect" coords="498,324,747,452" alt="Menu2" href="./index_main2.jsp?q=201">
      <area shape="rect" coords="880,253,1015,381" alt="Menu3" href="./index_main2.jsp?q=301">
      <area shape="circle" coords="1281,421,80" alt="Menu4" href="./index_main2.jsp?q=401">
      <area shape="circle" coords="1557,614,80" alt="Menu5" href="./index_main2.jsp?q=501">
    </map>
</body>

</html>