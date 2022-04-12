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


public class JoinAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		UserDAO dao = UserDAO.getInstance();
		
		//브라우저 받아오는 데이터 한국어 처리
		request.setCharacterEncoding("utf-8");
		//HTML 한국어 처리
	    response.setContentType("text/html;charset=utf-8");
	    
	    response.setContentType("application/json");
	    
	
	    String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		String user_name = request.getParameter("user_name");
		// String email = request.getParameter("email"); //삭제 (아이디, 이메일 통합)
		String phone_number = request.getParameter("phone_number");
		int birth = Integer.parseInt(request.getParameter("birth"));
		String address = request.getParameter("address");
		int user_point = Integer.parseInt(request.getParameter("user_point"));
		String grade = request.getParameter("grade");
		

		UserVO userVO=new UserVO();
		userVO.setUser_id(user_id);
		userVO.setUser_pw(user_pw);
		userVO.setUser_name(user_name);
		userVO.setPhone_number(phone_number);
		userVO.setBirth(birth);
		userVO.setAddress(address);
		userVO.setUser_point(user_point);
		userVO.setGrade(grade);
			
		//디비 입력
		dao.insertUser_proc(userVO);
		
		Gson gson = new Gson();
        String str = gson.toJson(userVO);
        PrintWriter out = response.getWriter();
        
        out.print(str);
        System.out.println(str);
        
		//조회
	    List list = dao.listMember();
		for (int i = 0; i<list.size(); i++) {
			userVO = (UserVO)list.get(i);
			user_id = userVO.getUser_id();
			
			System.out.println(user_id);
		}
	}

}