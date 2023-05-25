
<%@page import="test.guest.dao.GuestDao"%>
<%@page import="test.member.dao.MemberDao"%>
<%@page import="test.guest.dto.GuestDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. post 방식으로 전송되는 회원의 이름, 주소를 추출한다.
	request.setCharacterEncoding("utf-8");
	String writer=request.getParameter("writer");
	String content=request.getParameter("content");
	String pwd=request.getParameter("pwd");
	String regdate=request.getParameter("regdate");
	
	//2. 정보를 담기!
	GuestDto dto=new GuestDto();
	dto.setWriter(writer);
	dto.setContent(content);
	dto.setPwd(pwd);
	dto.setRegdate(regdate);
	
	GuestDao dao=GuestDao.getInstance();
	boolean isSuccess=dao.insert(dto);
	
	
	
	//3. 응답한다.
%>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/member/insert.jsp</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" />

<style>
	a{
		text-decoration: none;
		border: 1px solid #fffff;
	}
	
	a:hover{
		
	}
	
	h1{
		text-align: center;
		margin:30px 0;
	}
	
</style>
</head>
<body>
<!-- html의 주석  -->
<%-- jsp의 주석 --%>


	<div class="container">
		<h1>알림</h1>
		<%if(isSuccess){ %>
			<p class="alert alert-success">
				<strong><%=writer %></strong> 님의 방명록이 저장되었습니다.
				<a class="alert-link" href="list.jsp">확인</a>
			</p>
		<%}else{ %>
			<p class="alert alert-success">
				등록 실패! 
				<a class="alert-link" href="insertform.jsp">다시 작성</a>
			</p>
		<%} %>
		
		
		<!-- 
		자바스크립트로 작성
		<%-- <%if(isSuccess){ %>
			alert("글을 성공적으로 등록했습니다");
			javascript로 경로 이동
			location.href="${pageContext.request.contextPath }/guest/list.jsp";
		<%}else{ %>
			<p class="alert alert-success">
				alert("등록 실패!"); 
				location.href="${pageContext.request.contextPath }/guest/insertform.jsp";
			</p>
		<%} %> --%> -->
	</div>
</body>
</html>












