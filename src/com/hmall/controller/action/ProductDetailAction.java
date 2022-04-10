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

		// DAO ����
		ProductDAO productDAO = ProductDAO.getInstance();
		CategoryDAO categoryDAO = CategoryDAO.getInstance();

		// product_code�� ��ǰ �� ���� SELECT
		ProductVO productVO = productDAO.getProduct(pCode);

		// ��ǰ category_code�� ī�װ� ���� SELECT
		String cCode = productVO.getCategoryCode();
		CategoryVO categoryVO = categoryDAO.getCategory(cCode);
		String parentCode = categoryVO.getParentCode();
		CategoryVO parentCategoryVO = categoryDAO.getCategory(parentCode);
		ArrayList<CategoryVO> categoryList = categoryDAO.getChildCategorys(parentCode);

		// product_code�� ��ǰ �� �̹��� SELECT
		ProductImageVO productImageVO = productDAO.getProductImages(pCode);

		// ��ǰ ��ü
		request.setAttribute("productVO", productVO);
		// ��ǰ ī�װ� ��ü
		request.setAttribute("categoryVO", categoryVO);
		// ���� ī�װ� ��ü
		request.setAttribute("parentCategoryVO", parentCategoryVO);
		// ���� ���� ī�װ��� ����Ʈ
		request.setAttribute("categoryList", categoryList);
		// ��ǰ �̹��� ��ü
		request.setAttribute("productImageVO", productImageVO);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);

	}

} // end class
