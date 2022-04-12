package com.hmall.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hmall.dao.BasketDAO;
import com.hmall.dto.UserVO;

public class BasketUpdateAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		HttpSession session = request.getSession();
		UserVO user_vo = (UserVO) session.getAttribute("user_vo");
		String userId = user_vo.getUser_id();
		String url = "HmallServlet?command=basket&userId=" + userId;

		// DAO ����
		BasketDAO basketDAO = BasketDAO.getInstance();
		int sbNo = Integer.parseInt(request.getParameter("no").trim());
		int amount = Integer.parseInt(request.getParameter("amount").trim());
		basketDAO.updateBasket(sbNo, amount);

		request.getRequestDispatcher(url).forward(request, response);
	}

} // end class
