package com.User;
//IT22569486
//S.M.J.B.Samarakoon
import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {

	private static String url="jdbc:mysql://127.0.0.1:3307/hospital";
	private static String user="root";
	private static String pwd="1@Jjjjjj";
	private static Connection conn;
	
	public static Connection getConnection() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			conn=DriverManager.getConnection(url,user,pwd);
		}catch(Exception e) {
			
			System.out.println("Database connection is not success!000");
		}
		return conn;
	}
}
