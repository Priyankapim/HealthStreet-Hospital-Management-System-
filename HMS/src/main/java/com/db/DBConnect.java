package com.db;
import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	
		private static Connection conn;
		
		public static Connection getConn() {
			
			try {
				
				//step:1 for connection - load the driver class 
				Class.forName("oracle.jdbc.driver.OracleDriver");
				
				//step:2- create a connection
				conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","piu","piu");
			
				
			} catch (Exception e) {
				e.printStackTrace();
	
			}
			
			return conn;
		}
	
}
