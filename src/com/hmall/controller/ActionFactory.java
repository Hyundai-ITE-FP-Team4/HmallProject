package com.hmall.controller;

import com.hmall.controller.action.Action;
import com.hmall.controller.action.CategoryAction;
import com.hmall.controller.action.CategoryTopAction;
import com.hmall.controller.action.IndexAction;
import com.hmall.controller.action.JoinAction;
import com.hmall.controller.action.JoinFormAction;
import com.hmall.controller.action.JoinMenuAction;
import com.hmall.controller.action.MyPageAction;
import com.hmall.controller.action.ProductDetailAction;
import com.hmall.controller.action.QnaBoradAction;

/*
 * HmallServlet���� ���޹��� command�� ���� Action ��ȯ
 * 
 * */
public class ActionFactory {

	private static ActionFactory instance = new ActionFactory();

	private ActionFactory() { // �̱��� ó��
		super();
	}

	public static ActionFactory getInstance() {
		return instance;
	}

	public Action getAction(String command) {
		Action action = null;
		System.out.println("ActionFactory : " + command);

		// Ȩ������ �̵�
		if (command.equals("index")) {
			action = new IndexAction();
		}
		// ���������� �̵�
		else if (command.equals("mypage")) {
			action = new MyPageAction();
		}
		// ���̵�� �� 1:1��� �̵�
		else if (command.equals("qnaboard")) {
			action = new QnaBoradAction();
		}
		// ȸ������ �޴�
		else if (command.equals("join_menu")) {
			action = new JoinMenuAction();
		}
		// ȸ������ ��
		else if (command.equals("join_form")) {
			action = new JoinFormAction();
		} else if (command.equals("join_action")) {
			action = new JoinAction();
		}
		// ī�װ��� �ߺз��� ������
		else if (command.equals("categoryTop")) {
			action = new CategoryTopAction();
		}
		// ī�װ��� �Һз��� ������
		else if (command.equals("category")) {
			action = new CategoryAction();
		}
		// ��ǰ ��������
		else if (command.equals("product_detail")) {
			action = new ProductDetailAction();
		}
		return action;
	}
} // end class
