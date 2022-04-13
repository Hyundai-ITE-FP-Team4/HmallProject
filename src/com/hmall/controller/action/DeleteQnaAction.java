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
