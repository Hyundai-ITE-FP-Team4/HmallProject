package com.hmall.controller.action;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.hmall.dao.LogDAO;
import com.hmall.dto.LogVO;

/*************************************************************
파일명: GchartAction.java
기능: google chart에 표현할 정보들을 조회 및 response
작성자: 김승환, 박주영

[코멘트: x]
*************************************************************/

public class GchartAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		// LogDAO 생성 (싱글톤)
		LogDAO log_dao = LogDAO.getInstance();
		
		// 월별 로그인 횟수가 담긴 객체 리스트 (김승환)
		List<LogVO> monthLogList = log_dao.listMonthLog();
		
		// 시간별 로그인 횟수가 담긴 객체 리스트 (박주영)
		List<LogVO> hourLogList = log_dao.listHourLog();
		
		// 모든 데이터가 담긴 리스트 생성
		List<LogVO> list = new ArrayList<LogVO>();
		for(LogVO data : monthLogList) {
			list.add(data);
		}
		for(LogVO data : hourLogList) {
			list.add(data);
		}
		
		// gson 라이브러리. java object(List) -> json object 로 변환
		Gson gson = new Gson();
        PrintWriter out = response.getWriter();
        String str = gson.toJson(list);
		out.print(str); //response
		
		System.out.println(str);
	}

}
