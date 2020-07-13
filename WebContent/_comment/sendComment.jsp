<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="com.oreilly.servlet.MultipartRequest,
                      com.oreilly.servlet.multipart.DefaultFileRenamePolicy,
                      java.util.*,
                      java.io.*"%>
<%@include file="../_query/SQLHelper.jsp"%>

<%

	SQLHelper SQL = new SQLHelper();

	request.setCharacterEncoding("utf-8");

	String userId = session.getAttribute("userId").toString();
	String Content = request.getParameter("comment");
	String articleNo = request.getParameter("articleNo");
	
	SQL.sqlExecute("INSERT",
	"INSERT INTO REPLY(NO,CONTENT,POSTDATE,WRITER,ARTICLENO) values(REPLY_SEQ.NEXTVAL,?,SYSDATE,?,?)",
	new String[]
	{ Content, userId, articleNo });

	SQL.sqlExecute("SELECT", "SELECT REPLY_SEQ.CURRVAL from DUAL", null);

	SQL.closeSQL();
	response.sendRedirect("../readArticle.jsp?articleNo=" + articleNo);

%>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
<html>

</html>