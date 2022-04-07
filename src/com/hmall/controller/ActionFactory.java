package com.hmall.controller;

import com.hmall.controller.action.Action;
import com.hmall.controller.action.IndexAction;

/*
 * HmallServlet���� ���޹��� command�� ���� Action ��ȯ
 * 
 * */
public class ActionFactory {
	
	private static ActionFactory instance = new ActionFactory();
	private ActionFactory() {	// �̱��� ó��
		super();
	}
	public static ActionFactory getInstance() {
		return instance;
	}
	
	public Action getAction(String command) {
		Action action = null;
		System.out.println("ActionFactory : " + command);
		
		// ���� ȭ��
		if(command.equals("index")) {
			action = new IndexAction();
		}
		
		return action;
	}
} // end class
