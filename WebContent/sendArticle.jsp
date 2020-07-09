<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="com.oreilly.servlet.MultipartRequest,
                      com.oreilly.servlet.multipart.DefaultFileRenamePolicy,
                      java.util.*,
                      java.io.*"%>
<<<<<<< HEAD:WebContent/sendArticle.jsp
<%@include file="./src/java/SQLHelper.jsp"%>
=======
<%@include file="../../src/java/SQLHelper.jsp"%>
>>>>>>> 2db3783e2d9c0c360a1d47e9a015ecb83f7b537d:WebContent/src_example/board_function/sendArticle.jsp
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

	String userId = session.getAttribute("userId").toString();
	String Content = multi.getParameter("content");
	String title = multi.getParameter("title");
	String boardId = multi.getParameter("boardId");
	String stationId = multi.getParameter("stationId");
	String articleNo = "";
	
	SQL.sqlExecute("INSERT",
	"INSERT INTO ARTICLE(NO,TITLE,CONTENT,POSTDATE,HITS,WRITER,STATIONID,BOARDID) values(ARTICLE_SEQ.NEXTVAL,?,?,SYSDATE,'0',?,?,?)",
	new String[] { title, Content, userId, stationId, boardId});
	
	SQL.sqlExecute("SELECT", "SELECT ARTICLE_SEQ.CURRVAL from DUAL", null);
	
	
	while (SQL.rs.next()) {
		articleNo = SQL.rs.getString("CURRVAL");
	}

	SQL.closeSQL();
	response.sendRedirect("./getArticle.jsp?articleNo=" + articleNo);
} catch (Exception e) {
	out.print(e);
}
%>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
<html>

</html>