<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	
</style>
</head>
<body>
	<h1>이벤트처리</h1>
	<input type="text" id="inputMsg" placeholder="메세지 입력..." />
	<button id="sendBtn">전송</button>
	<ul id="msgList">
	
	</ul>
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.0/dist/jquery.min.js"></script>
	
	<script>
		//전송버튼을 눌렀을때 실행할 함수 등록
		/* $("#sendBtn").on("click", function(){
			//1.입력한 문자열을 읽어와서 
			const msg=$("#inputMsg").val();
			//2. li요소를 만들어서 innerText에 출력하고 id가 msgList인 요소에 추가하기
			$("<li>").text(msg).appendTo("#msgList")
		})
		*/
			$("#inputMsg").on("input", function(e){
			//1.입력한 문자열을 읽어와서 
			const msg=$(e.target).val();
			//2. li요소를 만들어서 innerText에 출력하고 id가 msgList인 요소에 추가하기
			$("#current").text(msg);
		})
	</script>
</body>
</html>