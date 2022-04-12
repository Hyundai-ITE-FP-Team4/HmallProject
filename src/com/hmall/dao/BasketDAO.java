package com.hmall.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.hmall.dto.BasketVO;

import util.DBManager;

public class BasketDAO {
	private BasketDAO() {
	} // �̱��� ���� ó��

	private static BasketDAO instance = new BasketDAO();

	public static BasketDAO getInstance() {
		return instance;
	}

	// ��ٱ��� ����Ʈ ��ȸ
	public ArrayList<BasketVO> getBasketList(String userId) {
		ArrayList<BasketVO> basketList = new ArrayList<BasketVO>();
		String sql = "SELECT * FROM TABLE(pkg_basket.fn_get_basket_list(?))";
		Connection con = null;
		CallableStatement cstmt = null;
		ResultSet rs = null;

		try {
			con = DBManager.getConnection();
			cstmt = con.prepareCall(sql);
			cstmt.setString(1, userId);
			rs = cstmt.executeQuery();
			while (rs.next()) {
				BasketVO basket = new BasketVO();
				basket.setSbNo(rs.getInt("sb_no"));
				basket.setUserId(rs.getString("user_id"));
				basket.setProductCode(rs.getInt("product_code"));
				basket.setAmount(rs.getInt("amount"));
				basket.setSbDate(rs.getTimestamp("sb_date"));
				
				basketList.add(basket);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, cstmt, rs);
		}


		return basketList;
	}
	
	// ��ٱ��� �߰�
	public void insertBasket(BasketVO basketVO) {
		String sql = "{CALL pkg_basket.proc_insert_basket(?, ?, ?)}";
		Connection con = null;
		CallableStatement cstmt = null;

		try {
			con = DBManager.getConnection();
			cstmt = con.prepareCall(sql);
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
	
	public void updateBasket(int sbNo, int amount) {
		String sql = "{CALL pkg_basket.proc_update_basket(?, ?)}";
		Connection con = null;
		CallableStatement cstmt = null;

		try {
			con = DBManager.getConnection();
			cstmt = con.prepareCall(sql);
			cstmt.setInt(1, sbNo);
			cstmt.setInt(2, amount);
			cstmt.executeUpdate();	
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, cstmt);
		}
		
	}
	
	// ��ٱ��� ����
	public void deleteBasket(int sbNo) {
		String sql = "{CALL pkg_basket.proc_delete_basket(?)}";
		Connection con = null;
		CallableStatement cstmt = null;

		try {
			con = DBManager.getConnection();
			cstmt = con.prepareCall(sql);
			cstmt.setInt(1, sbNo);
			cstmt.executeUpdate();	
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, cstmt);
		}
	}

	public void deleteAllBasket() {
		String sql = "{CALL pkg_basket.proc_deleteAll_basket}";
		Connection con = null;
		CallableStatement cstmt = null;

		try {
			con = DBManager.getConnection();
			cstmt = con.prepareCall(sql);
			cstmt.executeUpdate();	
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, cstmt);
		}
	}
}
