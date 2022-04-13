package com.hmall.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*************************************************************
파일명: JoinFormAction.java
기능: 회원가입 폼 화면으로 이동한다.
작성자: 김승환

[코멘트: x]
*************************************************************/

public class JoinFormAction implements Action{

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// 이동할 url
		String url = "user/join_form.jsp";
		
		// dispatcher
		RequestDispatcher dispatcher = req.getRequestDispatcher(url);
		dispatcher.forward(req, res);
	}
}
