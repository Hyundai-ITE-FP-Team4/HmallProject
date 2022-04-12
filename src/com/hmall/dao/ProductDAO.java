package com.hmall.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.hmall.dto.CategoryVO;
import com.hmall.dto.ProductImageVO;
import com.hmall.dto.ProductVO;

import util.DBManager;

public class ProductDAO {
	private ProductDAO() {
	} // 싱글턴 패턴 처리

	private static ProductDAO instance = new ProductDAO();

	public static ProductDAO getInstance() {
		return instance;
	}

	// 상품 상세 정보 조회
	// Pipelined Table Functions 사용
	public ProductVO getProduct(int product_code) {
		ProductVO product = null;
		String sql = "SELECT * FROM TABLE(pkg_product.fn_get_product(?))";
		Connection con = null;
		CallableStatement cstmt = null;
		ResultSet rs = null;

		try {
			con = DBManager.getConnection();
			cstmt = con.prepareCall(sql);
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
				product.setBuyCount(rs.getInt("buy_count"));
				product.setCategoryCode(rs.getString("category_code"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, cstmt, rs);
		}

		return product;
	}
	
	// 상품 상세이미지 조회
	// Pipelined Table Functions 사용
	public ProductImageVO getProductImages(int product_code) {
		ProductImageVO productImages = null;
		String sql = "SELECT * FROM TABLE(pkg_product.fn_get_productImg(?))";
		Connection con = null;
		CallableStatement cstmt = null;
		ResultSet rs = null;

		try {
			con = DBManager.getConnection();
			cstmt = con.prepareCall(sql);
			cstmt.setInt(1, product_code);
			rs = cstmt.executeQuery();
			if (rs.next()) {
				productImages = new ProductImageVO();
				productImages.setImgNo(rs.getInt("img_no"));
				productImages.setProductCode(rs.getInt("product_code"));
				ArrayList<String> imgs = new ArrayList<String>();
				for(int i = 1; i <= 10; i++) {
					String str = "img" + i;
					String img = rs.getString(str);
					if(img == null) {
						break;
					} else {
						imgs.add(img);
					}	
				}
				productImages.setImgs(imgs);
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, cstmt, rs);
		}

		return productImages;
	}

} // end class