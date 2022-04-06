package com.hmall.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
 * Action 인터페이스
 * 모든 Action은 이 인터페이스를 구현
 * 
 * */
public interface Action {
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException;
} // end class
