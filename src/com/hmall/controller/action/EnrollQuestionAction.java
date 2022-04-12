package com.hmall.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hmall.dao.QnaDAO;
import com.hmall.dto.QnaVO;
import com.hmall.dto.UserVO;

public class EnrollQuestionAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//String url = "/mypage/mypage.jsp";
		
		HttpSession session = request.getSession();
	    UserVO user_vo = (UserVO) session.getAttribute("user_vo");
	    
	    
		System.out.println("EnrollQuestionAction.java 파일");
		
		//상담 분야 구현 중 (황명하)
		String cnslCsfCd = request.getParameter("cnslCsfCd");
		String category1 = "";
		String category2 = "";
		//상담분야, 삼당사유 설정
		if(cnslCsfCd.contentEquals("071201")) {
			category1 = "시스템오류";
			category2 = "시스템오류/불편사항";
		}
		else if (cnslCsfCd.contentEquals("070102")) {
			category1 = "시스템문의";
			category2 = "이벤트문의(문화공연/일반)";
		}
		System.out.println("상담코드: " + cnslCsfCd);
		System.out.println("상담분야: " + category1);
		System.out.println("상담사유: " + category2);
		
		//문의 내용   (황명하)
		String question = request.getParameter("cntn");
		System.out.println("문의 내용: " + question);
		
		
		String answReqnGbcd = "";
		String mobileNum = null;
		String email = null;
		//답변 방법  1: SMS 3: 이메일 2: 전화상담 (황명하)
		switch(request.getParameter("answReqnGbcd")) {
		case "1":
			answReqnGbcd = "SMS";
			//휴대폰 번호 (황명하)
			mobileNum = request.getParameter("mobileDdd");
			break;
		case "2":
			answReqnGbcd = "전화상담";
			//휴대폰 번호 (황명하)
			mobileNum = request.getParameter("mobileDdd");
			break;
		case "3":
			answReqnGbcd = "이메일";
			//이메일 (황명하)
			email = request.getParameter("email");
			
		}
		
		System.out.println("답변방법 : " + answReqnGbcd);
		System.out.println("휴대폰 번호 : " + mobileNum);
		System.out.println("이메일: " + email);
		
		 
	    /*
	    if (loginUser == null) {
	        url = "HmallServlet?command=login_form";
	      } 
	    else {
	    }
		*/
		String msg = "게시판 작성 프로세싱,,,";
		try {
			QnaVO qnaVO = new QnaVO();
			qnaVO.setCategory1(category1);
			qnaVO.setCategory2(category2);
			qnaVO.setQuestion(question);
			//상품 코드 NULL 허용하게 바꿔야 함. (황명하)
			//qnaVO.setProductCode(1001);
			QnaDAO qnaDAO = QnaDAO.getInstance();
			qnaDAO.enrollQna(qnaVO, user_vo.getUser_id());
			msg = user_vo.getUser_id() + " 님의 게시판 작성 완료!";
		}catch(Exception e) {
			msg = "게시판 작성 실패";
			e.printStackTrace();
		} finally {
			System.out.println(msg);
		}
		
		
		
		
		
		//RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		//dispatcher.forward(request, response);
		
	}
	
}
