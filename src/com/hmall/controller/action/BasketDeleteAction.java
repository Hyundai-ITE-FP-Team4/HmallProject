package com.hmall.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hmall.dao.BasketDAO;

/*************************************************************
파일명: BasketDeleteAction.java
기능: 장바구니 삭제
작성자: 박주영

[코멘트: allYn이 y면 전체삭제, allYn이 n이면 해당 상품만 삭제]
*************************************************************/
public class BasketDeleteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 장바구니 페이지로 이동
		String url = "HmallServlet?command=basket";

		// BasketDAO 생성 (싱글톤)
		BasketDAO basketDAO = BasketDAO.getInstance();
		
		int sbNo = Integer.parseInt(request.getParameter("sbNo").trim());
		String allYn = request.getParameter("allYn").trim();
		
		if(allYn.equals("n")) {	// 해당 장바구니만 삭제
			basketDAO.deleteBasket(sbNo);	
		} else if(allYn.equals("y")) {	// 모든 장바구니 삭제
			basketDAO.deleteAllBasket();
		} // end if

		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

} // end class
