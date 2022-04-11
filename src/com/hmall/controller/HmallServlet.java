package com.hmall.controller;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hmall.controller.action.Action;
import com.hmall.dto.UserVO;

/*
 * Sevlet
 * 
 * command�� �´� Action�� �����Ŵ
 * 
 * */
@WebServlet("/HmallServlet")
public class HmallServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// �Ķ���� �������� ���� UTF-8 ����
		request.setCharacterEncoding("UTF-8");
		
		//command �� �Ѿ�Դ��� Ȯ��
		String command = request.getParameter("command");
		System.out.println("HmallServlet : " + command);

		// �α��� ����
		HttpSession session = request.getSession(true);
		session.setMaxInactiveInterval(3600);
		UserVO userVO = new UserVO();
		if (session.getAttribute("user_vo") != null) {
			userVO = (UserVO) session.getAttribute("user_vo");
		}
		
		// action
		ActionFactory af = ActionFactory.getInstance();
		Action action = af.getAction(command);
		if (action != null) {
			action.execute(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// �Ķ���� �������� ���� UTF-8 ����
		request.setCharacterEncoding("UTF-8");

		// �α��� ����
		HttpSession session = request.getSession(true);
		session.setMaxInactiveInterval(3600);

		// �Ķ���� ������ ������ check
		Enumeration e = request.getParameterNames();
		while (e.hasMoreElements()) {
			String name = (String) e.nextElement();
			String[] values = request.getParameterValues(name);
			for (String value : values) {
				System.out.println("name=" + name + ",value=" + value);
			}
		}

		// command �� �Ѿ�Դ��� Ȯ��
		String command = request.getParameter("command");
		System.out.println("HmallServlet : " + command);
		
		// action
		ActionFactory af = ActionFactory.getInstance();
		Action action = af.getAction(command);
		if (action != null) {
			action.execute(request, response);
		}
	}

} // end class
