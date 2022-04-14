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
import com.hmall.dto.UserVO;

/*************************************************************
파일명: HmallServlet.java
기능: 요청(command)에 따라 처리 클래스(Action)를 호출하여 수행 
작성자: 김승환 

[코멘트: x]
*************************************************************/
@WebServlet("/HmallServlet")
public class HmallServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// 파라미터 가져오기 전에 UTF-8 설정
		request.setCharacterEncoding("UTF-8");
		
		//command param
		String command = request.getParameter("command");

		// 로그인 세션
		HttpSession session = request.getSession(true);
		session.setMaxInactiveInterval(3600);
		
		// action
		ActionFactory af = ActionFactory.getInstance();
		Action action = af.getAction(command);
		if (action != null) {
			action.execute(request, response);
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// 파라미터 가져오기 전에 UTF-8 설정
		request.setCharacterEncoding("UTF-8");

		// 로그인 세션
		HttpSession session = request.getSession(true);
		session.setMaxInactiveInterval(3600);

		// command param
		String command = request.getParameter("command");
		
		// action
		ActionFactory af = ActionFactory.getInstance();
		Action action = af.getAction(command);
		if (action != null) {
			action.execute(request, response);
		}
		
	}

} // end class
