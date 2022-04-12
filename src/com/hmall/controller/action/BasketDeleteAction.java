package com.hmall.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hmall.dao.BasketDAO;
import com.hmall.dto.UserVO;

public class BasketDeleteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession();
		UserVO user_vo = (UserVO) session.getAttribute("user_vo");
		String userId = user_vo.getUser_id();
		String url = "HmallServlet?command=basket&userId=" + userId;

		// DAO ����
		BasketDAO basketDAO = BasketDAO.getInstance();
		int sbNo = Integer.parseInt(request.getParameter("sbNo").trim());
		String allYn = request.getParameter("allYn").trim();
		if(allYn.equals("n")) {	// 해당 장바구니만 삭제
			basketDAO.deleteBasket(sbNo);	
		} else if(allYn.equals("y")) {	// 모든 장바구니 삭제
			basketDAO.deleteAllBasket();
		}

		request.getRequestDispatcher(url).forward(request, response);
	}

} // end class
