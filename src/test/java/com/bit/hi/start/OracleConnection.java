package com.bit.hi.start;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

public class OracleConnection {

	private static final String DRIVER =
			"oracle.jdbc.pool.OracleDataSource";
	private static final String URL =
			"jdbc:oracle:thin:@127.0.0.1:1521:xe";
	private static final String USER = "hisoi";
	private static final String PWD = "hisoi";
	
	//jdk 1.8 version 이상에서 가능함
	@Test
	public void testConn() throws Exception {
		Class.forName(DRIVER);
		
		//Connection 객체 얻어오기
		try(Connection conn = DriverManager.getConnection(URL, USER, PWD)) {
			System.out.println(conn);
			System.out.println("Oracle 연결 완료");
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	//try 괄호 안에 값을 넣어주면 finally, close 작업으로 자원 반납할 필요 없음.
}
