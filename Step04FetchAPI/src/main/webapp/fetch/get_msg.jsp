<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//db에서 읽어온 더보기 메세지 목록이라고 가정하자 
	List<String> list = new ArrayList<>();
	list.add("어쩌구");
	list.add("저쩌구");
	list.add("이러쿵");
%>
<%for(String tmp:list){%>
	<li><%=tmp %> </li>
<%}%>