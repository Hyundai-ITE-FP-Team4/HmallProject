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

public class EnrollQuestionAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
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
	    	String cnslCsfCd = request.getParameter("cnslCsfCd");
			String category1 = "";
			String category2 = "";
			String contact_channel = "";
			String contact_address = "";
			
			//상담분야, 삼당사유
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
			
			//문의 내용 
			String question = request.getParameter("cntn");
			System.out.println("문의 내용: " + question);
			
			//답변채널, 답변 연락처 변수  설정
			String answReqnGbcd = "";
			String mobileNum = null;
			String email = null;
			//답변 방법  1: SMS 3: 이메일 2: 전화상담 (황명하)
			switch(request.getParameter("answReqnGbcd")) {
			case "1":
				answReqnGbcd = "SMS";
				//휴대폰 번호 (황명하)
				mobileNum = request.getParameter("mobileDdd");
				contact_channel = answReqnGbcd;
				contact_address = mobileNum;
				break;
			case "2":
				answReqnGbcd = "전화상담";
				//휴대폰 번호 (황명하)
				mobileNum = request.getParameter("mobileDdd");
				contact_channel = answReqnGbcd;
				contact_address = mobileNum;
				break;
			case "3":
				answReqnGbcd = "이메일";
				//이메일 (황명하)
				email = request.getParameter("email");
				contact_channel = answReqnGbcd;
				contact_address = email;
			}
			
			System.out.println("답변방법 : " + answReqnGbcd);
			System.out.println("휴대폰 번호 : " + mobileNum);
			System.out.println("이메일: " + email);
			
			String msg = "게시판 작성 프로세싱,,,";
			try {
				QnaVO qnaVO = new QnaVO();
				qnaVO.setCategory1(category1);
				qnaVO.setCategory2(category2);
				qnaVO.setQuestion(question);
				qnaVO.setContactChannel(contact_channel);
				qnaVO.setContactAddress(contact_address);
				
				// 글 등록 로직 수행 시작
				QnaDAO qnaDAO = QnaDAO.getInstance();
				qnaDAO.enrollQna(qnaVO, user_vo.getUser_id());
				msg = user_vo.getUser_id() + " 님의 게시판 작성 완료!";
				
				//글 등록 표시창 표시 후 창 닫기
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter out = response.getWriter();
				out.println("<script>alert('게시글이 등록되었습니다.'); opener.location.reload(); self.close(); </script>");
				
			}catch(Exception e) {
				msg = "게시판 작성 실패";
				e.printStackTrace();
			} finally {
				System.out.println(msg);
			}
	    }

	}
	
}
