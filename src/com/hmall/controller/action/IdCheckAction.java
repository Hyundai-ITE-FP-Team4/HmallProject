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

public class IdCheckAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		UserDAO dao = UserDAO.getInstance();

		// 브라우저 받아오는 데이터 한국어 처리
		request.setCharacterEncoding("utf-8");
		// HTML 한국어 처리
		response.setContentType("text/html;charset=utf-8");
		
		response.setContentType("application/json");
		String user_id = request.getParameter("user_id");
		
		UserVO user = new UserVO();
        user.setCnt(dao.getId(user_id));

        Gson gson = new Gson();
        String str = gson.toJson(user);
        PrintWriter out = response.getWriter();
        out.print(str);
		
		
//		System.out.println(dao.getId(user_id));
//		out.print("{\"text\":\"succesText\"}");

		
	}
	
}
