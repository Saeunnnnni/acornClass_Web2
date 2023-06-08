<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" />
</head>
<body>
	   <div class="container">
        <h1>다양한 form 디자인</h1>
        <form action="signup.jsp" method="post">
            <div class="form-floating  mb-3">
                <input class="form-control" type="text" id="id" name="id" placeholder="아이디 입력">
                <label  for="id">아이디</label>
            </div>
            <div class="form-floating  mb-3">
                <input class="form-control" type="password" id="pwd" name="pwd" placeholder="비밀번호 입력">
                <label  for="pwd">비밀번호</label>
            </div>    
            <select id="job" class="form-select mb-4" name="job">
                <option value="">직업선택</option>
                <option value="programmer">프로그래머</option>
                <option value="doctor">의사</option>
            </select>

            <fieldset>
                <legend>성별 체크</legend>
                <div class="form-check-inline">
                    <input class="form-check-input" value="man" type="radio" id="one" name="gender" checked>
                    <label class="form-check-label" for="one">남자</label>
                </div>
                <div class="form-check-inline">
                    <input class="form-check-input" value="woman"  type="radio" id="two" name="gender">
                    <label class="form-check-label" for="two">여자</label>
                </div>
            </fieldset>

            <fieldset>
                <legend>취미 체크</legend>
                <div class="form-check">
                    <input type="checkbox" name="hobby" value="piano" class="form-check-input" id="piano">
                    <label class="form-check-label" for="piano">피아노</label>
                </div>
                <div class="form-check">
                    <input type="checkbox" name="hobby" value="game" class="form-check-input" id="game">
                    <label class="form-check-label" for="game">게임</label>
                </div>
                <div class="form-check">
                    <input type="checkbox"  name="hobby"  value="etc" class="form-check-input" id="etc">
                    <label class="form-check-label" for="etc">기타</label>
                </div>
            </fieldset>
            
             <div>
            	<label for="comment" class="form-label">하고 싶은 말</label>
            	<textarea name="comment" id="comment" class="form-control" rows="10"></textarea>
            </div>
            

            <fieldset>
                <legend>개인정보 활용 동의</legend>
                <div class="form-check form-switch">
                    <input class="form-check-input" type="checkbox"  id="allowAll" >
                    <label class="form-check-label" for="allowAll">전체동의</label>
                </div>

                <div class="form-check form-switch">
                    <input class="form-check-input allow" type="checkbox"  id="allowEmail" name="allowEmail" value="email">
                    <label class="form-check-label" for="allowEmail">이메일 수신여부</label>
                </div>
                <div class="form-check form-switch">
                    <input class="form-check-input allow" type="checkbox"  id="allowMessage" name="allowMessage" value="message">
                    <label class="form-check-label" for="allowMessage">광고성 문자 수신여부</label>
                </div>
            </fieldset>
            <button class="btn btn-outline-primary" type="submit">가입</button>
        </form>
    </div>

    <script>
       document.querySelector("#allowAll").addEventListener("change", (e)=>{
            let checked = e.target.checked;
            const allows = document.querySelectorAll(".allow");

      /*     for(let i = 0; i < allows.length; i++ ){
            allows[i].checked= checked;
          } */

          //반복문 대신 forEach() 함수도 활용해보기
          allows.forEach((item)=>{
            item.checked=checked;
          })
        })

        
  
    </script>
	
</body>
</html>