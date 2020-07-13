<%@ 
	page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><%@
    include file="../_query/SQLHelper.jsp"%>
<%
	try
{
	SQLHelper SQL = new SQLHelper();
	ResultSet rs = null;
	request.setCharacterEncoding("UTF-8");
	String Id = request.getParameter("userId");
	String Pw = request.getParameter("userPw");

	if ((Id == null || Id == "") || (Pw == null || Pw == ""))
	{
		SQL.closeSQL();
		out.print("LoginFail@빈칸을 채워주세요.");
		return;
	}

	SQL.sqlExecute("SELECT", "SELECT * FROM MEMBER WHERE ID='" + Id + "'", null);
	if (SQL.rs != null && SQL.rs.next())
	{
		if (SQL.rs.getString("PWD").compareTo(Pw) == 0)
		{ //Login Success
	session.setAttribute("userId", Id);
	session.setAttribute("userNick", SQL.rs.getString("NICKNAME"));	
	session.setAttribute("isAdmin", SQL.rs.getInt("ADMIN"));
	out.print("LoginSuccess");
	return;
		}
	}
	SQL.closeSQL();
	out.print("LoginFail@아이디나 비밀번호를 확인해주세요.");
	return;
}
catch (Exception e)
{
	response.sendError(400);
}
%>