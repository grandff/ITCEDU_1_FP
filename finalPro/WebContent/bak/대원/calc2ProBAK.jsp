<%@page import="java.text.DecimalFormat"%>
<%@page import="java.text.NumberFormat"%>
<%@page import="org.apache.catalina.connector.Request"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
DecimalFormat df = new DecimalFormat("###,###");


String input_total=request.getParameter("total");     //매수금액 입력값
String input_invest=request.getParameter("invest");   //투자금액 입력값
String input_deposit=request.getParameter("deposit"); //보증금액 입력값
String input_rent=request.getParameter("m_rent");     //월세 입력값
String input_inter=request.getParameter("inter");     //은행금리 입력값

int num1=Integer.parseInt(input_total);
int num2=Integer.parseInt(input_invest);
int num3=Integer.parseInt(input_deposit);
int num4=Integer.parseInt(input_rent);
double num5=Integer.parseInt(input_inter);


double y_ren=(num4*12);              //월세로 얻는 년 수익.
int dechul=(num1-num2-num3);         //대출원금.
double gmri=(num5/100);              //금리 %로 계산.
double y_eza=(dechul*gmri);          //대출금리 년 이자.
double m_eza=(y_eza/12);             //대출금리 월 이자.
double top=(y_ren-y_eza);			 //년 실수익
double meme=(num1-dechul-num3);      //실투자 금액.
double result=((top/meme)*100);      //투자수익률 결과.


out.print("<b>매수할금액:</b> "+ num1+" 원<br>");
out.print("<b>투자금액:</b> "+ num2+" 원<br>");
out.print("<b>보증금:</b> "+ num3 +" 원<br>");
out.print("<b>필요한 대출금:</b> "+dechul+" 원 <br>");
out.print("<b>대출금리:</b> "+num5 +"%<br>");
out.print("<b>월세:</b> " + num4+" 원<br>");
out.print("<b>대출금 한달 이자</b>: " + m_eza+" 원<br>");
out.print("<b>============================</b><br>");
out.print("<b>월 실수익:</b> " + (num4-m_eza)+" 원<br>");
out.print("<b>년 실수익:</b> " + top + " 원 <br>");
out.print("<b>투자수익률:</b> " + result + " % <br>");
out.print("<b>============================</b><br>");

%>