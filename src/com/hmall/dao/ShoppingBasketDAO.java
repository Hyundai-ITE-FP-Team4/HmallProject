package com.hmall.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.hmall.dto.ShoppingBasketVO;

import util.DBManager;

public class ShoppingBasketDAO {
	private ShoppingBasketDAO() {
	};

	private static ShoppingBasketDAO instance = new ShoppingBasketDAO();

	public static ShoppingBasketDAO getInstance() {
		return instance;
	}

	//장바구니 정보 조회
	public ShoppingBasketVO getShoppingBasket(int sb_no) {
		ShoppingBasketVO shoppingBasket = null;
		String sql = "select * from ghkd2676.shopping_basket where sb_no=?";
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			con = DBManager.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, sb_no);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				shoppingBasket = new ShoppingBasketVO();
				shoppingBasket.setSbNo(rs.getInt("sb_no"));
				shoppingBasket.setUserId(rs.getString("user_id"));
				shoppingBasket.setProductCode(rs.getInt("product_code"));
				shoppingBasket.setAmount(rs.getInt("amount"));
				shoppingBasket.setSbDate(rs.getTimestamp("sb_date"));

			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}

		return shoppingBasket;
	}

}
