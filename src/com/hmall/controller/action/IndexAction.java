package com.hmall.controller.action;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.DBManager;

/*************************************************************
파일명: IndexAction.java
기능: 메인 페이지
작성자: 박주영

[코멘트: 기본적으로 실행되는 페이지, index.html에서 Servlet 호출로 실행됨]
*************************************************************/
public class IndexAction implements Action {
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  
		// index.jsp로 이동
		String url = "/index.jsp";

		// Connection 객체 선언
		Connection con = null;

		try {
			// DBManager의 함수를 통해 DB 연결
			con = DBManager.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}
	
} // end class