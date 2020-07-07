<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="com.oreilly.servlet.MultipartRequest,
                      com.oreilly.servlet.multipart.DefaultFileRenamePolicy,
                      java.util.*,
                      java.io.*"%>
<%@include file="../../src/java/SQLHelper.jsp"%>


<%!
	public static void printArticleList(int iStartOffset, int SearchMode, String strSearch)
	{
		SQLHelper sql = new SQLHelper();

		switch(SearchMode)
		{
		case 1: //노선 검색
		{
			sql.sqlExecute("SELECT", "SELECT * FROM STATION WHERE LANE LIKE \"%" + strSearch + "%\"", new String[] {});
			while (sql.rs.next())
			{
				SQLHelper subsql = new SQLHelper();
				subsql.sqlExecute("SELECT", "SELECT * FROM ARTICLE STATIONID=" + sql.rs.getString("ID"), new String[] {});
				subsql.
				out.print(sql.rs.getString("CONTENT"));
			}
		}
			break;
		case 2: //역 검색
		
			break;
		default: //검색 X
			sql.sqlExecute("SELECT", "SELECT * FROM ARTICLE OFFSET " + iStartOffset + " ROWS FETCH NEXT 20 ROWS ONLY", new String[] {});
			if (sql.rs.next())
			{
				out.print(sql.rs.getString("CONTENT"));
			}
			break;
		}
		
		sql.closeSQL();
	}
%>