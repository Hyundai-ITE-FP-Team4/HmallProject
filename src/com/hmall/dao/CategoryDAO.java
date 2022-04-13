package com.hmall.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.hmall.dto.CategoryVO;
import com.hmall.dto.ProductVO;

import util.DBManager;

/*************************************************************
파일명: CategoryDAO.java
기능: 카테고리 관련 DB 접근
작성자: 박주영

[코멘트: SELECT 수행]
*************************************************************/
public class CategoryDAO {
	
	// 싱글톤 패턴 적용
	private CategoryDAO() {}
	private static CategoryDAO instance = new CategoryDAO();
	public static CategoryDAO getInstance() {
		return instance;
	}

	// category_code로 카테고리 정보 SELECT
	// Pipelined Table Function을 사용하여 Category 테이블 타입의 반환 값을 받아옴
	public CategoryVO getCategory(String category_code) {
		
		CategoryVO category = null;
		
		String sql = "SELECT * FROM TABLE(pkg_category.fn_get_category(?))";
		
		Connection con = null;
		CallableStatement cstmt = null;
		ResultSet rs = null;

		try {
			// DB 연결
			con = DBManager.getConnection();
			cstmt = con.prepareCall(sql);
			// 파라미터 설정
			cstmt.setString(1, category_code);
			rs = cstmt.executeQuery();
			if (rs.next()) {
				
				category = new CategoryVO();
				
				category.setCategoryCode(rs.getString("category_code"));
				category.setParentCode(rs.getString("parent_code"));
				category.setCategoryName(rs.getString("category_name"));
				
			} // end if
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, cstmt, rs);
		}

		return category;
	}
	
	// category_code로 카테고리에 속한 상품 리스트 SELECT
	// Pipelined Table Function을 사용하여 Product 테이블 타입의 반환 값을 받아옴
	public ArrayList<ProductVO> getProducts(String category_code) {
		
		ArrayList<ProductVO> products = new ArrayList<ProductVO>();
		ProductVO product = null;
		
		String sql = "SELECT * FROM TABLE(pkg_product.fn_get_product_list(?))";
		
		Connection con = null;
		CallableStatement cstmt = null;
		ResultSet rs = null;

		try {
			// DB 연결
			con = DBManager.getConnection();
			cstmt = con.prepareCall(sql);
			// 파라미터 설정
			cstmt.setString(1, category_code);
			rs = cstmt.executeQuery();
			// ROW가 여러 개일 수 있어 반복문으로 받아와 products에 저장
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
			} // end while
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, cstmt, rs);
		}
		
		return products;
	}

	// category_code로 하위 카테고리 리스트 SELECT
	// Pipelined Table Function을 사용하여 Category 테이블 타입의 반환 값을 받아옴
	public ArrayList<CategoryVO> getChildCategorys(String parent_code) {
		
		ArrayList<CategoryVO> categorys = new ArrayList<CategoryVO>();
		CategoryVO category = null;
		
		String sql = "SELECT * FROM TABLE(pkg_category.fn_get_category_list(?))";
		
		Connection con = null;
		CallableStatement cstmt = null;
		ResultSet rs = null;

		try {
			
			// DB 연결
			con = DBManager.getConnection();
			cstmt = con.prepareCall(sql);
			// 파라미터 설정
			cstmt.setString(1, parent_code);
			rs = cstmt.executeQuery();
			// ROW가 여러 개일 수 있어 반복문으로 받아와 categorys에 저장
			while (rs.next()) {
				
				category = new CategoryVO();
				
				category.setCategoryCode(rs.getString("category_code"));
				category.setParentCode(rs.getString("parent_code"));
				category.setCategoryName(rs.getString("category_name"));
				
				categorys.add(category);
				
			} // end while
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, cstmt, rs);
		}

		return categorys;
	}
} // end class