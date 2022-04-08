package com.hmall.controller;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hmall.controller.action.Action;

/*
 * Sevlet
 * 
 * command에 맞는 Action을 실행시킴
 * 
 * */
@WebServlet("/HmallServlet")
public class HmallServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String command = request.getParameter("command");
		System.out.println("HmallServlet : " + command);

		//로그인 세션
		HttpSession session = request.getSession();
		session.setAttribute("LOGIN_INFO", "logininfoBea");
		
        if (session.getAttribute("LOGIN_INFO") != null) {
        	ActionFactory af = ActionFactory.getInstance();
        	Action action = af.getAction(command);
        	
        	if (action != null) {
        		action.execute(request, response);
        	}
        }else {
        	// 로그인 페이지
        }
        
	}
	
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		//파라미터 무엇이 들어오나 check
//		Enumeration e = request.getParameterNames();
//		while (e.hasMoreElements()) {
//			String name = (String) e.nextElement();
//			String[] values = request.getParameterValues(name);
//			for (String value : values) {
//				System.out.println("name=" + name + ",value=" + value);
//			}
//		}
		
		// 파라미터 가져오기 전에 UTF-8 설정
		request.setCharacterEncoding("UTF-8");
		
		String command = request.getParameter("command");
		System.out.println("HmallServlet : " + command);

		ActionFactory af = ActionFactory.getInstance();
		Action action = af.getAction(command);

		if (action != null) {
			action.execute(request, response);
		}
		
		//doGet(request, response);
	}

} // end class
