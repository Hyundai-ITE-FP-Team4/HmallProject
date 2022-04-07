package com.hmall.dto;

import java.sql.Timestamp;

public class ShoppingBasketVO {
	
	private int sb_no;
	private String user_id;
	private int product_code;
	private int amount;
	private Timestamp sb_date;
	
	
	public int getSb_no() {
		return sb_no;
	}
	public void setSb_no(int sb_no) {
		this.sb_no = sb_no;
	}
	
	
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
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
	
	
	public Timestamp getSb_date() {
		return sb_date;
	}
	public void setSb_date(Timestamp sb_date) {
		this.sb_date = sb_date;
	}
	
	
	
}
