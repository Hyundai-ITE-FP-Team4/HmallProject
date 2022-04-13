package com.hmall.controller.action;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.hmall.dao.UserDAO;
import com.hmall.dto.UserVO;

/*************************************************************
파일명: IdCheckAtion.java
기능: 아이디 중복체크 요청을 받고, 응답을 해주는 기능
작성자: 김승환

[코멘트: checkId(user_id) : 중복체크 함수]
*************************************************************/

public class IdCheckAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		UserDAO dao = UserDAO.getInstance();
		
		// request로 보내진 user_id (아이디)를 갖고와서 중복인지 확인한다.
		String user_id = request.getParameter("user_id"); 
		UserVO user = new UserVO();
        user.setCnt(dao.checkId(user_id)); 
        
        // gson 라이브러리. java object -> json object 로 변환
        Gson gson = new Gson();
        String str = gson.toJson(user);
        
        // json object를 response 보냄
        PrintWriter out = response.getWriter();
        out.print(str);
		
	}
	
}