<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>
<%@include file="../_query/SQLHelper.jsp"%>
<%try
	{
		SQLHelper SQL = new SQLHelper();
		ResultSet rs = null;
		request.setCharacterEncoding("UTF-8");
		String Id = request.getParameter("userId");
		if (Id == null || Id == "")
		{
			%><div class="alert alert-danger"><!--  alert-dismissible fade in">--> 
				    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
				    <strong>오류</strong> 아이디를 입력해주세요.
				  </div><%
			session.removeAttribute("duplicateCheck");
			SQL.closeSQL();
			return;
		}
		SQL.sqlExecute("SELECT", "SELECT * FROM MEMBER WHERE ID='" + Id + "'", null);
		rs = SQL.getrs();
		if (rs != null && rs.next())
		{
			
			%><div class="alert alert-danger"><!--  alert-dismissible fade in">--> 
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong>오류</strong> 이미 존재하는 아이디입니다.
  </div><%
  			session.removeAttribute("duplicateCheck");
		}
		else
		{
			%><div class="alert alert-success"><!--  alert-dismissible fade in">--> 
		    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
		    <strong>성공</strong> 사용가능한 아이디입니다.
		  </div><%
		  session.setAttribute("duplicateCheck", "true");
		}

		SQL.closeSQL();
	} catch (Exception e) {
		%><div class="alert alert-danger"><!--  alert-dismissible fade in">--> 
	    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
	    <strong>오류</strong> 알 수 없는 오류입니다.
	  </div><%
	  session.removeAttribute("duplicateCheck");
	}%>
