package com.hmall.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;

import com.hmall.dto.MembershipVO;
import com.hmall.dto.QnaVO;

import util.DBManager;

/*************************************************************
파일명: MembershipDAO.java
기능: v_membership 뷰 테이블에 대한 데이터 접근을 위한 객체
작성자: 황명하

코멘트: 원하는 회원의 멤버쉽 정보를 얻는 기능
*************************************************************/

public class MembershipDAO {
	private MembershipDAO() {}
	private static MembershipDAO instance = new MembershipDAO();

	public static MembershipDAO getInstance() {
		return instance;
	}
	
	//원하는 회원의 멤버쉽 정보를 얻는 기능 구현
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
