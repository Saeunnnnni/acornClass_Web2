<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.0/dist/jquery.min.js"></script>
<style>
	.box{
		width:100px;
		height:100px;
		background-color:yellow;
		border:1px solid red;
	}
</style>
</head>
<body>
	<button id="hideBtn">숨기기</button>
	<button id="showBtn">보이기</button>
	<button id="toggleBtn">토글</button>
	<div class="box"></div>
	<script>
		$("#hideBtn").on("click",function(){
			/*$(".box").hide(1000, function(){
				alert("얍!")
			});*/
			//1초동안 숨기고 그 다음 작업을 함수 안에 넣어서 작성해줌 
			$(".box").hide({
				duration:1000,
				complete:function(){
					alert("뿅");
				}
			})
			//실행될 동작들을 object로 전달 할 수 있다.
		})
		//이처럼 jquery에서는 같은 동작이더라도 사용할 수 있는 방법이 여러가지이다.
		//.hide() :  아무것도 전달하지 않으면 디폴트 옵션
		//.hide(number) : 전달받은 number를 실행
		//.hide(number,function) : 전달받은 number, 함수를 실행
		//.hide(object) :  가독성이 좋음 
		
		$("#showBtn").on("click",function(){
			//$(".box").css("display","block");
			$(".box").show();
		})
		$("#toggleBtn").on("click",function(){
			$(".box").toggle();
		})
	</script>
</body>
</html>