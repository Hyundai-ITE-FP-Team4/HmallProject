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

public class CategoryAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String url = "/category/category.jsp";
		String cCode = request.getParameter("cCode").trim();
		
		// DAO 생성
		CategoryDAO categoryDAO = CategoryDAO.getInstance();
		
		// category_code로 카테고리 정보 SELECT
		CategoryVO categoryVO = categoryDAO.getCategory(cCode);
		
		// parent_code로 상위 카테고리, 같은 레벨 카테고리 리스트 SELECT
		String parentCode = categoryVO.getParentCode();
		CategoryVO parentCategoryVO = categoryDAO.getCategory(parentCode);
		ArrayList<CategoryVO> categoryList = categoryDAO.getChildCategorys(parentCode);
		
		// category_code로 상품리스트 SELECT
		ArrayList<ProductVO> products;
		products = categoryDAO.getProducts(cCode);
		
		// 카테고리 객체
		request.setAttribute("categoryVO", categoryVO);
		// 카테고리에 속한 상품들 리스트
		request.setAttribute("products", products);
		// 상위 카테고리 객체
		request.setAttribute("parentCategoryVO", parentCategoryVO);
		// 같은 레벨 카테고리들 리스트
		request.setAttribute("categoryList", categoryList);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}

} // end class