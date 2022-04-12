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

public class ProductDetailAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String url = "/product/productDetail.jsp";
		int pCode = Integer.parseInt(request.getParameter("pCode").trim());

		// DAO 생성
		ProductDAO productDAO = ProductDAO.getInstance();
		CategoryDAO categoryDAO = CategoryDAO.getInstance();

		// product_code로 상품 상세 정보 SELECT
		ProductVO productVO = productDAO.getProduct(pCode);

		// 상품 category_code로 카테고리 정보 SELECT
		String cCode = productVO.getCategoryCode();
		CategoryVO categoryVO = categoryDAO.getCategory(cCode);
		String parentCode = categoryVO.getParentCode();
		CategoryVO parentCategoryVO = categoryDAO.getCategory(parentCode);
		ArrayList<CategoryVO> categoryList = categoryDAO.getChildCategorys(parentCode);

		// product_code로 상품 상세 이미지 SELECT
		ProductImageVO productImageVO = productDAO.getProductImages(pCode);

		// 상품 객체
		request.setAttribute("productVO", productVO);
		// 상품 카테고리 객체
		request.setAttribute("categoryVO", categoryVO);
		// 상위 카테고리 객체
		request.setAttribute("parentCategoryVO", parentCategoryVO);
		// 같은 레벨 카테고리들 리스트
		request.setAttribute("categoryList", categoryList);
		// 상품 이미지 객체
		request.setAttribute("productImageVO", productImageVO);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);

	}

} // end class