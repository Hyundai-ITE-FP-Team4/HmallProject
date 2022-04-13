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
파일명: DeleteQnaAction.java
기능: 작성한 1:1상담  상담글 상세 페이지에서 '삭제'버튼을 누를 시 해당 글을 DB에서 삭제
시켜주는 기능
작성자: 황명하

코멘트: command == delete_question 인경우 해당 Action 파일로 이동
*************************************************************/

public class DeleteQnaAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		// 세션에 저장된 유저 정보 받아오기
		HttpSession session = request.getSession();
	    UserVO user_vo = (UserVO) session.getAttribute("user_vo");

	    //유저 정보가 없으면 접근 못하도록 설정
	    if (user_vo == null) {
	    	response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
	    	out.println("<script>alert('로그인 후 이용해주세요.'); location.href = 'HmallServlet?command=index'; </script>");     
	      } 
	    else {
	    	// 글 삭제 로직 수행 시작
	    	int board_num =  Integer.parseInt(request.getParameter("board_num"));
			QnaDAO qnaDAO = QnaDAO.getInstance();
			qnaDAO.deleteQna(board_num, user_vo.getUser_id());
			
			//글 삭제 표시창 표시 후 창 닫기
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('삭제되었습니다.'); opener.location.reload(); self.close(); </script>");
	    }
	}
}
