<%@page import="test.util.DbcpBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String cPath = request.getContextPath();
//자바 코딩영역에서는 request로 불러와야함 
//html을 출력하는 영역에서는 ${} (EL문법 :  Expression Language) 로 불러와야하고 
	//DB 연동 가능한지 테스트
	//new DbcpBean(); //객체 생성했을때 예외가 발생하지 않고 "Connection 얻어오기 성공!" 이 콘솔창에 출력되면된다.



%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index.jsp</title>
</head>
<body>
	<div class="container">
		<h1>인덱스 페이지 입니다.</h1>
		<p>${pageContext.request.contextPath }</p>
		<ul>
			<li><a href="${pageContext.request.contextPath }/member/list.jsp">회원 목록보기</a></li>
			<li><a href="${pageContext.request.contextPath }/guest/list.jsp">방명록 목록보기</a></li>
		</ul>
	</div>
</body>
</html>

