package data;

import java.sql.Connection;
import java.sql.SQLException;
import javax.sql.DataSource;
import javax.naming.InitialContext;

public class ConnectionPool {
	
	private static DataSource ds = null;
	
	public ConnectionPool() {
		try {
			InitialContext context = new InitialContext();
			ds = (DataSource) context.lookup("java:/comp/env/jdbc/hg");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public Connection getConnection() {
		try {
			return ds.getConnection();
		}

		catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}

	public void closeConnection(Connection connectedPool) {
		try {
			connectedPool.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}