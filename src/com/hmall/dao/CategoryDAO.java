package com.hmall.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.hmall.dto.CategoryVO;
import com.hmall.dto.ProductVO;

import util.DBManager;

public class CategoryDAO {
	private CategoryDAO() {
	} // 싱글턴 패턴 처리

	private static CategoryDAO instance = new CategoryDAO();

	public static CategoryDAO getInstance() {
		return instance;
	}

	// 카테고리 정보 조회
	public CategoryVO getCategory(String category_code) {
		CategoryVO category = null;
		String sql = "select * from category_t where category_code=?";
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			con = DBManager.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, category_code);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				category = new CategoryVO();
				category.setCategoryCode(rs.getString("category_code"));
				category.setParentCode(rs.getString("parent_code"));
				category.setCategoryName(rs.getString("category_name"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}


		return category;
	}
	
	// 카테고리별 상품들 조회
	public ArrayList<ProductVO> getProducts(String category_code) {
		ArrayList<ProductVO> products = new ArrayList<ProductVO>();
		ProductVO product = null;
		String sql = "select * from product_t where category_code=? order by product_code";
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			con = DBManager.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, category_code);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				product = new ProductVO();
				product.setProductCode(rs.getInt("product_code"));
				product.setProductName(rs.getString("product_name"));
				product.setBrand(rs.getString("brand"));
				product.setPrice(rs.getInt("price"));
				product.setDiscountPrice(rs.getInt("discount_price"));
				product.setProductImg(rs.getString("product_img"));
				product.setDeliveryCompany(rs.getString("delivery_company"));
				product.setBuyCount(rs.getInt("buy_count"));
				product.setCategoryCode(rs.getString("category_code"));
				
				products.add(product);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}
		
		return products;
	}

	// 하위 카테고리 조회
	public ArrayList<CategoryVO> getChildCategorys(String parent_code) {
		ArrayList<CategoryVO> categorys = new ArrayList<CategoryVO>();
		CategoryVO category = null;
		String sql = "select * from category_t start with parent_code=? connect by category_code=parent_code order by category_code";
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			con = DBManager.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, parent_code);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				category = new CategoryVO();
				category.setCategoryCode(rs.getString("category_code"));
				category.setParentCode(rs.getString("parent_code"));
				category.setCategoryName(rs.getString("category_name"));
				
				categorys.add(category);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}

		return categorys;
	}
}
