package com.hmall.controller.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;
import java.time.LocalDateTime;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.hmall.dao.LogDAO;
import com.hmall.dto.LogVO;
import com.hmall.dao.UserDAO;
import com.hmall.dto.UserVO;

/*************************************************************
파일명: LoginAction.java
기능: 로그인 수행 -> session set, 로그인 로그 테이블에 저장
작성자: 김승환

[코멘트: session은 로그인 유지하기 위해서 활용. 로그인 유지 되어있을 때만 사용할 수 있는 기능들이 있다.]
*************************************************************/

public class LoginAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		UserDAO dao = UserDAO.getInstance();
		PrintWriter out = response.getWriter();

		// 요청하여 받은 parameters 들을 가져옴. (아이디, 비밀번호)
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");

		// 아이디, 비밀번호와 일치하는 정보가 있으면 객체 반환
		UserVO userVO = dao.checkIdPw(user_id, user_pw);

		// 반환된 객체가 null이 아니면 (즉 아이디, 비밀번호가 존재하면)
		if (userVO != null) {
			System.out.println("로그인 되었습니다.");
			
			// 로그인에 성공한 객체를 session에 set, session 유지 시간 3600초
			HttpSession session = request.getSession(true);
			session.setMaxInactiveInterval(3600);
			session.setAttribute("user_vo", userVO);
			
			// gson 라이브러리. java object -> json object 로 변환
			Gson gson = new Gson();
			String str = gson.toJson(userVO);
			out.print(str); // response
			
			// 로그인 로그 테이블에 insert
			insert_log(userVO, user_id);
		} else { // 반환된 객체가 null 이면 (즉 아이디, 비밀번호 매핑이 실패하면)
			System.out.println("로그인 실패하였습니다.");
			out.print("{\"login_check\":\"error\"}");
		}

	}
	
	// 로그인 로그 테이블에 insert를 수행하는 함수
	private static void insert_log(UserVO userVO, String user_id) {
		LogDAO log_dao = LogDAO.getInstance();
		LogVO logVO = new LogVO();

		// 현재 날짜/시간
		LocalDateTime localDateTime = LocalDateTime.now();
		Timestamp timestamp = Timestamp.valueOf(localDateTime); // LocalDateTime -> Timestamp로 변경
		
		// 로그 객체에 아이디, 로그인 시간 set
		logVO.setUser_id(user_id);
		logVO.setLogin_date(timestamp);
		
		// 로그 테이블에 insert
		log_dao.insertLog(logVO);
	}

}
