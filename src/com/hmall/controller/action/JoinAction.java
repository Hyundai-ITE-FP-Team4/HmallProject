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
파일명: JoinAction.java
기능: 회원가입 폼에서 받은 값으로 회원가입을 수행한다.
작성자: 김승환

[코멘트: x]
*************************************************************/

public class JoinAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		UserDAO dao = UserDAO.getInstance();
	    
	    // 요청하여 받은 parameters 들을 가져옴. (회원 정보)
	    String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		String user_name = request.getParameter("user_name");
		String phone_number = request.getParameter("phone_number");
		int birth = Integer.parseInt(request.getParameter("birth"));
		String address = request.getParameter("address");
		
		// 받은 값들을 userVO 객체에 set
		UserVO userVO=new UserVO();
		userVO.setUser_id(user_id);
		userVO.setUser_pw(user_pw);
		userVO.setUser_name(user_name);
		userVO.setPhone_number(phone_number);
		userVO.setBirth(birth);
		userVO.setAddress(address);
			
		//user_info 테이블에 insert
		dao.insertUser_proc(userVO);
		
		// gson 라이브러리. java object -> json object 로 변환
		Gson gson = new Gson();
        String str = gson.toJson(userVO);
        PrintWriter out = response.getWriter();
        	
        // response
        out.print(str);
        System.out.println(str);
	}

}
