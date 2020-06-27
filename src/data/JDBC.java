package data;

import java.sql.*;
import javax.sql.*;
import javax.naming.*;

public class JDBC {
	private Connection con = null;
	private Statement st = null;
	private PreparedStatement pStmt = null;
	public ResultSet rs = null;
	
	public void sqlExecute(String type, String sql, String[] parameter) {
		try {
			Context initCtx = new InitialContext();
			DataSource ds = (DataSource)initCtx.lookup("java:comp/env/jdbc/hg");
			con = ds.getConnection();
			
			switch (type) {
			case "select":
				sqlSelect(sql);
				break;
			case "insert":
				sqlInsert(sql, parameter);
				break;
			case "update":
				sqlUpdate(sql, parameter);
				break;
			case "delete":
				sqlDelete(sql, parameter);
				break;
			}
			closeJDBC();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private void closeJDBC() {
		if (rs != null) {
            try {
                rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (st != null) {
            try {
                st.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (pStmt != null) {
            try {
                pStmt.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (con != null) {
            try {
                con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
	}

	// Select 사용 후 'Dbcp.rs'로 결과를 가져오면 된다.('public' ResultSet)
	private void sqlSelect(String sql) {
		try {
			st = con.createStatement();
			rs = st.executeQuery(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	private void sqlInsert(String sql, String[] parameter) {
		try {
			pStmt = con.prepareStatement(sql);
			stGetParam(parameter);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	private void sqlUpdate(String sql, String[] parameter) {
		try {
			pStmt = con.prepareStatement(sql);
			stGetParam(parameter);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	private void sqlDelete(String sql, String[] parameter) {
		try {
			pStmt = con.prepareStatement(sql);
			stGetParam(parameter);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	
	// PreparedStatement로 입력될 매개변수는 배열로 넘겨서 받아야한다.
	// Ex) String[] arrName = {request.getParameter("id"), "admin", ... ,"name"};
	// 배열 선언 후 Dbcp 매개변수에 넣어주면 된다.
	public void stGetParam(String[] parameter) {
		try {
			for(int i = 0; i < parameter.length; i++) {
				pStmt.setString(i+1, parameter[i]);
			}
			int a = pStmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
