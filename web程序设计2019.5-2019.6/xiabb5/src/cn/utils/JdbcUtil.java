package cn.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class JdbcUtil {
	private static String url = "jdbc:mysql://localhost:3306/xiabb";
	private static String user = "root";
	private static String password = "root";

	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			return DriverManager.getConnection(url, user, password);
		} catch (Exception var1) {
			throw new RuntimeException(var1);
		}
	}

	public static void closeAll(Connection con, Statement stmt, ResultSet rs) {
		try {
			if (rs != null) {
				rs.close();
				rs = null;
			}

			if (stmt != null) {
				stmt.close();
				stmt = null;
			}

			if (con != null && !con.isClosed()) {
				con.close();
				con = null;
			}

		} catch (SQLException var4) {
			throw new RuntimeException(var4);
		}
	}
}