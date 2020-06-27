package data;

import java.sql.*;
import javax.sql.*;
import javax.naming.*;

public class Dbcp {
	public Dbcp() {
		try {
			Context initCtx = new InitialContext();
			DataSource ds = (DataSource)initCtx.lookup("java:comp/env/jdbc/hg");
			Connection con = ds.getConnection();
		} catch (Exception e) {
			System.out.println("문제가 발생하였습니다. 확인 후 수정 바랍니다." + e);
		}
	}
}
