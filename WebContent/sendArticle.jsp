<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="com.oreilly.servlet.MultipartRequest,
                      com.oreilly.servlet.multipart.DefaultFileRenamePolicy,
                      java.util.*,
                      java.io.*,
					  data.JDBC"%>
<%
request.setCharacterEncoding("utf-8");
JDBC jdbc = new JDBC();
String realFolder = ""; //파일경로를 알아보기위한 임시변수를 하나 만들고,
String saveFolder = "filestorage"; //파일저장 폴더명을 설정한 뒤에...
String encType = "utf-8"; //인코딩방식도 함께 설정한 뒤,
ServletContext context = getServletContext();
realFolder = context.getRealPath(saveFolder);
try
{
	MultipartRequest multi = new MultipartRequest(
			request, realFolder, 1024*1024*1024, encType,
			new DefaultFileRenamePolicy());
	
	Enumeration params = multi.getParameterNames();

	/*while(params.hasMoreElements()){
	      String name = (String)params.nextElement();//파라메터이름을 가져온뒤
	      String value = multi.getParameter(name);//이름을 이용해  값을가져온다
	      out.println(name + " = " + value +"<br>");
	   }*/

String Content = multi.getParameter("content");
String title = multi.getParameter("title");
//out.print(Content);
//
jdbc.sqlExecute("INSERT", "INSERT INTO ARTICLE(TITLE,CONTENT,POSTDATE,HITS,WRITER,STATIONID,BOARDID)" 
 + "values(?,?,SYSDATE,?,?,?,?)", new String[] {title, Content, "0", "Lisithromyxin", "1", "0"});
out.print(jdbc.sError);

jdbc.closeJDBC();
}
catch(IOException e)
{
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