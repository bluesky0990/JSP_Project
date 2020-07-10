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
		String Pw = request.getParameter("userPw");
		String Nick = request.getParameter("userNick");
		String Email = request.getParameter("userEmail");
		if ((Id == null || Id == "") || (Pw == null || Pw == "") || (Nick == null || Nick == "") || (Email == null || Email == ""))
		{
			%><div class="alert alert-danger">
				    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
				    <strong>오류</strong> 빈칸을 빠짐없이 입력해주세요.
				  </div><%
			SQL.closeSQL();
			return;
		}
		if (session.getAttribute("duplicateCheck") == null)
		{
			%><div class="alert alert-danger"> 
				    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
				    <strong>오류</strong> 아이디 중복확인을 해주세요.
				  </div><%
			SQL.closeSQL();
			return;
		}
		SQL.sqlExecute("INSERT", "INSERT INTO MEMBER VALUES(?,?,?,?,'0')", new String[] {Id, Pw, Nick, Email});
		
		SQL.closeSQL();
		%><div class="alert alert-success">
			    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
			    <strong>성공</strong> 성공적으로 가입을 완료하였습니다! 축하합니다!
			  </div><%
			  session.removeAttribute("duplicateCheck");
	} catch (Exception e) {
		%><div class="alert alert-danger"> 
	    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
	    <strong>오류</strong> 알 수 없는 오류입니다.
	  </div><%
	}%>
