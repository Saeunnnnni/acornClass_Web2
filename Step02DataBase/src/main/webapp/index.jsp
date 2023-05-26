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
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" />
<style>
	h1{
		margin : 30px auto;
	}
	
	a{
		text-decoration:none;
	}
	
	.container > ul > li{
		list-style: none;
		color: 	#6495ED;
		font-size:28px;
		border: 5px solid #6495ED;
		width:30%;
		hieght:50px;
		border-radius: 15px;
		margin: 30px 20px;
		padding:10px;
		text-align:center;
	}
	
	.container > ul {
	
		display:flex;
	}
	
	.container > ul > li:hover{
		background-color: #6495ED;
		color: #ffffff;
	}
	
</style>
</head>
<body>
<%-- /include/navbar.jsp 페이지에게 이 부분만 응답하도록 한다
	include 되는 jsp 페이지에 파라미터를 전달할수도 있다. --%>
	<%-- current라는 파라미터로 index를 전달한것과 같은 의미 --%>
	<jsp:include page="/include/navbar.jsp">
		<jsp:param value="index" name="current"/>
	</jsp:include>
	<div class="container">
		<h1>인덱스 페이지 입니다.</h1>
		<!--<p>${pageContext.request.contextPath }</p>  -->
		<ul>
			<li><a href="${pageContext.request.contextPath }/member/list.jsp">회원 목록보기</a></li>
			<li><a href="${pageContext.request.contextPath }/guest/list.jsp">방명록 목록보기</a></li>
		</ul>
	</div>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

