package com.rk.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseCon {
	
	public static Connection con;
	
public static Connection getconnectionFromDb() {
	
	if(con==null) {
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl",
					"scott", "tiger");
		
	}catch(Exception e) {
		e.printStackTrace();
	}
	}
	return con;
	

	}
}