package com.hmall.controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hmall.dao.CategoryDAO;
import com.hmall.dao.ProductDAO;
import com.hmall.dto.CategoryVO;
import com.hmall.dto.ProductImageVO;
import com.hmall.dto.ProductVO;

/*************************************************************
파일명: ProductDetailAction.java
기능: 상품 상세 페이지
작성자: 박주영

[코멘트: 상품에 대한 상세 정보가 있는 페이지로 이동]
*************************************************************/
public class ProductDetailAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// productDetail.jsp로 이동
		String url = "/product/productDetail.jsp";
		// product_code를 받아옴
		int pCode = Integer.parseInt(request.getParameter("pCode").trim());

		// ProductDAO 생성 (싱글톤)
		ProductDAO productDAO = ProductDAO.getInstance();
		// CategoryDAO 생성 (싱글톤)
		CategoryDAO categoryDAO = CategoryDAO.getInstance();

		// product_code로 현재 상품 객체 SELECT
		ProductVO productVO = productDAO.getProduct(pCode);

		// 현재 상품의 카테고리 코드
		String cCode = productVO.getCategoryCode();
		// 카테고리 코드로 카테고리 객체 SELECT
		CategoryVO categoryVO = categoryDAO.getCategory(cCode);
		// 카테고리의 상위 코드
		String parentCode = categoryVO.getParentCode();
		// 카테고리의 상위 카테고리 SELECT
		CategoryVO parentCategoryVO = categoryDAO.getCategory(parentCode);
		// 상위 카테고리의 하위 카테고리 리스트 SELECT 
		ArrayList<CategoryVO> categoryList = categoryDAO.getChildCategorys(parentCode);

		// product_code로 상품 상세 이미지 SELECT
		ProductImageVO productImageVO = productDAO.getProductImages(pCode);

		// JSP에서 필요한 속성 설정
		
		// 상품 객체
		request.setAttribute("productVO", productVO);
		// 상품 카테고리 객체
		request.setAttribute("categoryVO", categoryVO);
		// 상위 카테고리 객체
		request.setAttribute("parentCategoryVO", parentCategoryVO);
		// 상위 카테고리의 하위 카테고리 리스트
		request.setAttribute("categoryList", categoryList);
		// 상품 이미지 객체
		request.setAttribute("productImageVO", productImageVO);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);

	}

} // end class