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
		
		//브라우저 받아오는 데이터 한국어 처리
		request.setCharacterEncoding("utf-8");
		//HTML 한국어 처리
	    response.setContentType("text/html;charset=utf-8");
	      
	      
	    PrintWriter out=response.getWriter();
	    //<input  type="hidden" name="command"
	    String command=request.getParameter("command");
	    //
	    if(command!= null && command.equals("addMember")){
	    	String user_id = request.getParameter("user_id");
			String user_pw = request.getParameter("user_pw");
			String user_name = request.getParameter("user_name");
			String email = request.getParameter("email");
			String phone_number = request.getParameter("phone_number");
			String birth = request.getParameter("birth");
			String address = request.getParameter("address");
			String user_point = request.getParameter("user_point");
			String grade = request.getParameter("grade");
			 
			UserVO vo=new UserVO();
			vo.setUser_id(user_id);
			vo.setUser_pw(user_pw);
			vo.setUser_name(user_name);
			vo.setEmail(email);
			//vo.setUser_point(user_point.int);
			
			//디비 입력
		    dao.insertUser(vo);
	     }else if(command!= null && command.equals("delMember")) {
	    	 String id = request.getParameter("id");
	    	 //dao.delMember(id);
	     }//end if
	   
		//조회
	    List list = dao.listMember();
		for (int i = 0; i<list.size(); i++) {
			UserVO userVO = (UserVO)list.get(i);
			String user_id = userVO.getUser_id();
			
			System.out.println(user_id);
		}
	}

}
