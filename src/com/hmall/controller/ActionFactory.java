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
import com.hmall.controller.action.QnaPopUpAction;
import com.hmall.controller.action.ViewQnaAction;

/*************************************************************
 * 파일명: ActionFactory.java 기능: 전달받은 명령(command)에 맞는 처리 클래스 객체(XXXAction)를 반환
 * 작성자: 김승환, 박주영, 황명하
 * 
 * [코멘트: Database Connection Pool 사용]
 *************************************************************/
public class ActionFactory {

	// 싱글톤 패턴 구현
	private static ActionFactory instance = new ActionFactory();
	private ActionFactory() {
		super();
	}
	public static ActionFactory getInstance() {
		return instance;
	}

	// if문으로 command 구분
	public Action getAction(String command) {

		Action action = null;
		System.out.println("ActionFactory : " + command);

		// 메인페이지 이동 (박주영)
		if (command.equals("index")) {
			action = new IndexAction();
		}
		
		
		/*
		 *  로그인, 회원가입 
		 */
		// 회원가입 폼 (김승환)
		if (command.equals("join_form")) {
			action = new JoinFormAction();
		}
		// 회원가입 수행 (김승환)
		else if (command.equals("join_action")) {
			action = new JoinAction();
		}
		// 로그인 폼 (김승환)
		else if (command.equals("login_action")) {
			action = new LoginAction();
		}
		// 아아디 체크 (김승환)
		else if (command.equals("id_check")) {
			action = new IdCheckAction();
		}
		// 로그 아웃 (김승환)
		else if (command.equals("logout")) {
			action = new LogoutAction();
		}
		
		
		
		/*
		 *  마이페이지(게시판) 
		 */
		// 마이페이지 이동 (황명하)
		if (command.equals("mypage")) {
			action = new MyPageAction();
		}
		// 사이드바 내 1:1 상담 이동 (황명하)
		else if (command.equals("qnaboard")) {
			action = new QnaBoradAction();
		}
		// 1:1상담 등록 페이지 (황명하)
		else if (command.equals("qna_popup")) {
			action = new QnaPopUpAction();
		}
		// 1:1 상담 등록 (황명하)
		else if (command.equals("enroll_question")) {
			action = new EnrollQuestionAction();
		}
		// QnA 게시글 뷰 페이지 (황명하)
		else if (command.equals("view_qna")) {
			action = new ViewQnaAction();
		}
		// QnA 게시글 샥제 (황명하)
		else if (command.equals("delete_qna")) {
			action = new DeleteQnaAction();
		}
		
		/*
		 *  카테고리, 상품, 장바구니 
		 */
		// 카테고리 중분류별 페이지 (박주영)
		if (command.equals("categoryTop")) {
			action = new CategoryTopAction();
		}
		// 카테고리 소분류별 페이지 (박주영)
		else if (command.equals("category")) {
			action = new CategoryAction();
		}
		// 상품 상세 페이지 (박주영)
		else if (command.equals("product_detail")) {
			action = new ProductDetailAction();
		}
		// 장바구니 페이지 (박주영)
		else if (command.equals("basket")) {
			action = new BasketAction();
		}
		// 장바구니 추가 (박주영)
		else if (command.equals("basket_insert")) {
			action = new BasketInsertAction();
		}
		// 장바구니 삭제 (박주영)
		else if (command.equals("basket_delete")) {
			action = new BasketDeleteAction();
		}
		// 장바구니 수정 (박주영)
		else if (command.equals("basket_update")) {
			action = new BasketUpdateAction();
		}
		
		/*
		 *  구글차트
		 */
		// 구글 차트 (김승환)
		if (command.equals("google_chart")) {
			action = new GchartAction();
		}

		return action;
	}
	
} // end class
