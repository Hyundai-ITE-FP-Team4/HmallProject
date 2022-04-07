package com.hmall.controller;

import com.hmall.controller.action.Action;
import com.hmall.controller.action.IndexAction;

/*
 * HmallServlet에서 전달받은 command에 따라 Action 반환
 * 
 * */
public class ActionFactory {
	
	private static ActionFactory instance = new ActionFactory();
	private ActionFactory() {	// 싱글톤 처리
		super();
	}
	public static ActionFactory getInstance() {
		return instance;
	}
	
	public Action getAction(String command) {
		Action action = null;
		System.out.println("ActionFactory : " + command);
		
		// 메인 화면
		if(command.equals("index")) {
			action = new IndexAction();
		}
		
		return action;
	}
} // end class
