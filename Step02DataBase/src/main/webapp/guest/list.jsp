
<%@page import="test.guest.dto.GuestDto"%>
<%@page import="test.guest.dao.GuestDao"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	//1. 전체 방명록 글 목록을 얻어와서 // 2.응답한다. (글 하나하나 등록된 array list가 있어야 목록 확인이 가능함)
	//MemberDao 객체의 참조값 얻어오기
	GuestDao dao=GuestDao.getInstance();
	//회원 목록얻어오기
	List<GuestDto> list=dao.getList();
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>/Guest/list.jsp</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" />
<style>
	
	
	th{
		font-size: 22px;
	}
	
	 tbody >  tr:hover{
		background-color: 	#FFF0F5	;
		font-weight:bold;
	}
	
	.title{
	border : 3px solid 	#E6E6FA;
	height : 60px;
	border-radius: 15px;
	padding: 10px 0 10px 0;
	margin : 30px 0 ;
	
	}
	h2{
	margin:30px 0;
	text-align:center;
	}
	
	a{
	text-decoration:none;
	color: #333}
	table{
	text-align:center;
	border : 3px solid 	#E6E6FA;
	border-radius: 15px;
	}
	
	
	.bi-pencil-square:hover{
		color:	#4682B4	;
	}
	.bi-trash3:hover{
		color: 	#8B0000	;
	}
	button:hover{
		background-color: 	#FFF0F5	;
	}	
	
	button{
		background-color:#ffffff;
		border:none;
	}
	
</style>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" />
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<!-- navbar출력하기 -->
	<jsp:include page="/include/navbar.jsp">
		<jsp:param value="guest" name="current"/>
	</jsp:include>

	<div class="container">
		<h2 class ="title">방명록 목록입니다.</h2>
		
		<table class="table">
			<thead>
				<tr>
					<th>번호</th>
					<th>작성자</th>
					<th>내용</th>
					<th>작성일</th>
					
					<th></th>
					<th>	<a href="insertform.jsp">
				<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-person-plus" viewBox="0 0 16 16">
				  <path d="M6 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0zm4 8c0 1-1 1-1 1H1s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C9.516 10.68 8.289 10 6 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10z"/>
				  <path fill-rule="evenodd" d="M13.5 5a.5.5 0 0 1 .5.5V7h1.5a.5.5 0 0 1 0 1H14v1.5a.5.5 0 0 1-1 0V8h-1.5a.5.5 0 0 1 0-1H13V5.5a.5.5 0 0 1 .5-.5z"/>
				</svg>
				<span class="visually-hidden">방명록추가</span>
				<!-- 웹접근성을 위해 : 이미지가 들어가면 시각장애인들에게는 확인이 안되기 때문에 시각적으로 숨긴다는 부트스트랩 class를 이용해서 focus가 생성될때 읽어줌 -->
			</a></th>
					
				</tr>
			</thead>
			<tbody>
			<%for(GuestDto tmp:list){ %>
				<tr >
					<td><%=tmp.getNum() %></td>
					<td><%=tmp.getWriter()%></td>
					<td>
						<textarea rows="5" readonly><%=tmp.getContent()%></textarea>
					</td>
					<td><%=tmp.getRegdate ()%></td>
					
					<td><a href="updateform.jsp?num=<%=tmp.getNum() %>">
						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
						  <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
						  <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
						</svg>
						<span class="visually-hidden">수정</span>
						</a>
						
					</td>
					<td>
						<form action="delete.jsp" method="post">
						<!-- 화면상에는 필요없지만 같이 전송하고 싶은 값이 있다면 hidden속성을 이용해서 작성 -->
							<input type="hidden" name="num" value="<%=tmp.getNum()%>"/>
							<input type="password" name="pwd" placeholder="비밀번호..." />
							<button type="submit"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash3" viewBox="0 0 16 16">
							  <path d="M6.5 1h3a.5.5 0 0 1 .5.5v1H6v-1a.5.5 0 0 1 .5-.5ZM11 2.5v-1A1.5 1.5 0 0 0 9.5 0h-3A1.5 1.5 0 0 0 5 1.5v1H2.506a.58.58 0 0 0-.01 0H1.5a.5.5 0 0 0 0 1h.538l.853 10.66A2 2 0 0 0 4.885 16h6.23a2 2 0 0 0 1.994-1.84l.853-10.66h.538a.5.5 0 0 0 0-1h-.995a.59.59 0 0 0-.01 0H11Zm1.958 1-.846 10.58a1 1 0 0 1-.997.92h-6.23a1 1 0 0 1-.997-.92L3.042 3.5h9.916Zm-7.487 1a.5.5 0 0 1 .528.47l.5 8.5a.5.5 0 0 1-.998.06L5 5.03a.5.5 0 0 1 .47-.53Zm5.058 0a.5.5 0 0 1 .47.53l-.5 8.5a.5.5 0 1 1-.998-.06l.5-8.5a.5.5 0 0 1 .528-.47ZM8 4.5a.5.5 0 0 1 .5.5v8.5a.5.5 0 0 1-1 0V5a.5.5 0 0 1 .5-.5Z"/>
							</svg>
							<span class="visually-hidden">삭제</span></button>
						</form>
						
					</td>
				</tr>
			<%} %>
			</tbody>
		</table>
	</div>
	
</body>
</html>





