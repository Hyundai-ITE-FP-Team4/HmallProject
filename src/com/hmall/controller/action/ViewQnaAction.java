package com.hmall.controller.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hmall.dao.QnaDAO;
import com.hmall.dto.QnaVO;
import com.hmall.dto.UserVO;

/*************************************************************
파일명: ViewQnaAction.java
기능: 1:1상담 게시글의 상제 정보 조회
작성자: 황명하

코멘트: command == view_qna 인경우 해당 Action 파일로 이동
*************************************************************/

public class ViewQnaAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//게시글 상세정보 URL
		String url = "mypage/qna/qnaDetail.jsp";
		
		// 세션에 저장된 유저 정보 받아오기
		HttpSession session = request.getSession();
	    UserVO user_vo = (UserVO) session.getAttribute("user_vo");
	    
	    //유저 정보가 없으면 접근 못하도록 설정
	    if (user_vo == null) {
	    	response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
	    	out.println("<script>alert('로그인 후 이용해주세요.'); self.close()'; </script>");
	      } 
	    
	    else {
	    	int board_num =  Integer.parseInt(request.getParameter("board_num"));
	    	// 해당 글 가져오는 수행 시작
			QnaDAO qnaDAO = QnaDAO.getInstance();
			QnaVO qnaVO = qnaDAO.getQna(board_num);
			request.setAttribute("qnaVO", qnaVO);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
	    }
	}
}
