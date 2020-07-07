<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>
<%@include file="../../src/java/SQLHelper.jsp"%>

<%
	session.removeAttribute("userId");
	session.removeAttribute("isAdmin");
	response.sendRedirect("../../index.jsp");
%>
