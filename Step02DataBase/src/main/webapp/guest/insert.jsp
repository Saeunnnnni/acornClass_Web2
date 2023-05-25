
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
	
	//추가할 회원 정보를 MemberDto 객체에 담는다.
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
</head>
<body>
	<div class="container">
		<h1>알림</h1>
		<%if(isSuccess){ %>
			<p class="alert alert-success">
				<strong><%=writer %></strong> 님의 방명록이 저장되었습니다.
				<a class="aler-link" href="list.jsp">확인</a>
			</p>
		<%}else{ %>
			<p class="alert alert-success">
				회원정보 저장 실패! 
				<a class="aler-link" href="insertform.jsp">다시 작성</a>
			</p>
		<%} %>
	</div>
</body>
</html>












