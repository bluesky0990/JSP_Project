<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "data.Dbcp"%>
<%
	Dbcp db = new Dbcp();
	String[] arr = {"요건 아이디", "요건 비번"};
	db.Connector("insert", "insert into test values(" + 1 + ",?,?)", arr);
%>