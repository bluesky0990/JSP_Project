<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="com.oreilly.servlet.MultipartRequest,
                      com.oreilly.servlet.multipart.DefaultFileRenamePolicy,
                      java.util.*,
                      java.io.*"%>
<%@include file="/SQLHelper.jsp"%>
<%
	SQLHelper SQL = new SQLHelper();

request.setCharacterEncoding("utf-8");
String realFolder = ""; //파일경로를 알아보기위한 임시변수를 하나 만들고,
String saveFolder = "filestorage"; //파일저장 폴더명을 설정한 뒤에...
String encType = "utf-8"; //인코딩방식도 함께 설정한 뒤,
ServletContext context = getServletContext();
realFolder = context.getRealPath(saveFolder);
try {
	MultipartRequest multi = new MultipartRequest(request, realFolder, 1024 * 1024 * 1024, encType,
	new DefaultFileRenamePolicy());

	Enumeration params = multi.getParameterNames();

	String Content = multi.getParameter("content");
	String title = multi.getParameter("title");
	String articleNo = "";

	SQL.sqlExecute("INSERT",
	"INSERT INTO ARTICLE(NO,TITLE,CONTENT,POSTDATE,HITS,WRITER,STATIONID,BOARDID) values(ARTICLE_SEQ.NEXTVAL,?,?,SYSDATE,?,?,?,?)",
	new String[] { title, Content, "0", "Lisithromyxin", "1", "0" });

	SQL.sqlExecute("SELECT", "SELECT ARTICLE_SEQ.CURRVAL from DUAL", null);
	while (SQL.rs.next()) {
		articleNo = SQL.rs.getString("CURRVAL");
	}

	SQL.closeSQL();
	response.sendRedirect("/getArticle.jsp?articleNo=" + articleNo);
} catch (Exception e) {
	out.print(e);
}
%>
<script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
<html>

</html>