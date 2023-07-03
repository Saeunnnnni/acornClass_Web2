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
		/*
			transition  효과를 줄수 있는 모든 css속성에 대해 1초동안 일정한 비율로 움직이게 
		*/
	}
</style>
</head>
<body>
	<button id="hideBtn">숨기기</button>
	<button id="showBtn">보이기</button>
	<button id="toggleBtn">토글</button>
	<button id="moveBtn">움직이기</button>
	<button id="moveBtn2">움직이기2</button>
	<div class="box"></div>
	<script>
	/*
		움직이기 버튼을 눌렀을때, .box div 오른쪽으로 100px 움직이도록 해보세요 
		단, 1초동안 진행되도록
	*/
	
		
		$("#moveBtn").on("click",function(){			
			let mLeft=0;
			
			setInterval(function(){
				mLeft += 1;
				if(mLeft >= 101){
					return;
				}
				$(".box").css("margin-left", mLeft+"px");
				//10/1000초 마다 한번씩 호출되는 함수 안에서 .box를 움직이기
			},10);
		})
		
		
		$("#moveBtn").on("click",function(){			
			let mLeft=0;
			
			let seq=setInterval(function(){
				mLeft += 1;
				$(".box").css("margin-left", mLeft+"px");
				if(mLeft >= 100){
		               //인터발의 순서값(sequence) 값을 이용해서 취소하기 
					clearInterval(seq);
				}
			},10);
		})
		
		$("#moveBtn2").on("click",function(){
			$(".box").animate({
				marginLeft:"+=100px"
			},1000)
		})
	
		$("#hideBtn").on("click",function(){
			$(".box").fadeOut(1000,function(){
				alert("뿅")
			});
		})
		
		$("#showBtn").on("click",function(){
			$(".box").fadeIn({
				duration:2000,
				complete:function(){
					alert("짠!")
				}
			});
		})
		$("#toggleBtn").on("click",function(){
			$(".box").fadeToggle();
		})
	</script>
</body>
</html>