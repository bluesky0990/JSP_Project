<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="com.oreilly.servlet.MultipartRequest,
                      com.oreilly.servlet.multipart.DefaultFileRenamePolicy,
                      java.util.*,
                      java.io.*"%>
<%@include file="../_query/SQLHelper.jsp"%>

<%!
public static int getCommentCount(final SQLHelper SQL, final String articleNo)
{
	try
	{
		SQL.sqlExecute("SELECT",
		"SELECT COUNT(*) AS CNT FROM REPLY WHERE ARTICLENO='" + articleNo + "'",new String[]{ });
		
		if (SQL.rs != null && SQL.rs.next()) return SQL.rs.getInt("CNT");
	} catch (Exception e)
	{
		return 0;
	}
	return 0;
}
%>