<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.0/dist/jquery.min.js"></script>
</head>
<body>
	<div class="container">
		<input type="text" id="inputMsg" placeholder="문자열 입력" />
		<button id="sendBtn">전송</button>
		<p id="result"></p>
	</div>
	
	<div>div1</div>
	<div class="my-class">div2</div>
	<div class="my-class">div3</div>
	<div id="id">div4</div>
	
	
	<script>
		//위의 input 요소에 문자열을 입력하고 전송버튼을 누르면 입력한 문자열을 p요소의 innerText에 
		//출력되도록 프로그래밍 해 보세요.
		
		/*document.querySelector("#sendBtn").addEventListener("click",()=>{
			const msg = document.querySelector("#inputMsg").value;
			document.querySelector("#result").innerText=msg;
		});
		*/
		
		$("sendBtn").on("click",()=>{
			const msg=$("#inputMsg").val();
			$("#result").text(msg);
		});
		
		/*
			$( ).action()
			  첫번째 괄호) 
			  선택자를 문자열로 작성 css의 선택자와 동일하다 
			  # . 요소명 속성의 자손, 자식 선택자 등등  
			  => $() : 배열의 참조값이 리턴되는데 그 배열은 jquery 의 기능이 추가된 배열이다
			  : 배열 = 선택자에 부합하는 모든 문서객체의 참조값이 순서대로 들어있다.
			  .on() | .val() | .text() ... 
			  */
			  
			  /*
			  let divs = document.querySelectorAll(".div");
			  for(let i =0; i<divs.length; i++){
				  let tmp=divs[i];
				  tmp.innerText="hi";
			  
			  }
			  위르 코드를 jquery 로 작성 한다면
			  $("div").text("hi");
			  
			  jquery의 구조 
			  $(selector).action().action1().action2()
		*/
	</script>
</body>
</html>