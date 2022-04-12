package com.hmall.dto;

import java.sql.Timestamp;

public class LogVO {
	private int user_no;
	private String user_id;
	private Timestamp login_date;
	
	public int getUser_no() {
		return user_no;
	}
	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public Timestamp getLogin_date() {
		return login_date;
	}
	public void setLogin_date(Timestamp login_date) {
		this.login_date = login_date;
	}

}
