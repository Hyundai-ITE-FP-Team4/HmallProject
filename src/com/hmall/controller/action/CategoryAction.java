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
		
		// DAO ����
		CategoryDAO categoryDAO = CategoryDAO.getInstance();
		
		// category_code�� ī�װ� ���� SELECT
		CategoryVO categoryVO = categoryDAO.getCategory(cCode);
		String parentCode = categoryVO.getParentCode();
		CategoryVO parentCategoryVO = categoryDAO.getCategory(parentCode);
		ArrayList<CategoryVO> categoryList = categoryDAO.getChildCategorys(parentCode);
		
		// category_code�� ��ǰ����Ʈ SELECT
		ArrayList<ProductVO> products;
		products = categoryDAO.getProducts(cCode);
		
		// ī�װ� ��ü
		request.setAttribute("categoryVO", categoryVO);
		// ī�װ��� ���� ��ǰ�� ����Ʈ
		request.setAttribute("products", products);
		// ���� ī�װ� ��ü
		request.setAttribute("parentCategoryVO", parentCategoryVO);
		// ���� ���� ī�װ��� ����Ʈ
		request.setAttribute("categoryList", categoryList);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}

} // end class
