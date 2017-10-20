<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>

<!doctype html>
<html>

<head>
    <meta charset="utf-8">
    <title> index_Main </title>
    <link rel="stylesheet" type="text/css" href="./css/index/index_main.css">
</head>

<body>
    <!-- 전체 사이즈 : 980px / 계산기 사이즈 : 820px <간격 : 20px> 사이드바 사이즈 : 140px-->
    <div id="wrapper">
        <header>
            <div id="loginbar">
                <a href="#" style="color:black; font-weight: bold">로그인</a> &nbsp;&nbsp;&nbsp;
                <a href="#" style="color:black; font-weight: bold">회원가입</a> &nbsp;&nbsp;&nbsp;
                <a href="#" style="color:black; font-weight : bold">About</a>
            </div>
            <ul id="nav">
                <li><a href="#" class="headname">계산기</a>
                    <ul>
                        <li>
                            <a href="#" class="subname">중개보수료</a>
                        </li>
                        <li>
                            <a href="#" class="subname">투자수익률</a>
                        </li>
                        <li>
                            <a href="#" class="subname">취득세</a>
                        </li>
                        <li>
                            <a href="#" class="subname">신DTI/DSR</a>
                        </li>
                    </ul>
                </li>
                <li><a href="#" class="headname">용어정리</a>
                    <ul>
                        <li>
                            <a href="#" class="subname">토지 용어</a>
                        </li>
                        <li>
                            <a href="#" class="subname">거래 용어</a>
                        </li>
                        <li>
                            <a href="#" class="subname">건물 용어</a>
                        </li>
                        <li>
                            <a href="#" class="subname">기타 용어</a>
                        </li>
                    </ul>
                </li>
                <li><a href="#" class="headname">게시판</a>
                    <ul>
                        <li>
                            <a href="#" class="subname">Q&A</a>
                        </li>
                        <li>
                            <a href="#" class="subname">이슈게시판</a>
                        </li>
                        <li>
                            <a href="#" class="subname">자랑게시판</a>
                        </li>
                        <li>
                            <a href="#" class="subname">매매게시판</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </header>
        <section>
            <object data="../../calc4_newDTI/html/calc4_newDTI.html"></object>
        </section>
        <div id="remote">
        </div>
        <div id="clear"></div>
        <footer>
            <div id="logo">
                건물주가 <br> 꿈이에요
            </div>
            <div id="notice">
                안되는줄 알면서 왜그랬을까아
            </div>

        </footer>
    </div>
</body>

</html>