package com.hmall.controller.action;

import java.io.IOException;
import java.io.PrintWriter;

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
		if (user_vo == null) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('로그인 후 이용해주세요.'); history.back(); </script>");
		} else {
			String userId = user_vo.getUser_id();
			String url = "HmallServlet?command=basket&userId=" + userId;
			// DAO ����
			BasketDAO basketDAO = BasketDAO.getInstance();
			// VO ����
			BasketVO basketVO = new BasketVO();
			basketVO.setUserId(userId);
			basketVO.setProductCode(Integer.parseInt(request.getParameter("pCode")));
			basketVO.setAmount(Integer.parseInt(request.getParameter("amount")));

			basketDAO.insertBasket(basketVO);
			
			response.sendRedirect(url);
		}
	}

} // end class
