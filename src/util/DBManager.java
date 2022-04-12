package util;
import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import javax.naming.*;
import javax.sql.*;

import com.google.gson.Gson;
import com.hmall.dto.LogVO;

public class DBManager {
	public static Connection getConnection() {
		
		Connection conn = null; //dbcp 
		try {
			Context initContext = new InitialContext();
			Context envContext = (Context) initContext.lookup("java:/comp/env");
			DataSource ds = (DataSource) envContext.lookup("jdbc/myoracle");
			conn = ds.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}

	public static void close(Connection conn, Statement stmt, ResultSet rs) {
		try {
			rs.close();
			stmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static void close(Connection conn, Statement stmt) {
		try {
			stmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void main(String[] args) {
		
		LogVO logVo1 = new LogVO();
		logVo1.setCnt(111);
		logVo1.setMonth(12);
		LogVO logVo2 = new LogVO();
		logVo2.setCnt(131);
		logVo2.setMonth(5);
		List<LogVO> list = new ArrayList<LogVO>();
		list.add(logVo1);
		list.add(logVo2);
		
		Gson gson = new Gson();
        
		String str = gson.toJson(list);
		
		System.out.println(str);
	}
} //end class