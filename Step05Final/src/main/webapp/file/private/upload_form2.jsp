<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/file/private/upload_form2.jsp</title>
</head>
<body>
	<div class="container">
		<h3>파일 업로드 폼2 입니다.</h3>
		
		<form action="upload2.jsp" method="post" enctype="multipart/form-data" id="myForm">
			<div>
				<label for="title">제목</label>
				<input type="text" name="title" id="title"/>
			</div>
			<div>
				<label for="myFile">첨부파일</label>
				<input type="file" name="myFile" id="myFile"/>
			</div>
			<button type="submit">업로드</button>
		</form>
	</div>
	<script src="${pageContext.request.contextPath }/js/gura_util.js"></script>
	<script>
         document.querySelector("#uploadForm").addEventListener("submit", (e)=>{
            //폼 전송 막기 
            e.preventDefault();
            //gura_util.js 에 있는 함수를 호출하면서 폼의 참조값 전달
            /*
            ajaxFormPromise(e.target)
            .then(res=>res.json())
            .then(data=>{
               
            });
            */
            //만일 gura_util 을 사용하지 않는다면
            
            //서버에 전송할 data 를 구성한다.
            let data=new FormData(e.target);
            // fetch() 함수가 리턴하는 Promise 객체를 
            fetch("${pageContext.request.contextPath }/image/upload",{
               method:"post",
               body:data
            })
            .then(res=>res.json())
            .then(data=>{
               console.log(data);
               //data 는 {imagePath:"/resources/upload/xxx"} 형식의 object 이다.
               const imgString=`<img src="${pageContext.request.contextPath }\${data.imagePath}">`;
               // img 요소를 표현하고 있는 문자열을 HTML 형식으로 해석이 되도록 대입해준다.
               document.querySelector("#imageWrapper").innerHTML=imgString;
            });
         });
      </script>

</body>
</html>
