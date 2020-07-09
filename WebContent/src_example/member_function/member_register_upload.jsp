<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../../src/java/SQLHelper.jsp"%>
<%
	request.setCharacterEncoding("utf-8");

	SQLHelper sql = new SQLHelper();
	sql.sqlExecute("insert", "insert into member values(?,?,?,?,'0')", 
			new String[] {request.getParameter("id"), request.getParameter("pw"), request.getParameter("nickname"), request.getParameter("email"), "0"});
	
	response.sendRedirect("../index.jsp");
%>