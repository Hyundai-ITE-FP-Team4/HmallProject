package com.hmall.controller.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hmall.dto.UserVO;

public class QnaPopUp implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//1:1��� URL
		String url = "/mypage/qna/qnapopup.jsp";
		
		HttpSession session = request.getSession();
	    UserVO user_vo = (UserVO) session.getAttribute("user_vo");
	    if (user_vo == null) {
	    	response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
	    	out.println("<script>alert('로그인 후 이용해주세요.'); location.href = 'HmallServlet?command=index'; </script>");
	        //url = "user/login_popup.jsp";
	        
	      } 
	    else {
	    	RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
	    }
		
	}
	

}