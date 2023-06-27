<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.active{
		 border: 1px solid red;
      	 background-color: yellow;
	}
</style>
</head>
<body>
	<h1>이벤트처리</h1>
	<ul id="myNav">
		<li><a href="#">one</a></li>
		<li><a href="#">two</a></li>
		<li><a href="#">three</a></li>
		
	</ul>
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.0/dist/jquery.min.js"></script>
	
	<script>
		$("#myNav a").on("focus", function(e){
			//이벤트가 일어난 바로 그 요소의 부모요소에 active클래스 추가하기
			$(e.target).parent().addClass("active");
		});
		
		$("#myNav a").on("blur", function(e){
			//이벤트가 일어난 바로 그 요소의 부모요소에 active 클래스 제거하기
			$(e.target).parent().removeClass("active");
		});
	</script>
</body>
</html>