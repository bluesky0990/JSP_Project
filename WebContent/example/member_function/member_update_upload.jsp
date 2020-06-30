<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "data.JDBC"
%>

<%
	request.setCharacterEncoding("utf-8");

	JDBC jdbc = new JDBC();
	String[] data = {"id", "pwd", "nickname", "email", "0"};
	
	// 아래 코드는 넘겨주는 아이디 파라미터가 있을 시 받음. 구조 변경 시 다른 방식으로 받길 바람.
	// 글로벌 변수 선언도 고려해보는중
	jdbc.sqlExecute("update", "update member set pwd=?, nickname=?, email=? where id=" + request.getParameter("id"), data);
	
	response.sendRedirect("../index.jsp");
%>