package com.hmall.controller.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.hmall.dao.LogDAO;
import com.hmall.dto.LogVO;

public class GchartAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//브라우저 받아오는 데이터 한국어 처리
		request.setCharacterEncoding("utf-8");
		
		//HTML 한국어 처리
	    response.setContentType("text/html;charset=utf-8");
		
		response.setContentType("application/json");
		
		LogDAO log_dao = LogDAO.getInstance();
		
		List<LogVO> monthLogList = log_dao.listLog();
		List<LogVO> hourLogList = log_dao.listHourLog();
		
		List<LogVO> list = new ArrayList<LogVO>();
		
		for(LogVO data : monthLogList) {
			list.add(data);
		}
		for(LogVO data : hourLogList) {
			list.add(data);
		}
		
		Gson gson = new Gson();
        
        PrintWriter out = response.getWriter();
		
        String str = gson.toJson(list);
		out.print(str);
		
		System.out.println(str);
	}

}
