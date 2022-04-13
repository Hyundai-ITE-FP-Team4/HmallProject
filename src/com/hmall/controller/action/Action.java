package com.hmall.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*************************************************************
파일명: Action.java
기능: Action 인터페이스
작성자: 박주영

[코멘트: 모든 XXXAction은 이 인터페이스를 implements함]
*************************************************************/
public interface Action {
	
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException;
	
} // end class