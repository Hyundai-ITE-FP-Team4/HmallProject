package com.hmall.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hmall.dao.BasketDAO;

/*************************************************************
파일명: BasketUpdateAction.java
기능: 장바구니 수량 수정
작성자: 박주영

[코멘트: 변경할 장바구니 수량을 받아와 Basket 테이블 updates]
*************************************************************/
public class BasketUpdateAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// basket.jsp로 이동
		String url = "HmallServlet?command=basket";
				
		// BasketDAO 생성 (싱글톤)
		BasketDAO basketDAO = BasketDAO.getInstance();
		
		// 장바구니 번호(sbNo), 변경할 수량(amount)를 받아옴
		int sbNo = Integer.parseInt(request.getParameter("no").trim());
		int amount = Integer.parseInt(request.getParameter("amount").trim());
		
		// Basket 테이블에 장바구니 수량을 update하는 함수 호출
		basketDAO.updateBasket(sbNo, amount);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	} // end if

} // end class
