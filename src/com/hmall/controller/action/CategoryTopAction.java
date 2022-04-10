package com.hmall.controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hmall.dao.CategoryDAO;
import com.hmall.dto.CategoryVO;
import com.hmall.dto.ProductVO;

public class CategoryTopAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String url = "/category/categoryTop.jsp";
		String cCode = request.getParameter("cCode").trim();
		
		// DAO 생성
		CategoryDAO categoryDAO = CategoryDAO.getInstance();
		
		// category_group으로 카테고리 정보 SELECT
		CategoryVO categoryVO = categoryDAO.getCategory(cCode);
		ArrayList<CategoryVO> categoryList = categoryDAO.getChildCategorys(cCode);
		
		
		request.setAttribute("categoryVO", categoryVO);
		request.setAttribute("categoryList", categoryList);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}

} // end class
