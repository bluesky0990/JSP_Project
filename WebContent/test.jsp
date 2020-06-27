<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "data.JDBC"%>
<%
	JDBC db = new JDBC();
	String[] arr = {"요건 아이디", "요건 비번"};
	db.sqlExecute("insert", "insert into test values(" + 1 + ",?,?)", arr);
%>