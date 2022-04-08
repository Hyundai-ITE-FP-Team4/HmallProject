package com.hmall.controller;

import com.hmall.controller.action.Action;
import com.hmall.controller.action.IndexAction;
import com.hmall.controller.action.JoinAction;
import com.hmall.controller.action.JoinFormAction;
import com.hmall.controller.action.JoinMenuAction;
import com.hmall.controller.action.MyPageAction;
import com.hmall.controller.action.QnaBoradAction;

/*
 * HmallServletï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Þ¹ï¿½ï¿½ï¿½ commandï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ Action ï¿½ï¿½È¯
 * 
 * */
public class ActionFactory {
	
	private static ActionFactory instance = new ActionFactory();
	private ActionFactory() {	// ï¿½Ì±ï¿½ï¿½ï¿½ Ã³ï¿½ï¿½
		super();
	}
	public static ActionFactory getInstance() {
		return instance;
	}
	
	public Action getAction(String command) {
		Action action = null;
		System.out.println("ActionFactory : " + command);
		
		//È¨ÆäÀÌÁö ÀÌµ¿
		if(command.equals("index")) {
			action = new IndexAction();
		}
		//¸¶ÀÌÆäÀÌÁö ÀÌµ¿
		else if (command.equals("mypage")) {
			action = new MyPageAction();
		}
		//»çÀÌµå¹Ù ³» 1:1»ó´ã ÀÌµ¿
		else if (command.equals("qnaboard")) {
			action = new QnaBoradAction();
		}
		//È¸¿ø°¡ÀÔ ¸Þ´º
		else if (command.equals("join_menu")) {
			action = new JoinMenuAction();
		}
		//È¸¿ø°¡ÀÔ Æû
		else if (command.equals("join_form")) {
			action = new JoinFormAction();
		}
		else if (command.equals("join_action")) {
			action = new JoinAction();
		}
		return action;
	}
} // end class
