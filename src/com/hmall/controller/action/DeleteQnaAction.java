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
		
		
		//String url = "mypage/qna/qnaDetail.jsp";
		
		HttpSession session = request.getSession();
	    UserVO user_vo = (UserVO) session.getAttribute("user_vo");
	    //System.out.println(user_vo.getUser_id());
	    if (user_vo == null) {
	    	response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
	    	out.println("<script>alert('로그인 후 이용해주세요.'); location.href = 'HmallServlet?command=index'; </script>");
	        //url = "user/login_popup.jsp";
	        
	      } 
	    else {
	    	int board_num =  Integer.parseInt(request.getParameter("board_num"));
	    	// 글 삭제 로직을 수행한다
			QnaDAO qnaDAO = QnaDAO.getInstance();
			qnaDAO.deleteQna(board_num, user_vo.getUser_id());
			
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('삭제되었습니다.'); opener.location.reload(); self.close(); </script>");
	    }
	}
}
