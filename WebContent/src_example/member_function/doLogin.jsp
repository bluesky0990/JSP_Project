<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>
<%@include file="../../src/java/SQLHelper.jsp"%>

<%
try
{
	SQLHelper SQL = new SQLHelper();

	request.setCharacterEncoding("utf-8");


	String Id = request.getParameter("content");
	String Pw = request.getParameter("title");
	
	SQL.sqlExecute("SELECT", "SELECT * FROM MEMBER WHERE ID=" + Id, null);
	
	while (SQL.rs.next()) {
		if (SQL.rs.getString("PWD").compareTo(Pw) == 0)
		{
			//Login Success
			session.setAttribute("userId", Id);
			session.setAttribute("isAdmin", SQL.rs.getInt("ADMIN"));
		}
	}
	
	SQL.closeSQL();
	response.sendRedirect("../../index.jsp");
	
} catch (Exception e) {
	out.print(e);
}
%>
