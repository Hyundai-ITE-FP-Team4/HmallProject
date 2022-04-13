package com.hmall.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;

import com.hmall.dto.MembershipVO;
import com.hmall.dto.QnaVO;

import util.DBManager;

public class MembershipDAO {
	private MembershipDAO() {}
	private static MembershipDAO instance = new MembershipDAO();

	public static MembershipDAO getInstance() {
		return instance;
	}
	
	public MembershipVO getMemership(String user_id) {
		
		MembershipVO membershipVO = null;
		
		Connection con = null;
		CallableStatement cstmt = null;
		ResultSet rs = null;
		try {
			con = DBManager.getConnection();
            cstmt = con.prepareCall("select * from table(pkg_mypage.fn_get_mypage(?))");
            cstmt.setString(1, user_id);
            rs = cstmt.executeQuery();
            
            if (rs.next()) {
				membershipVO = new MembershipVO();
				membershipVO.setUser_id(rs.getString("user_id"));
				membershipVO.setUser_name(rs.getString("user_name"));
				membershipVO.setUser_point(rs.getInt("user_point"));
				membershipVO.setGrade(rs.getString("grade"));
			}
            
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(con, cstmt);
		}
		return membershipVO;
	}
	
}
