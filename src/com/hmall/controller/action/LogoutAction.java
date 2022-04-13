package com.hmall.controller.action;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/*************************************************************
파일명: LogoutAction.java
기능: 로그아웃을 수행. 로그인한 사용자 정보가 set된 session도 삭제. (로그인 유지 풀림)
작성자: 김승환

[코멘트: 로그인 성공했을 때 사용할 수 있는 기능들은 모두 사용이 안된다.]
*************************************************************/

public class LogoutAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 세션 내용 삭제
		HttpSession session = request.getSession(true); // 세션 있으면 get
		session.invalidate(); // 삭제

        PrintWriter out = response.getWriter();
        out.print("{\"session_check\":\"delete\"}"); // 세션 삭제 했음을 response 전송
	}
	
}
