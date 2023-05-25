package util;

import java.sql.*;

public class dbconnect {
	
	public static Connection GetConnection() throws ClassNotFoundException, SQLException {
		
		Class.forName("org.mariadb.jdbc.Driver");

		Connection conn = null;
		String host = "jdbc:mariadb://localhost:3306/comstudy21";
		String id = "root";
		String ps = "1234";
		conn = DriverManager.getConnection(host, id, ps);
		
		return conn;
	}

}