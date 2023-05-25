<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/member/insertform.jsp</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" />
<style>
	.input-box{
	margin: 30px 0}
	
	.container{
		margin:0 auto;
		border: 1px solid #333;
		text-align:center;
	}
	
	label{
		font-size:20px;
		font-weight:bold;
	}
	
	
	
</style>
</head>
<body>
	<div class="container">
		<h1>회원 추가 폼</h1>
		<form action="insert.jsp" method="post">
			<div class="input-box">
				<label for="writer">작성자 : </label>
				<input type="text" id="writer" name="writer" />
			</div>
			<div class="input-box">
				<label for="content">내용 : </label>
				<input type="text" id="content" name="content" />
			</div>
			<div class="input-box">
				<label for="pwd">비밀번호 : </label>
				<input type="text" id="pwd" name="pwd" />
			</div>
			<div class="input-box">
				<label for="regdate">작성일 : </label>
				<input type="text" id="regdate" name="regdate" />
			</div>
		<button class="submit-btn" type="submit">추가</button>
		</form>
	</div>
</body>
</html>







