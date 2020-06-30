<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "data.JDBC"
%>

<%
	request.setCharacterEncoding("utf-8");

	JDBC jdbc = new JDBC();
	jdbc.sqlExecute("insert", "insert into member values(?,?,?,?,'0')", 
			new String[] {request.getParameter("id"), request.getParameter("pw"), request.getParameter("nickname"), request.getParameter("email"), "0"});
	
	response.sendRedirect("../index.jsp");
%>