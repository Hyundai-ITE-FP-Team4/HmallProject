package com.hmall.controller.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.hmall.dao.UserDAO;
import com.hmall.dto.UserVO;

public class LoginAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		UserDAO dao = UserDAO.getInstance();
		
		//������ �޾ƿ��� ������ �ѱ��� ó��
		request.setCharacterEncoding("utf-8");
		//HTML �ѱ��� ó��
	    response.setContentType("text/html;charset=utf-8");
	    
	    String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		
		//�α��� �Ǿ����� Ȯ��
		UserVO userVO = dao.checkIdPw(user_id, user_pw);
		
		response.setContentType("application/json");

		Gson gson = new Gson();
        String str = gson.toJson(userVO);
        PrintWriter out = response.getWriter();
	
		if(userVO != null) {
			System.out.println("�α��� �Ǿ����ϴ�.");
			HttpSession session =request.getSession(true);
			session.setMaxInactiveInterval(3600);
			session.setAttribute("user_vo", userVO);
			out.print(str);
			System.out.println(str);

		}
		else {
			System.out.println("�α��� �����Ͽ����ϴ�.");
			out.print("{\"login_check\":\"error\"}");
		}
		
	}
	
}
