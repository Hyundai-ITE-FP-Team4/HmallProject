package util;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

/*************************************************************
파일명: DBManager.java
기능: DBCP로 DB 연결 및 연결 해제 담당 기능 분리
작성자: 박주영

[코멘트: Database Connection Pool 사용]
*************************************************************/
public class DBManager {
	
	// DB 연결 메서드, static으로 생성
	public static Connection getConnection() {
		
		// 커넥션 객체
		Connection conn = null; 
		
		try {
			
			// Context 초기화
			Context initContext = new InitialContext();
			Context envContext = (Context) initContext.lookup("java:/comp/env");
			
			// 'jdbc/myoracle'이라는 이름으로 DataSource 찾기
			// context.xml에 설정되어 있음
			DataSource ds = (DataSource) envContext.lookup("jdbc/myoracle");
			
			// DataSource로부터 Connection 객체를 받아오기
			conn = ds.getConnection();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		// Connection 객체 반환
		return conn;
	}

	// DB 연결 해제
	public static void close(Connection conn, Statement stmt, ResultSet rs) {
		
		try {
			rs.close();
			stmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	// DB 연결 해제
	public static void close(Connection conn, Statement stmt) {
		
		try {
			stmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
} //end class