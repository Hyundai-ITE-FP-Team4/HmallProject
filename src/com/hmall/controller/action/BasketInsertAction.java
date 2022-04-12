package com.hmall.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hmall.dao.BasketDAO;
import com.hmall.dto.BasketVO;
import com.hmall.dto.UserVO;

public class BasketInsertAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession();
		UserVO user_vo = (UserVO) session.getAttribute("user_vo");
		String userId = user_vo.getUser_id();
		String url = "HmallServlet?command=basket&userId=" + userId;
		
		if(userId == null) {
			url = "HmallServlet?command=login";
		} else {
			// DAO ����
			BasketDAO basketDAO = BasketDAO.getInstance();
			// VO ����
			BasketVO basketVO = new BasketVO();
			basketVO.setUserId(userId);
			basketVO.setProductCode(Integer.parseInt(request.getParameter("pCode")));
			basketVO.setAmount(Integer.parseInt(request.getParameter("amount")));
			
			basketDAO.insertBasket(basketVO);
		}
		
		response.sendRedirect(url);
	}

} // end class
