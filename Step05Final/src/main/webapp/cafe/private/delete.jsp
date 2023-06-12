
<%@page import="test.cafe.dao.CafeDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   	//1. get방식 파라미터로 전달되는 삭제할 파일의 글번호 읽어오기
   	int num = Integer.parseInt(request.getParameter("num"));
	//2. db에서 삭제 
	boolean issuccess=CafeDao.getInstance().delete(num);
	 String cPath=request.getContextPath();
     response.sendRedirect(cPath+"/cafe/list.jsp");
 
%>
