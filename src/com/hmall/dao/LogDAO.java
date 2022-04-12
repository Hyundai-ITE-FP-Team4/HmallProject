package com.hmall.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.hmall.dto.LogVO;

import util.DBManager;

public class LogDAO {
	private LogDAO() {
		
	}
	
	private static LogDAO instance = new LogDAO();
	
	public static LogDAO getInstance() {
		return instance;
	}
	
	public void insert(LogVO logVO) {
		String sql = "insert into kimsh.log_info(user_no, login_date, user_id) "
				+ "values(?, ?, ?) ";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, logVO.getUser_no());
			pstmt.setTimestamp(2, logVO.getLogin_date());
			pstmt.setString(3, logVO.getUser_id());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}
}
