<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./src/java/SQLHelper.jsp" %>
<%
	request.setCharacterEncoding("utf-8");
	SQLHelper SQL = new SQLHelper();

	try {
		SQL.sqlExecute("INSERT", "INSERT INTO MEMBER values(?,?,?,?,?)",
		new String[] {request.getParameter("login_id"), request.getParameter("login_pw"),
			request.getParameter("login_nickname"), request.getParameter("login_email"), "0"});

		SQL.closeSQL();
		response.sendRedirect("./index.jsp");
	} catch (Exception e) {
		out.print(e);
	}
%>