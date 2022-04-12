package com.hmall.dto;

import java.sql.Timestamp;

public class OrderInfoVO {
	private int orderNo;
	private String userId;
	private Timestamp orderDate;
	private int productCode;
	private int amount;
	private String state;
	public int getOrderNo() {
		return orderNo;
	}
	
	
	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}
	public String getUserId() {
		return userId;
	}
	
	
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public Timestamp getOrderDate() {
		return orderDate;
	}
	
	
	public void setOrderDate(Timestamp orderDate) {
		this.orderDate = orderDate;
	}
	
	
	public int getProductCode() {
		return productCode;
	}
	public void setProductCode(int productCode) {
		this.productCode = productCode;
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





