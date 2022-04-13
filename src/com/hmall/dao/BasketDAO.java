package com.hmall.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.hmall.dto.BasketVO;

import util.DBManager;

/*************************************************************
파일명: BasketDAO.java
기능: 장바구니 관련 DB 접근
작성자: 박주영

[코멘트: SELECT, INSERT, UPDATE, DELETE, DELETE ALL 수행]
*************************************************************/
public class BasketDAO {
	
	// 싱글톤 패턴 적용
	private BasketDAO() {}
	private static BasketDAO instance = new BasketDAO();
	public static BasketDAO getInstance() {
		return instance;
	}

	// user_id로 해당 회원의 장바구니 리스트를 가져옴
	// Pipelined Table Function을 사용하여 Basket 테이블 타입의 반환 값을 받아옴
	public ArrayList<BasketVO> getBasketList(String userId) {
		
		ArrayList<BasketVO> basketList = new ArrayList<BasketVO>();
		String sql = "SELECT * FROM TABLE(pkg_basket.fn_get_basket_list(?))";
		
		Connection con = null;
		CallableStatement cstmt = null;
		ResultSet rs = null;

		try {
			// DB 연결
			con = DBManager.getConnection();
			cstmt = con.prepareCall(sql);
			// 파라미터 설정
			cstmt.setString(1, userId);
			rs = cstmt.executeQuery();
			// ROW가 여러 개일 수 있어 반복문으로 받아와 basketList에 저장
			while (rs.next()) {
				BasketVO basket = new BasketVO();
				
				basket.setSbNo(rs.getInt("sb_no"));
				basket.setUserId(rs.getString("user_id"));
				basket.setProductCode(rs.getInt("product_code"));
				basket.setAmount(rs.getInt("amount"));
				basket.setSbDate(rs.getTimestamp("sb_date"));
				
				basketList.add(basket);
			} // end while
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, cstmt, rs);
		}

		return basketList;
	}
	
	// 장바구니에 값을 삽입하는 프로시저 호출
	public void insertBasket(BasketVO basketVO) {
		
		String sql = "{CALL pkg_basket.proc_insert_basket(?, ?, ?)}";
		
		Connection con = null;
		CallableStatement cstmt = null;

		try {
			
			// DB 연결
			con = DBManager.getConnection();
			cstmt = con.prepareCall(sql);
			// 파라미터 설정
			cstmt.setString(1, basketVO.getUserId());
			cstmt.setInt(2, basketVO.getProductCode());
			cstmt.setInt(3, basketVO.getAmount());
			cstmt.executeUpdate();	
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, cstmt);
		}
		
	}
	
	// 장바구니의 데이터(수량)를 업데이트하는 프로시저 호출
	public void updateBasket(int sbNo, int amount) {
		
		String sql = "{CALL pkg_basket.proc_update_basket(?, ?)}";
		
		Connection con = null;
		CallableStatement cstmt = null;

		try {
			
			// DB 연결
			con = DBManager.getConnection();
			cstmt = con.prepareCall(sql);
			// 파라미터 설정
			cstmt.setInt(1, sbNo);
			cstmt.setInt(2, amount);
			cstmt.executeUpdate();	
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, cstmt);
		}
		
	}
	
	// 장바구니 번호를 입력받아 장바구니를 삭제하는 프로시저 호출
	public void deleteBasket(int sbNo) {
		
		String sql = "{CALL pkg_basket.proc_delete_basket(?)}";
		
		Connection con = null;
		CallableStatement cstmt = null;

		try {
			// DB 연결
			con = DBManager.getConnection();
			cstmt = con.prepareCall(sql);
			// 파라미터 설정
			cstmt.setInt(1, sbNo);
			cstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, cstmt);
		}
		
	}

	// 장바구니를 모두 삭제하는 프로시저 호출
	public void deleteAllBasket() {
		
		String sql = "{CALL pkg_basket.proc_deleteAll_basket}";
		
		Connection con = null;
		CallableStatement cstmt = null;

		try {
			
			// DB 연결
			con = DBManager.getConnection();
			cstmt = con.prepareCall(sql);
			cstmt.executeUpdate();	
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, cstmt);
		}
		
	}
	
} // end class
