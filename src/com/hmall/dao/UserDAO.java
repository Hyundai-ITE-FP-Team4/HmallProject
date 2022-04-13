package com.hmall.dao;

import java.sql.CallableStatement;
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

	// 회원 가입
	public void insertUser_proc(UserVO userVO) {
		String sql = "{call proc_insertUser(?,?,?,?,?,?)}";
		CallableStatement cstmt = null;
		Connection conn = null;
		try {
			conn = DBManager.getConnection();
			cstmt = conn.prepareCall(sql);
			cstmt.setString(1, userVO.getUser_id());
			cstmt.setString(2, userVO.getUser_pw());
			cstmt.setString(3, userVO.getUser_name());
			cstmt.setString(4, userVO.getPhone_number());
			cstmt.setInt(5, userVO.getBirth());
			cstmt.setString(6, userVO.getAddress());
			cstmt.executeQuery();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, cstmt);
		}
	}

	// 로그인 하기 위해서 아이디 비번이 db에 있는지 확인
	public UserVO checkIdPw(String user_id, String user_pw) {
		UserVO userVO = null;
		String sql = "select * from table(pkg_user.fn_get_checkidpw(?, ?))";
		CallableStatement cstmt = null;
		Connection conn = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			cstmt = conn.prepareCall(sql);
			cstmt.setString(1, user_id);
			cstmt.setString(2, user_pw);
			rs = cstmt.executeQuery();
			if (rs.next()) {
				userVO = new UserVO();
				userVO.setUser_id(rs.getString("user_id"));
				userVO.setUser_pw(rs.getString("user_pw"));
				userVO.setUser_name(rs.getString("user_name"));
				userVO.setPhone_number(rs.getString("phone_number"));
				userVO.setBirth(rs.getInt("birth"));
				userVO.setAddress(rs.getString("address"));
			} else {
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, cstmt, rs);
		}
		return userVO;
	}


	// 조회
	public List<UserVO> listUser() {

		List<UserVO> userList = new ArrayList<UserVO>();
		String sql = "select * from table(pkg_user.fn_listuser)";
		Connection conn = null;
		CallableStatement cstmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			cstmt = conn.prepareCall(sql);
			rs = cstmt.executeQuery();
			while (rs.next()) {
				UserVO userVO = new UserVO();
				userVO.setUser_id(rs.getString("user_id"));
				userVO.setUser_pw(rs.getString("user_pw"));
				userVO.setUser_name(rs.getString("user_name"));
				userVO.setPhone_number(rs.getString("phone_number"));
				userVO.setBirth(rs.getInt("birth"));
				userVO.setAddress(rs.getString("address"));
				userList.add(userVO);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, cstmt, rs);
		}
		return userList;
	}
	
	// 아이디 조회 (아이디 중복확인 용도)
		public int checkId(String user_id) {
			String sql = "select pkg_user.fn_checkId(?) as cnt from dual";
			Connection conn = null;
			CallableStatement cstmt = null;
			ResultSet rs = null;
			int cnt = 0;
			try {
				conn = DBManager.getConnection();
				cstmt = conn.prepareCall(sql);
				cstmt.setString(1, user_id);
				rs = cstmt.executeQuery();
				while (rs.next()) {
					cnt = rs.getInt("cnt");
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				DBManager.close(conn, cstmt, rs);
			}
			return cnt;
		}
}
