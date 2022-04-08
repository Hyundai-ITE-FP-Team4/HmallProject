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
	    String sql = "insert into user_info(user_id, user_pw, user_name, email, phone_number, birth, address, user_point, grade) "
	    		+ "values(?, ?, ?, ?, ?, ?, ?, ?, ?) ";
	    Connection conn = null;
	    PreparedStatement pstmt = null;	    
	    try {
	      conn = DBManager.getConnection();
	      pstmt = conn.prepareStatement(sql);
	      pstmt.setString(1, userVO.getUser_id());      
	      pstmt.setString(2, userVO.getUser_pw());
	      pstmt.setString(3, userVO.getUser_name());
	      pstmt.setString(4, userVO.getEmail());
	      pstmt.setString(5, userVO.getPhone_number());
	      pstmt.setInt(6, userVO.getBirth());
	      pstmt.setString(7, userVO.getAddress());
	      pstmt.setInt(8, userVO.getUser_point());
	      pstmt.setString(9, userVO.getGrade());
	      result = pstmt.executeUpdate();
	    } catch (Exception e) {
	      e.printStackTrace();
	    } finally {
	      DBManager.close(conn, pstmt);
	    }
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
		    if(rs.next()){
		    	userVO = new UserVO();
		    	userVO.setUser_id(rs.getString("user_id"));
		        userVO.setUser_pw(rs.getString("user_pw"));
		        userVO.setUser_name(rs.getString("user_name"));
		        userVO.setEmail(rs.getString("email"));
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
	
	//Á¶È¸
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
		        userVO.setEmail(rs.getString("email"));
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
}
