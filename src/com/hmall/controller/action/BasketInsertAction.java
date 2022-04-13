package com.hmall.controller.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hmall.dao.BasketDAO;
import com.hmall.dto.BasketVO;
import com.hmall.dto.UserVO;

/*************************************************************
파일명: BasketInsertAction.java
기능: 장바구니 추가
작성자: 박주영

[코멘트: x]
*************************************************************/
public class BasketInsertAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// 세션에서 user_id 받아옴
		HttpSession session = request.getSession();
		UserVO user_vo = (UserVO) session.getAttribute("user_vo");

		if (user_vo == null) { // 세션에 없을 경우, 알림창 띄우기

			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('로그인 후 이용해주세요.'); history.back(); </script>");

		} else { // 세션에 있을 경우, 받아와서 forward

			String userId = user_vo.getUser_id();

			// BasketDAO 생성 (싱글톤)
			BasketDAO basketDAO = BasketDAO.getInstance();
			
			// BasketVO 객체 생성하여 값 지정 (userId, product_code, amount)
			BasketVO basketVO = new BasketVO();
			basketVO.setUserId(userId);
			basketVO.setProductCode(Integer.parseInt(request.getParameter("pCode")));
			basketVO.setAmount(Integer.parseInt(request.getParameter("amount")));

			// Basket 테이블에 insert하는 함수 호출
			basketDAO.insertBasket(basketVO);

			// basket.jsp로 이동
			String url = "HmallServlet?command=basket";

			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);

		} // end if
	}

} // end class
