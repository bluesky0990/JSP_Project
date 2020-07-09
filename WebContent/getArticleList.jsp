<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="com.oreilly.servlet.MultipartRequest,
                      com.oreilly.servlet.multipart.DefaultFileRenamePolicy,
                      java.util.*,
                      java.io.*"%>
<%@include file="../../src/java/SQLHelper.jsp"%>


<%!
	public static void printArticleList(JspWriter out, int iStartOffset, int SearchMode, String strSearch)
	{
		SQLHelper sql = new SQLHelper();
		SQLHelper subsql = new SQLHelper();
		try
		{
		switch(SearchMode)
		{
		case 1: //노선 검색
		{
			sql.sqlExecute("SELECT", "SELECT * FROM STATION WHERE LANE LIKE '%" + strSearch + "%'", new String[] {});
			String StationArray = "";
			if (sql.rs.next())
			{
				StationArray = sql.rs.getString("ID");
			}
			while (sql.rs.next())
			{
				StationArray = StationArray + ", " + sql.rs.getString("ID");
			}

			subsql.sqlExecute("SELECT", "SELECT * FROM ARTICLE WHERE STATIONID IN (" + StationArray + ")", new String[] {});
			while (subsql.rs.next())
			{
				try
				{
				
				String articleNo = subsql.rs.getString(1);
				String title = subsql.rs.getString(2);
				String writer = subsql.rs.getString(6);
				String postDate = subsql.rs.getString(4);
				out.println("<div class=\"post-preview\">");
				out.println("<a href=\"./src_example/board_function/getArticle.jsp?articleNo=" + articleNo  + "\">");
				out.println("<h2 class=\"post-title\">");
				out.println(title);
				out.println("</h2>");
				out.println("<h3 class=\"post-subtitle\">");
		              	
				out.println("</h3>");
				out.println("</a>");
				out.println("<p class=\"post-meta\">작성자");
				out.println("<a href=\"#\">" + writer + "</a>");
				out.println(postDate + "</p>");
				out.println("</div>");
				}
				catch(Exception e)
				{
					out.println(e.toString());
				}
			}

		}
			break;
		case 2: //역 검색
			sql.sqlExecute("SELECT", "SELECT * FROM STATION WHERE STATION LIKE '%" + strSearch + "%'", new String[] {});
			String StationArray = "";
			if (sql.rs.next())
			{
				StationArray = sql.rs.getString("ID");
			}
			while (sql.rs.next())
			{
				StationArray = StationArray + ", " + sql.rs.getString("ID");
			}
			
			sql.sqlExecute("SELECT", "SELECT * FROM ARTICLE WHERE STATIONID IN (" + StationArray + ")", new String[] {});
			while (sql.rs.next())
			{
				out.print("검색페이지입니다. ArticleNo : " + sql.rs.getString("NO") + " </br>");
				out.print(sql.rs.getString("CONTENT"));
			}
			break;
		default: //검색 X
			sql.sqlExecute("SELECT", "SELECT * FROM ARTICLE OFFSET " + iStartOffset + " ROWS FETCH NEXT 20 ROWS ONLY", new String[] {});
			while (sql.rs.next())
			{
				out.print(sql.rs.getString("CONTENT"));
			}
			break;
		}
		subsql.closeSQL();
		sql.closeSQL();
		}
		catch(Exception e)
		{
			//out.print(e.toString());
		}
		
	}
%>

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
<html>
<%
	//request.setCharacterEncoding("utf-8");
	//printArticleList(out,0,1,"센니치마에");
%>
</html>