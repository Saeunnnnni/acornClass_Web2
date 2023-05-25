
<%@page import="test.guest.dao.GuestDao"%>
<%@page import="test.guest.dto.GuestDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    request.setCharacterEncoding("utf-8");
    int num = Integer.parseInt(request.getParameter("num"));
    String writer= request.getParameter("writer");
    String content= request.getParameter("content");
    String pwd = request.getParameter("pwd");
    String regdate = request.getParameter("regdate");
    
    
    GuestDto dto = new GuestDto(num, writer, content, pwd, regdate);
    boolean isSuccess=GuestDao.getInstance().update(dto);
    %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" />
</head>
<body>
	<div class="container">
		<%if(isSuccess){ %>
			<p>
				<strong><%=num %>번 회원의 정보를 수정하였습니다.</strong>
				<a class="alert-link" href="list.jsp">목록보기</a>
			</p>
		<%}else{ %>
			<p class="alert alert-danger">
				수정실패!
				<a class="alert-link" href="updateform.jsp?num=<%=num %>">다시 수정</a>
			</p>
		<%}%>
	</div>






</body>
</html>