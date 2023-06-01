<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	 
   <button id="moreBtn">더보기</button>
   <ul id="msgList">
   		<li>하나</li>
   		<li>두울</li>
   		<li>세엣</li>
   </ul>
 <script>
 	document.querySelector("#moreBtn").addEventListener("click",()=>{
 		
 		fetch("get_msg2.jsp")
 		.then(res=>res.json())
 		.then((data)=>{
 			
 		})
 	})
 </script>
</body>
</html>