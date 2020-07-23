<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import=
"javax.sql.*,
java.sql.*,
javax.naming.*,
javax.sql.rowset.CachedRowSet,
data.ConnectionPool"
%><%!
public static class SQLHelper {
	// SQLHelper에 대한 생성자
	public SQLHelper()
	{
		try
		{
			if (cp == null) cp = new ConnectionPool();
			con = cp.getConnection();
		} catch (Exception e) {
			sError = "JDBC INIT ERROR\n" + e.toString();
		}
	}
	
	
	
	
	
	// JDBC 구성에 필요한 객체 및 변수 선언
	private ConnectionPool cp = null;
	private Connection con = null;
	private Statement st = null;
	private PreparedStatement pStmt = null;
	private ResultSet rs = null;
	private String sError = "";
	
	
	
	
	
	// ResultSet 값 받아오기
	public ResultSet getrs()
	{
		return rs;
	}
	
	
	
	
	// SQL 실행 메소드
	public void sqlExecute(String type, String sql, String[] parameter) {
		try {
			
			type = type.toUpperCase();
			switch (type) {
			case "SELECT":
				sqlSelect(sql);
				break;
			case "INSERT":
				sqlInsert(sql, parameter);
				break;
			case "UPDATE":
				sqlUpdate(sql, parameter);
				break;
			case "DELETE":
				sqlDelete(sql, parameter);
				break;
			}
		} catch (Exception e) {
			sError = e.toString();
		}
	}

	
	
	
	// SQL을 사용하고 나서 공간을 다시 확보해주기 위한 작업
	public void closeSQL() {
		if (rs != null) {
            try {
                rs.close();
            } catch (SQLException e) {
            	sError = e.toString();
            }
        }
        if (st != null) {
            try {
                st.close();
            } catch (SQLException e) {
            	sError = e.toString();
            }
        }
        if (pStmt != null) {
            try {
                pStmt.close();
            } catch (SQLException e) {
            	sError = e.toString();
            }
        }
        if (con != null) {
            try {
                con.close();
            } catch (SQLException e) {
            	sError = e.toString();
            }
        }
	}
	
	
	
	
	// 실행한 SQL 타입별 메소드 실행
	private void sqlSelect(String sql) {
		try {
			st = con.createStatement();
			st.setQueryTimeout(3);
			rs = st.executeQuery(sql);
		} catch (Exception e) {
			sError = e.toString();
		}
	}
	
	private void sqlInsert(String sql, String[] parameter) {
		try {
			pStmt = con.prepareStatement(sql);
			pStmt.setQueryTimeout(3);
			stGetParam(parameter);
		} catch (Exception e) {
			sError = e.toString();
		}
	}
	
	private void sqlUpdate(String sql, String[] parameter) {
		try {
			pStmt = con.prepareStatement(sql);
			pStmt.setQueryTimeout(3);
			stGetParam(parameter);
		} catch (Exception e) {
			sError = e.toString();
		}
	}
	
	private void sqlDelete(String sql, String[] parameter) {
		try {
			pStmt = con.prepareStatement(sql);
			pStmt.setQueryTimeout(3);
			stGetParam(parameter);
		} catch (Exception e) {
			sError = e.toString();
		}
	}
	
	public void stGetParam(String[] parameter) {
		try {
			if (parameter != null)
			{
			for(int i = 0; i < parameter.length; i++) {
				pStmt.setString(i+1, parameter[i]);
			}
			}
			pStmt.executeUpdate();
		} catch (Exception e) {
			sError = e.toString();
		}
	}
}
%>