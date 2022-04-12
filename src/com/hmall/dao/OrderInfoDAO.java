package com.hmall.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.hmall.dto.OrderInfoVO;

import util.DBManager;

public class OrderInfoDAO {
	private OrderInfoDAO() {  } 
	private static OrderInfoDAO instance = new OrderInfoDAO();
	public static OrderInfoDAO getInstance() {
	return instance;
	}
	
	//주문 상세 정보 조회
	public OrderInfoVO getOrderInfo(int order_no) {
		OrderInfoVO orderInfo = null;
		String sql = "select * from ghkd2676.order_info where order_no=?";
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con = DBManager.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, order_no);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				orderInfo = new OrderInfoVO();
				orderInfo.setOrderNo(rs.getInt("order_no"));
				orderInfo.setUserId(rs.getString("user_id"));
				orderInfo.setOrderDate(rs.getTimestamp("order_date"));
				orderInfo.setProductCode(rs.getInt("product_code"));
				orderInfo.setAmount(rs.getInt("amount"));
				orderInfo.setState(rs.getString("state"));
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		finally {
			DBManager.close(con, pstmt, rs);
		}
		
		return orderInfo;
	}
	
	
}
