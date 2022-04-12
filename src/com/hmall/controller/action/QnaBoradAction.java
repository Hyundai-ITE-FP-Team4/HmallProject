package com.hmall.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hmall.dto.UserVO;

public class QnaBoradAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//1:1��� URL
		String url = "/mypage/qna/qnaboard.jsp";
		
		HttpSession session = request.getSession();
	    UserVO loginUser = (UserVO) session.getAttribute("loginUser");
	    /*
	    if (loginUser == null) {
	        url = "HmallServlet?command=login_form";
	      } 
	    else {
	    	
	    	
	    }
		*/
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
	

}
