<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	//Get 방식 파라미터 url이라는 이름으로 전달되는 값이 있는지 읽어와 본다
	String url = request.getParameter("url");
	//만일 넘어오는 값이 없다면 
	if(url==null){
		//로그인 후에 인덱스 페이지로 갈수 있도록 한다.
		String cPath=request.getContextPath();
		url=cPath+"/index.jsp";
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" />
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>

<body>
	<div class="contanier">
		<h1>로그인 폼</h1>

		<form action="login.jsp" method =" post">
				<!-- 폼에 입력한 정보외에 추가로 같이 전송할 값이 있으면 input type을 hidden으로 설정 -->
			<input type="hidden" name="url" value="<%=url %>" />
			<div>
				<lable class="form-label" for="id">아이디</lable>
				<input type="text" class="form-control" name="id" id="id"/>
			</div>
			<div>
				<lable class="form-label" for="pwd">비밀번호</lable>
				<input type="password" class="form-control" name="pwd" id="pwd"/>
			</div>
			<button class="btn btn-primary type="submit">로그인</button>
		</form>
	</div>
</body>
</html>