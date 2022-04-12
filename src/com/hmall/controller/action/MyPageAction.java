package com.hmall.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hmall.dto.UserVO;

public class MyPageAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {

		String url = "/mypage/mypage.jsp";
		
		HttpSession session = request.getSession();
	    UserVO user_vo = (UserVO) session.getAttribute("user_vo");
	    //System.out.println(user_vo.getUser_id());
	    
	    if (user_vo == null) {
	        url = "user/login_popup.jsp";
	        
	      } 
	    else {
	    	
	    	System.out.println(user_vo.getUser_id());
	    	
	    }
		
	    
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
	

}
