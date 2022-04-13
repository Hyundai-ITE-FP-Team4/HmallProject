package com.hmall.controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hmall.dao.CategoryDAO;
import com.hmall.dto.CategoryVO;

/*************************************************************
파일명: CategoryTopAction.java
기능: 카테고리 중분류별 페이지
작성자: 박주영

[코멘트: 카테고리 중분류별 페이지로 이동]
*************************************************************/
public class CategoryTopAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// categoryTop.jsp로 이동
		String url = "/category/categoryTop.jsp";
		// category_code를 받아옴
		String cCode = request.getParameter("cCode").trim();
		
		// CategoryDAO 생성 (싱글톤)
		CategoryDAO categoryDAO = CategoryDAO.getInstance();
		
		// category_code로 현재 카테고리 객체 SELECT
		CategoryVO categoryVO = categoryDAO.getCategory(cCode);
		// 현재 카테고리의 하위 카테고리 리스트 SELECT
		ArrayList<CategoryVO> categoryList = categoryDAO.getChildCategorys(cCode);
		
		// JSP에서 필요한 속성 설정
		
		// 현재 카테고리 객체
		request.setAttribute("categoryVO", categoryVO);
		// 하위 카테고리 리스트
		request.setAttribute("categoryList", categoryList);
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}

} // end class
