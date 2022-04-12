package com.hmall.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.hmall.dto.LogVO;
import com.hmall.dto.UserVO;

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
				+ "values(log_info_seq.nextval,?, ?) ";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setTimestamp(1, logVO.getLogin_date());
			pstmt.setString(2, logVO.getUser_id());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}
	
	// 조회
	public List<LogVO> listLog() {

		List<LogVO> logList = new ArrayList<LogVO>();
		String sql = "SELECT COUNT(*) as cnt, EXTRACT(MONTH FROM CAST(login_date AS TIMESTAMP)) AS MONTH FROM kimsh.LOG_INFO A GROUP BY EXTRACT(MONTH FROM CAST(login_date AS TIMESTAMP)) ORDER BY MONTH; ";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				LogVO logVO = new LogVO();
				logVO.setCnt(rs.getInt("cnt"));
				logVO.setMonth(rs.getInt("month"));
				logList.add(logVO);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return logList;
	}
}
