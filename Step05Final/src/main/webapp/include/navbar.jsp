<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<nav class="navbar bg-primary navbar-expand-md" data-bs-theme="dark">
     <div class="container">
       <a class="navbar-brand" href="${pageContext.request.contextPath }/index.jsp">
         <img src="https://getbootstrap.com/docs/5.3/assets/brand/bootstrap-logo.svg" alt="Logo" width="30" height="24" class="d-inline-block align-text-top">
         Acorn
       </a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText">
            <span class="navbar-toggler-icon"></span>
       </button>
       <%-- el.jsp를 사용했기때문에 필요없어짐 !
       	// 어느 페이지에 포함되었는지 정보를 얻어오기
       	String current=request.getParameter("current"); //"index" or "member" or "guest" 
       --%>
       
       
       <div class="collapse navbar-collapse" id="navbarText">
          	<ul class="navbar-nav me-auto">
        	<li class="nav-item">
        		<a class="nav-link ${param.current eq 'file' ? 'active' :'' }" href="${pageContext.request.contextPath }/file/list.jsp">자료실</a>
          		<%--<a class="nav-link <%=current.equals("member") ? "active":"" %>" href="${pageContext.request.contextPath }/member/list.jsp">회원목록</a>  --%>
        	</li>
        	<li class="nav-item">
        		<a class="nav-link ${param.current eq 'cafe' ? 'active' :'' }" href="${pageContext.request.contextPath }/cafe/list.jsp">Cafe</a>
          		<%-- <a class="nav-link <%=current.equals("guest") ? "active":"" %>" href="${pageContext.request.contextPath }/guest/list.jsp">방명록</a> --%>
        	</li>
      	</ul>
      	
      	<div class="navbar-nav">
      		<c:choose>
      			<c:when test="${not empty id }">
      				<a class = "nav-link"  href="${pageContext.request.contextPath }/users/private/info.jsp">${id }</a>
      				<span class="nav-text">로그인중...</span>    	
      				<a class = "nav-link"  href="${pageContext.request.contextPath }/users/logout.jsp">로그아웃</a>
      			</c:when>
      			<c:otherwise>
      				<a class="nav-link" href="${pageContext.request.contextPath }/users/loginform.jsp">로그인</a>
      				<a class="nav-link" href="${pageContext.request.contextPath }/users/signup_form.jsp">회원가입</a>
      			</c:otherwise>
      		</c:choose>
      	
      	</div>
      		
       </div>
     </div>
   </nav>