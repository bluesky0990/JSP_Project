<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "data.JDBC"%>
<%
	JDBC db = new JDBC();
	String[] arr1 = {"GilDong22", "2222"};
	String[] arr2 = {"ChunHyang13", "1313"};
	db.sqlExecute("insert", "insert into test values(" + 0 + ",?,?)", arr1);
	db.sqlExecute("insert", "insert into test values(" + 1 + ",?,?)", arr2);
%>
<html>
	<body>
		<h2>회원 목록</h2>
		<table>
			<tr>
				<th>회원번호</th>
				<th>아이디</th>
				<th>비밀번호</th>
			</tr>
			
			<%
			db.sqlExecute("select", "select * from test", null);
			while(JDBC.rs.next()) {
				int no = JDBC.rs.getInt("no");
				String id = JDBC.rs.getString("id");
				String pw = JDBC.rs.getString("pw");
			%>
			<tr>
				<td><%=no %></td>
				<td><%=id %></td>
				<td><%=pw %></td>
			</tr>
			<%
			}
			db.closeJDBC();
			%>
		</table>
	</body>
</html>