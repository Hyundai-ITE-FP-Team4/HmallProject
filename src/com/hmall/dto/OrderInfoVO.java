package com.hmall.dto;

import java.sql.Timestamp;

public class OrderInfoVO {
	private int order_no;
	private String user_id;
	private Timestamp order_date;
	private int product_code;
	private int amount;
	private String state;
	
	
	public int getOrder_no() {
		return order_no;
	}
	public void setOrder_no(int order_no) {
		this.order_no = order_no;
	}
	
	
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	
	
	public Timestamp getOrder_date() {
		return order_date;
	}
	public void setOrder_date(Timestamp order_date) {
		this.order_date = order_date;
	}
	
	
	public int getProduct_code() {
		return product_code;
	}
	public void setProduct_code(int product_code) {
		this.product_code = product_code;
	}
	
	
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	
	
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	
}





