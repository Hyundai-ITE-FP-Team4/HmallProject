package com.hmall.dao;

import java.sql.CallableStatement;
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
		String sql = "{call pkg_user.proc_insertLog(?, ?)}";
		CallableStatement cstmt = null;
		Connection conn = null;
		try {
			conn = DBManager.getConnection();
			cstmt = conn.prepareCall(sql);
			cstmt.setTimestamp(1, logVO.getLogin_date());
			cstmt.setString(2, logVO.getUser_id());
			cstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, cstmt);
		}
	}
	
	// 월별 로그인횟수 조회
	public List<LogVO> listLog() {

		List<LogVO> logList = new ArrayList<LogVO>();
		String sql = "select * from v_monthLog";
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
		String sql = "select * from v_hourLog";
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
