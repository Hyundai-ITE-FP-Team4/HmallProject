package com.hmall.controller;

import com.hmall.controller.action.Action;
import com.hmall.controller.action.BasketAction;
import com.hmall.controller.action.BasketDeleteAction;
import com.hmall.controller.action.BasketInsertAction;
import com.hmall.controller.action.BasketUpdateAction;
import com.hmall.controller.action.CategoryAction;
import com.hmall.controller.action.CategoryTopAction;
import com.hmall.controller.action.DeleteQnaAction;
import com.hmall.controller.action.EnrollQuestionAction;
import com.hmall.controller.action.GchartAction;
import com.hmall.controller.action.IdCheckAction;
import com.hmall.controller.action.IndexAction;
import com.hmall.controller.action.JoinAction;
import com.hmall.controller.action.JoinFormAction;
import com.hmall.controller.action.LoginAction;
import com.hmall.controller.action.LogoutAction;
import com.hmall.controller.action.MyPageAction;
import com.hmall.controller.action.ProductDetailAction;
import com.hmall.controller.action.QnaBoradAction;
import com.hmall.controller.action.QnaPopUp;
import com.hmall.controller.action.ViewQnaAction;

/*
 * HmallServlet 커맨트 패턴 , command 별 액션 설정
 * 
 * */
public class ActionFactory {

	private static ActionFactory instance = new ActionFactory();

	private ActionFactory() {
		super();
	}

	public static ActionFactory getInstance() {
		return instance;
	}

	public Action getAction(String command) {
		Action action = null;
		System.out.println("ActionFactory : " + command);

		// 홈페이지 이동
		if (command.equals("index")) {
			action = new IndexAction();
		}
		// 마이페이지 이동
		else if (command.equals("mypage")) {
			action = new MyPageAction();
		}
		// 사이드바 내 1:1 상담 이동
		else if (command.equals("qnaboard")) {
			action = new QnaBoradAction();
		}
		// 회원가입 폼
		else if (command.equals("join_form")) {
			action = new JoinFormAction();
		}
		// 회원가입 수행
		else if (command.equals("join_action")) {
			action = new JoinAction();
		}
		// 로그인 폼
		else if (command.equals("login_action")) {
			action = new LoginAction();
		}
		// 아아디 체크
		else if (command.equals("id_check")) {
			action = new IdCheckAction();
		}
		// 로그 아웃
		else if (command.equals("logout")) {
			action = new LogoutAction();
		}
		// 카테고리 중분류별 페이지
		else if (command.equals("categoryTop")) {
			action = new CategoryTopAction();
		}
		// 카테고리 소분류별 페이지
		else if (command.equals("category")) {
			action = new CategoryAction();
		}
		// 상품 상세 페이지
		else if (command.equals("product_detail")) {
			action = new ProductDetailAction();
		}
		// 1:1상담 등록 페이지
		else if (command.equals("qna_popup")) {
			action = new QnaPopUp();
		}
		// 1:1 상담 등록
		else if (command.equals("enroll_question")) {
			action = new EnrollQuestionAction();
		}
		// 장바구니 페이지
		else if (command.equals("basket")) {
			action = new BasketAction();
		}
		// 장바구니 추가
		else if (command.equals("basket_insert")) {
			action = new BasketInsertAction();
		}
		// 장바구니 삭제
		else if (command.equals("basket_delete")) {
			action = new BasketDeleteAction();
		}
		// 장바구니 수정
		else if (command.equals("basket_update")) {
			action = new BasketUpdateAction();
		}
		// 구글 차트
		else if (command.equals("google_chart")) {
			action = new GchartAction();
		}
		// QnA 게시글 뷰 페이지
		else if (command.equals("view_qna")) {
			action = new ViewQnaAction();
		}  
		//Qna 게시글 샥제
		else if (command.equals("delete_qna")) {
			action = new DeleteQnaAction();
		}

		return action;
	}
} // end class
