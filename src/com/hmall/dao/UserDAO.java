package com.hmall.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.*;

import com.hmall.dto.UserVO;

import util.DBManager;

public class UserDAO {
	private UserDAO() {

	}

	private static UserDAO instance = new UserDAO();

	public static UserDAO getInstance() {
		return instance;
	}

	public void insertUser(UserVO userVO) {
		int result = 0;
		String sql = "insert into kimsh.user_info(user_id, user_pw, user_name, phone_number, birth, address, user_point, grade) "
				+ "values(?, ?, ?, ?, ?, ?, ?, ?) ";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userVO.getUser_id());
			pstmt.setString(2, userVO.getUser_pw());
			pstmt.setString(3, userVO.getUser_name());
//			pstmt.setString(4, userVO.getEmail());
			pstmt.setString(4, userVO.getPhone_number());
			pstmt.setInt(5, userVO.getBirth());
			pstmt.setString(6, userVO.getAddress());
			pstmt.setInt(7, userVO.getUser_point());
			pstmt.setString(8, userVO.getGrade());
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}

	// 로그인 하기 위해서 아이디 비번이 db에 있는지 확인
	public UserVO checkIdPw(String user_id, String user_pw) {
		int result = -1;
		UserVO userVO = null;
		String sql = "select * from kimsh.user_info where user_id=? and user_pw = ?";
		Connection connn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			connn = DBManager.getConnection();
			pstmt = connn.prepareStatement(sql);
			pstmt.setString(1, user_id);
			pstmt.setString(2, user_pw);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				userVO = new UserVO();
				userVO.setUser_id(rs.getString("user_id"));
				userVO.setUser_pw(rs.getString("user_pw"));
				userVO.setUser_name(rs.getString("user_name"));
//				userVO.setEmail(rs.getString("email"));
				userVO.setPhone_number(rs.getString("phone_number"));
				userVO.setBirth(rs.getInt("birth"));
				userVO.setAddress(rs.getString("address"));
				userVO.setUser_point(rs.getInt("user_point"));
				userVO.setGrade(rs.getString("grade"));
			} else {
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(connn, pstmt, rs);
		}
		return userVO;
	}

//	
	public UserVO getUser(String user_id) {
		UserVO userVO = null;
		String sql = "select * from kimsh.user_info";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user_id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				userVO = new UserVO();
				userVO.setUser_id(rs.getString("user_id"));
				userVO.setUser_pw(rs.getString("user_pw"));
				userVO.setUser_name(rs.getString("user_name"));
//				userVO.setEmail(rs.getString("email"));
				userVO.setPhone_number(rs.getString("phone_number"));
				userVO.setBirth(rs.getInt("birth"));
				userVO.setAddress(rs.getString("address"));
				userVO.setUser_point(rs.getInt("user_point"));
				userVO.setGrade(rs.getString("grade"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return userVO;
	}

	// 조회
	public List<UserVO> listMember() {

		List<UserVO> userList = new ArrayList<UserVO>();
		String sql = "select * from kimsh.user_info ";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				UserVO userVO = new UserVO();
				userVO.setUser_id(rs.getString("user_id"));
				userVO.setUser_pw(rs.getString("user_pw"));
				userVO.setUser_name(rs.getString("user_name"));
//				userVO.setEmail(rs.getString("email"));
				userVO.setPhone_number(rs.getString("phone_number"));
				userVO.setBirth(rs.getInt("birth"));
				userVO.setAddress(rs.getString("address"));
				userVO.setUser_point(rs.getInt("user_point"));
				userVO.setGrade(rs.getString("grade"));
				userList.add(userVO);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return userList;
	}
	
	// 아이디 조회 (아이디 중복확인 용도)
		public String getId(String user_id) {
			String sql = "select count(*) as cnt from kimsh.user_info where user_id = ?";
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String cnt = "";
			try {
				conn = DBManager.getConnection();
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, user_id);
				rs = pstmt.executeQuery();
				while (rs.next()) {
					cnt = rs.getString("cnt");
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				DBManager.close(conn, pstmt, rs);
			}
			return cnt;
		}
}
