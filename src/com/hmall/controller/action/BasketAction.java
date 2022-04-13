package com.hmall.controller.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hmall.dao.BasketDAO;
import com.hmall.dto.BasketVO;
import com.hmall.dto.UserVO;

public class BasketAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String url = "/basket/basket.jsp";

		HttpSession session = request.getSession();
		UserVO user_vo = (UserVO) session.getAttribute("user_vo");
		if(user_vo == null) {
			response.setContentType("text/html; charset=UTF-8");
	        PrintWriter out = response.getWriter();
	        out.println("<script>alert('로그인 후 이용해주세요.'); history.back(); </script>");
		} else {
			String userId = user_vo.getUser_id();

			// DAO ����
			BasketDAO basketDAO = BasketDAO.getInstance();
			ArrayList<BasketVO> basketList = basketDAO.getBasketList(userId);

			// ��ٱ��� ����Ʈ
			request.setAttribute("basketList", basketList);
			
	        
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
		}
		
	}

} // end class
