package com.hmall.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class JoinFormAction implements Action{

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "user/join_form.jsp";
		
		RequestDispatcher dispatcher = req.getRequestDispatcher(url);
		dispatcher.forward(req, res);
	}
}
