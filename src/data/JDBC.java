package data;

import java.sql.*;
import javax.sql.*;
import javax.naming.*;

public class JDBC {
	private Connection con = null;
	private Statement st = null;
	private PreparedStatement pStmt = null;
	public static ResultSet rs = null;
	public static String sError = "";
	public String SqlTest()
	{
		return "Test";
	}
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
		} catch (Exception e) {
			sError = e.toString();
		}
	}

	public void closeJDBC() {
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

	// Select �궗�슜 �썑 'JDBC.rs'濡� 寃곌낵瑜� 媛��졇�삤硫� �맂�떎.('public' ResultSet)
	private void sqlSelect(String sql) {
		try {
			st = con.createStatement();
			rs = st.executeQuery(sql);
		} catch (SQLException e) {
			sError = e.toString();
		}
	}
	
	private void sqlInsert(String sql, String[] parameter) {
		try {
			pStmt = con.prepareStatement(sql);
			stGetParam(parameter);
		} catch (SQLException e) {
			sError = e.toString();
		}
	}
	
	private void sqlUpdate(String sql, String[] parameter) {
		try {
			pStmt = con.prepareStatement(sql);
			stGetParam(parameter);
		} catch (SQLException e) {
			sError = e.toString();
		}
	}
	
	private void sqlDelete(String sql, String[] parameter) {
		try {
			pStmt = con.prepareStatement(sql);
			stGetParam(parameter);
		} catch (SQLException e) {
			sError = e.toString();
		}
	}
	
	
	// PreparedStatement濡� �엯�젰�맆 留ㅺ컻蹂��닔�뒗 諛곗뿴濡� �꽆寃⑥꽌 諛쏆븘�빞�븳�떎.
	// Ex) String[] arrName = {request.getParameter("id"), "admin", ... ,"name"};
	// 諛곗뿴 �꽑�뼵 �썑 JDBC 留ㅺ컻蹂��닔�뿉 �꽔�뼱二쇰㈃ �맂�떎.
	public void stGetParam(String[] parameter) {
		try {
			for(int i = 0; i < parameter.length; i++) {
				pStmt.setString(i+1, parameter[i]);
			}
			int a = pStmt.executeUpdate();
			
		} catch (SQLException e) {
			sError = e.toString();
		}
	}
}
