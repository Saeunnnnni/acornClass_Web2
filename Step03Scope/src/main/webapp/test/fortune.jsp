<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//request영역에 fortunToday라는 키값으로 담긴 String type데이터를 읽어와서 casting
	   String fortune=(String)request.getAttribute("fortuneToday"); 
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>             
<body>
	<div class="container">
		<p>오늘의 운세 : <strong> <%=fortune %></strong></p>
		<!-- 리퀘스트 된 것은 일회성!  -->
	</div>
</body>
</html>