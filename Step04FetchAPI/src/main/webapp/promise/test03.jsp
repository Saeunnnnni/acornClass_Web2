<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Promise 테스트</h1>
	<script>
	
		new Promise(function(resolve,reject){
			
			resolve();
			//reject();
			console.log("resolve 호출됨")
		}).then(function(){
			console.log("then()안의 함수 호출")

		}).catch(function(){
			console.log("catch()안의 함수 호출")
		});
		
	
	</script>
</body>
</html>