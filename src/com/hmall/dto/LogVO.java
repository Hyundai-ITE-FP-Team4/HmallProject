package com.hmall.dto;
import java.sql.Timestamp;

/*************************************************************
파일명: LogVO.java
기능: 로그 정보 getter, setter
작성자: 김승환

[코멘트: x]
*************************************************************/

public class LogVO {
	private int user_no;
	private String user_id;
	private Timestamp login_date;
	private int monthCnt;
	private int month;
	private int hourCnt;
	private int hour;
	
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
	public int getMonthCnt() {
		return monthCnt;
	}
	public void setMonthCnt(int monthCnt) {
		this.monthCnt = monthCnt;
	}
	public int getMonth() {
		return month;
	}
	public void setMonth(int month) {
		this.month = month;
	}
	public int getHourCnt() {
		return hourCnt;
	}
	public void setHourCnt(int hourCnt) {
		this.hourCnt = hourCnt;
	}
	public int getHour() {
		return hour;
	}
	public void setHour(int hour) {
		this.hour = hour;
	}
}
