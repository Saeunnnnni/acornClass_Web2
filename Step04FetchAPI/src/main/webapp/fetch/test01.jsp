<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>fetch 함수 테스트</h1>
	<button id="myBtn">눌러바</button>
	<a href="${pageContext.request.contextPath }/index.jsp">클릭!</a>
	<!-- 페이지가 이동하면서 요청됨 ! -->
	
	<script>
	document.querySelector("#myBtn").addEventListener("click",()=>{
		
		const msg = prompt("메세지 입력");
		//prompt 의 작업이 끝날때까지 실행의 흐림이 멈춰있는 상태 
		//(언제 끝날지 모르는 작업 -> 비동기 처리(요청 후 다른 작업을 수행 할 수 있도록하기 ) )
		console.log("입력완료");
		
		console.log("------");
		
		//fetch  함수가 무얼 하는 함수인지 잠시 테스트 해보세요
		//위의 링크를 눌렀을때와 차이점은 ?
		fetch("${pageContext.request.contextPath }/index.jsp") //promise type
		.then(function(response){
			return response.text(); //promise type이기때문에 then을 붙일수 있음 
		})
		.then(function(data){
			console.log(data);
			//data안의 값은 해당값을 전달받은 값이고 string type 이고 페이지 이동없이 값을 전달받아야 할 경우에 사용 
			//ex) 회원가입 폼 작성중에 아이디 중복 확인할때 !  
			//fetch함수를 call하면 promise함수가 호출됨 
			
		});
		console.log("요청했습니다")
	});
	</script>
	
</body>
</html>