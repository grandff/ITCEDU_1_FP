<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>

<!doctype html>
<html>
<head>
    <meta charset = "utf-8">
    <script src = "./jquery/jquery-3.2.1.js"></script>
    <link rel="stylesheet" type="text/css" href="./css/index/index_main.css">
</head>
<!--  -->
<body>
    <header id="indexheader">
        <div id="loginbar">
            <a href="/finalPro/memberController.do?q=401" style="color:black; font-weight: bold">로그인</a> &nbsp;&nbsp;&nbsp;
            <a href="/finalPro/memberController.do?q=402" style="color:black; font-weight: bold">회원가입</a>
        </div>
        <div id = "logo">
        	건물주가 꿈이에요
        </div>
        <ul id="nav">
        	<li><a href="/finalPro/memberController.do?q=100" class = "headname">메인</a></li>
            <li><a href="#" class="headname">계산기</a>
                <ul>
                    <li>
                        <a href="/finalPro/memberController.do?q=101" class="subname">중개보수료</a>
                    </li>
                    <li>
                        <a href="/finalPro/memberController.do?q=102" class="subname">투자수익률</a>
                    </li>
                    <li>
                        <a href="/finalPro/memberController.do?q=103" class="subname">취득세</a>
                    </li>
                    <li>
                        <a href="/finalPro/memberController.do?q=104" class="subname">신DTI/DSR</a>
                    </li>
                </ul>
            </li>
            <li><a href="/finalPro/memberController.do?q=200" class="headname">용어정리</a>
            </li>
            <li><a href="#" class="headname">게시판</a>
                <ul>
                    <li>
                        <a href="/finalPro/memberController.do?q=301" class="subname">Q&A</a>
                    </li>
                    <li>
                        <a href="/finalPro/memberController.do?q=302" class="subname">이슈게시판</a>
                    </li>
                    <li>
                        <a href="/finalPro/memberController.do?q=303" class="subname">자랑게시판</a>
                    </li>
                    <li>
                        <a href="/finalPro/memberController.do?q=304" class="subname">매매게시판</a>
                    </li>
                </ul>
            </li>
        </ul>
        </header>
</body>
</html>