<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="ko-kr">
<%@include file="../_query/SQLHelper.jsp"%>
<head>
<meta charset="UTF-8">
<title>게시글 작성</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js">
	
</script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
</head>
<%

if (session.getAttribute("userId") == null)
{
	//로그인 되어 있지 않음, 게시글 작성 불가.
	//out.print("<script>alert('로그인을 해주세요. 게시글 작성이 불가능합니다.');");
	//out.print("window.location.href = \"../../index.jsp\"</script>");
	// --개발용 임시 아이디 설정
	session.setAttribute("userId", "Kitaperilol");
}
%>
<body>
	<form method="post" enctype="multipart/form-data" action="sendArticle.jsp">
		<input type="text" class="form-control" id="title" name="title" aria-label="제목" aria-describedby="inputGroup-sizing-default">
		<div class="input-group mb-3">
			<div class="input-group-prepend">
				<label class="input-group-text" for="inputGroupSelect01">게시판</label>
			</div>
			<select class="custom-select" id="boardId" name="boardId">
				<%
				try
				{
					SQLHelper sql = new SQLHelper();
					sql.sqlExecute("SELECT", "SELECT * FROM BOARD", new String[] {});
					if (sql.rs.next())
						out.print("<option selected value=\"" + sql.rs.getInt("ID") + "\">" + sql.rs.getString("NAME") + "</option>");
					while (sql.rs.next())
					{
						out.print("<option value=\"" + sql.rs.getInt("ID") + "\">" + sql.rs.getString("NAME") + "</option>");
					}
					sql.closeSQL();
				}
				catch(Exception e)
				{
				}
				%>
			</select>
		</div>
		<div class="input-group mb-3">
			<div class="input-group-prepend">
				<label class="input-group-text" for="inputGroupSelect02">역</label>
			</div>
			<select class="custom-select" id="stationId" name="stationId">
				<%
				try
				{
					SQLHelper sql = new SQLHelper();
					sql.sqlExecute("SELECT", "SELECT * FROM STATION", new String[] {});
					if (sql.rs.next())
						out.print("<option selected value=\"" + sql.rs.getInt("ID") + "\">" + sql.rs.getString("STATION") + "</option>");
					while (sql.rs.next())
					{
						out.print("<option value=\"" + sql.rs.getInt("ID") + "\">" + sql.rs.getString("STATION") + "</option>");
					}
					sql.closeSQL();
				}
				catch(Exception e)
				{
				}
				%>
			</select>
		</div>
		<textarea id="content" name="content" class="summernote"></textarea>
		<button type="submit" class="btn btn-primary">Send</button>
	</form>
	<script>
		$(document).ready(function() {
			$('.summernote').summernote({
				lang : 'ko-KR'
			});
		});
	</script>

</body>
</html>