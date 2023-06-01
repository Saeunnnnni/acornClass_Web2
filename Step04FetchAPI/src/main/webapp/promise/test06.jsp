<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<script>
	function openDoor(){
	    return new Promise(function(resolve){
	       setTimeout(function(){
	          console.log("1초를 소모하면서 문을 열었습니다.");
	          resolve();
	       }, 1000);
	    });
	 }
	 function putElephant(){
	    return new Promise(function(resolve){
	       setTimeout(function(){
	          console.log("3초를 소모하면서 코끼리를 집어 넣었습니다.");
	          resolve();
	       }, 3000);
	    });
	 }
	 function closeDoor(){
	    return new Promise(function(resolve){
	       setTimeout(function(){
	          console.log("2초를 소모하면서 문을 닫았습니다.");
	          resolve();
	       }, 2000);
	    });
	 }
	 openDoor()
	 .then(function(){
		 return putElephant();
	 }).then(function(){
		 return closeDoor();
	 }).then(function(){
		 console.log("코끼리를 성공적으로 냉장고에 넣었습니다/")
	 }).catch(function(){
		 
		 //reject가 호출되면 catch에 있는 내용이 출력된다
		 console.log("코끼리를 냉장고에 넣는 도중 에러가 발생했습니다.")
	 })
</script>
</body>
</html>