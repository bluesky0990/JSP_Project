<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="com.oreilly.servlet.MultipartRequest,
                      com.oreilly.servlet.multipart.DefaultFileRenamePolicy,
                      java.util.*,
                      java.io.*"%>

<%@include file="../_query/SQLHelper.jsp"%>


<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
<html>
<%
	request.setCharacterEncoding("utf-8");
	SQLHelper sql = new SQLHelper();
	String articleNo = request.getParameter("articleNo");
	
	sql.sqlExecute("SELECT", "SELECT * FROM ARTICLE WHERE NO=" + articleNo.toString(), new String[] {});
	if (sql.rs.next()) {
		out.print(sql.rs.getString("CONTENT"));
	}
	sql.closeSQL();

sql.sqlExecute("SELECT", "SELECT * FROM ARTICLE WHERE NO=" + articleNo, new String[] {});
if (sql.rs.next()) {
	out.print(sql.rs.getString("CONTENT"));
}
sql.closeSQL();
%>
</html>