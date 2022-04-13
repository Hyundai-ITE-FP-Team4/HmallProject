package com.hmall.controller.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hmall.dao.MembershipDAO;
import com.hmall.dto.MembershipVO;
import com.hmall.dto.UserVO;

public class MyPageAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {

		String url = "/mypage/mypage.jsp";

		// 세션에 저장된 유저 정보 받아오기
		HttpSession session = request.getSession();
	    UserVO user_vo = (UserVO) session.getAttribute("user_vo");

	  //유저 정보가 없으면 접근 못하도록 설정
	    if (user_vo == null) {
	    	response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
	    	out.println("<script>alert('로그인 후 이용해주세요.'); location.href = 'HmallServlet?command=index'; </script>");
	        //url = "user/login_popup.jsp";
	        
	      } 
	    else {
	    	String user_id = user_vo.getUser_id();
	    	System.out.println(user_vo.getUser_id());
	    	
	    	//마이페이지에 표시할 사용자에 대한 뷰 표시 로직 수행 시작
	    	MembershipDAO membershipDAO = MembershipDAO.getInstance();
	    	MembershipVO membershipVO = membershipDAO.getMemership(user_id);
	    	
	    	
	    	request.setAttribute("membershipVO",membershipVO);
	    	
	    	RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
	    }
	}
}
