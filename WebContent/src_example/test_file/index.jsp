<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "data.JDBC"
%>

<%
	request.setCharacterEncoding("utf-8");
	JDBC jdbc = new JDBC();
	
	String[] data1 = {"id", "pwd", "nickname", "email"};	// 실제로 넘겨받은 데이터라고 쳤을 때
	jdbc.sqlExecute("insert", "insert into member values(?,?,?,?,'0')", data1);	// 단 배열내의 순서와 물음표의 순서는 같아야함
	
	String id = "id";
	String[] data2 = {"123", "123", "123"};
	jdbc.sqlExecute("update", "update member set pwd=?, nickname=?, email=? where id=" + id, data2);

	String[] data3 = {"id"};
	jdbc.sqlExecute("delete", "delete from member where id=" + id, null);	// sql 구문에서 직접 인가해줘도 상관 없으며,
	jdbc.sqlExecute("delete", "delete from member where id=?", data3);		// 배열로 받아도 상관없다.
	
	jdbc.sqlExecute("select", "select * from member", null);	// 셀렉트문에는 배열 받게 안했다. 귀찮다.
	while(jdbc.rs.next()) {
		String ids = jdbc.rs.getString("id");
		String pws = jdbc.rs.getString("pwd");
		String nicks = jdbc.rs.getString("nickname");
		String emails = jdbc.rs.getString("email");
		String admins = jdbc.rs.getString("admin");
	}
	
	
	jdbc.closeJDBC();	// 메모리에 할당된 SQL 객체들 연결 해제
%>