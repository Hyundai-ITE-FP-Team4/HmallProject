package com.hmall.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
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
	// Pipelined Table Functions 사용
	public CategoryVO getCategory(String category_code) {
		CategoryVO category = null;
		String sql = "SELECT * FROM TABLE(pkg_category.fn_get_category(?))";
		Connection con = null;
		CallableStatement cstmt = null;
		ResultSet rs = null;

		try {
			con = DBManager.getConnection();
			cstmt = con.prepareCall(sql);
			cstmt.setString(1, category_code);
			rs = cstmt.executeQuery();
			if (rs.next()) {
				category = new CategoryVO();
				category.setCategoryCode(rs.getString("category_code"));
				category.setParentCode(rs.getString("parent_code"));
				category.setCategoryName(rs.getString("category_name"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, cstmt, rs);
		}


		return category;
	}
	
	// 카테고리별 상품들 조회
	// Pipelined Table Functions 사용
	public ArrayList<ProductVO> getProducts(String category_code) {
		ArrayList<ProductVO> products = new ArrayList<ProductVO>();
		ProductVO product = null;
		String sql = "SELECT * FROM TABLE(pkg_product.fn_get_product_list(?))";
		Connection con = null;
		CallableStatement cstmt = null;
		ResultSet rs = null;

		try {
			con = DBManager.getConnection();
			cstmt = con.prepareCall(sql);
			cstmt.setString(1, category_code);
			rs = cstmt.executeQuery();
			while (rs.next()) {
				product = new ProductVO();
				product.setProductCode(rs.getInt("product_code"));
				product.setProductName(rs.getString("product_name"));
				product.setBrand(rs.getString("brand"));
				product.setPrice(rs.getInt("price"));
				product.setDiscountPrice(rs.getInt("discount_price"));
				product.setProductImg(rs.getString("product_img"));
				product.setDeliveryCompany(rs.getString("delivery_company"));
				product.setBasketCount(rs.getInt("basket_count"));
				product.setCategoryCode(rs.getString("category_code"));
				
				products.add(product);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, cstmt, rs);
		}
		
		return products;
	}

	// 하위 카테고리 조회
	// Pipelined Table Functions 사용
	public ArrayList<CategoryVO> getChildCategorys(String parent_code) {
		ArrayList<CategoryVO> categorys = new ArrayList<CategoryVO>();
		CategoryVO category = null;
		String sql = "SELECT * FROM TABLE(pkg_category.fn_get_category_list(?))";
		Connection con = null;
		CallableStatement cstmt = null;
		ResultSet rs = null;

		try {
			con = DBManager.getConnection();
			cstmt = con.prepareCall(sql);
			cstmt.setString(1, parent_code);
			rs = cstmt.executeQuery();
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
			DBManager.close(con, cstmt, rs);
		}

		return categorys;
	}
}