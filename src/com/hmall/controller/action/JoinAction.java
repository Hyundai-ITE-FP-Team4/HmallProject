package com.hmall.controller.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hmall.dao.UserDAO;
import com.hmall.dto.UserVO;


public class JoinAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		UserDAO dao = UserDAO.getInstance();
		
		//������ �޾ƿ��� ������ �ѱ��� ó��
		request.setCharacterEncoding("utf-8");
		//HTML �ѱ��� ó��
	    response.setContentType("text/html;charset=utf-8");
	      
	      
	    PrintWriter out=response.getWriter();
	    //<input  type="hidden" name="command"
	    
	
	    String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		String user_name = request.getParameter("user_name");
		String email = request.getParameter("email");
		String phone_number = request.getParameter("phone_number");
		int birth = Integer.parseInt(request.getParameter("birth"));
		String address = request.getParameter("address");
		int user_point = Integer.parseInt(request.getParameter("user_point"));
		String grade = request.getParameter("grade");
		
		out.println(user_id);
		out.println(user_pw);
		out.println(user_name);
		out.println(email);
		out.println(phone_number);
		out.println(birth);
		out.println(address);
		out.println(user_point);
		out.println(grade);
		
		
			 
		UserVO vo=new UserVO();
		vo.setUser_id(user_id);
		vo.setUser_pw(user_pw);
		vo.setUser_name(user_name);
		vo.setEmail(email);
		vo.setPhone_number(phone_number);
		vo.setBirth(birth);
		vo.setAddress(address);
		vo.setUser_point(user_point);
		vo.setGrade(grade);
			
		//��� �Է�
		dao.insertUser(vo);
		
		//��ȸ
	    List list = dao.listMember();
		for (int i = 0; i<list.size(); i++) {
			UserVO userVO = (UserVO)list.get(i);
			user_id = userVO.getUser_id();
			
			System.out.println(user_id);
		}
	}

}
