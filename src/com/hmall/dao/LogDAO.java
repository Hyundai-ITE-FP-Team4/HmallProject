package com.hmall.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

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
	
	// 월별 로그인횟수 조회
	public List<LogVO> listLog() {

		List<LogVO> logList = new ArrayList<LogVO>();
		String sql = "SELECT COUNT(*) as cnt, EXTRACT(MONTH FROM CAST(login_date AS TIMESTAMP)) AS MONTH FROM kimsh.LOG_INFO GROUP BY EXTRACT(MONTH FROM CAST(login_date AS TIMESTAMP)) ORDER BY MONTH";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				LogVO logVO = new LogVO();
				logVO.setMonthCnt(rs.getInt("cnt"));
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
	
	// 시간별 로그인횟수 조회
	public List<LogVO> listHourLog() {

		List<LogVO> logList = new ArrayList<LogVO>();
		String sql = "SELECT count(*) as cnt, to_char(login_date, 'HH24') as hour FROM log_t WHERE to_char(login_date, 'YYYYMMDD') = to_char(sysdate,'YYYYMMDD') GROUP BY to_char(login_date, 'HH24') ORDER BY to_char(login_date, 'HH24')";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				LogVO logVO = new LogVO();
				logVO.setHourCnt(rs.getInt("cnt"));
				logVO.setHour(rs.getInt("hour"));
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
