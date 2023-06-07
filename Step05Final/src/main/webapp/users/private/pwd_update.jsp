
<%@page import="test.users.dao.UsersDao"%>
<%@page import="test.users.dto.UsersDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//폼에서 전송되는 pwd를 읽어오기 
	String id= (String)session.getAttribute("id");
	String  pwd = request.getParameter("pwd");
	String  newPwd = request.getParameter("newPwd");
	
	//작업의 성공여부 (초기값 부여)
	boolean isSuccess=false;
	
	//현재 비밀번호 
	String currentPwd = UsersDao.getInstance().getData(id).getPwd();
	//만일 현재 비밀번호하고 입력한 비밀번호가 같으면 
	if(currentPwd.equals(pwd)){
			//수정 작업 수행_ 새로운 비밀번호와 아이디를 dto에 담아서
			UsersDto dto = new UsersDto();
			dto.setId(id);
			dto.setPwd(newPwd);
			isSuccess=UsersDao.getInstance().updatePwd(dto);
		}
		

	
	//성공했다면 info.jsp로 
	if(isSuccess){
		//로그아웃 처리 
		session.removeAttribute("id");
	}
	//응답하기	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%if(isSuccess){ %>
		<p>
			비밀번호를 수정하고 로그아웃되었습니다.
			<a href="${pageContext.request.contextPath }/users/loginform.jsp">다시 로그인</a>
		</p>
	<%}else{ %>
		<p>
			비밀번호가 일치하지 않습니다.
			<a href="${pageContext.request.contextPath }/users/private/pwd_updateform.jsp">다시시도</a>
		</p>
	<%} %>
</body>
</html>