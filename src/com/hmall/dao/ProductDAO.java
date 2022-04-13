package com.hmall.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.hmall.dto.ProductImageVO;
import com.hmall.dto.ProductVO;

import util.DBManager;

/*************************************************************
파일명: ProductDAO.java
기능: 상품 관련 DB 접근
작성자: 박주영

[코멘트: SELECT 수행]
*************************************************************/
public class ProductDAO {
	
	// 싱글톤 패턴 적용
	private ProductDAO() {}
	private static ProductDAO instance = new ProductDAO();
	public static ProductDAO getInstance() {
		return instance;
	}

	// product_code로 해당 상품 상세정보 SELECT
	// Pipelined Table Function을 사용하여 Product 테이블 타입의 반환 값을 받아옴
	public ProductVO getProduct(int product_code) {
		
		ProductVO product = null;
		
		String sql = "SELECT * FROM TABLE(pkg_product.fn_get_product(?))";
		
		Connection con = null;
		CallableStatement cstmt = null;
		ResultSet rs = null;

		try {
			
			// DB 연결
			con = DBManager.getConnection();
			cstmt = con.prepareCall(sql);
			// 파라미터 설정
			cstmt.setInt(1, product_code);
			rs = cstmt.executeQuery();
			
			if (rs.next()) {
				
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
				
			} // end if
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, cstmt, rs);
		}

		return product;
		
	}
	
	// product_code로 해당 상품 상세 이미지 SELECT
	// Pipelined Table Function을 사용하여 Product_Image 테이블 타입의 반환 값을 받아옴
	public ProductImageVO getProductImages(int product_code) {
		
		ProductImageVO productImages = null;
		
		String sql = "SELECT * FROM TABLE(pkg_product.fn_get_productImg(?))";
		
		Connection con = null;
		CallableStatement cstmt = null;
		ResultSet rs = null;

		try {
			
			// DB 연결
			con = DBManager.getConnection();
			cstmt = con.prepareCall(sql);
			// 파라미터 설정
			cstmt.setInt(1, product_code);
			rs = cstmt.executeQuery();
			
			if (rs.next()) {
				
				productImages = new ProductImageVO();
				
				productImages.setImgNo(rs.getInt("img_no"));
				productImages.setProductCode(rs.getInt("product_code"));
				
				// 상세이미지를 담을 리스트
				ArrayList<String> imgs = new ArrayList<String>();
				
				// img1~img10까지의 컬럼
				for(int i = 1; i <= 10; i++) {
					String str = "img" + i;
					String img = rs.getString(str);
					
					if(img == null) { // 해당 컬럼의 값이 없으면 중지
						break;
					} else { // 해당 컬럼의 값이 있으면 imgs에 저장
						imgs.add(img);
					}	
				} // end for
				
				productImages.setImgs(imgs);
				
			} // end if
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, cstmt, rs);
		}

		return productImages;
	}

} // end class