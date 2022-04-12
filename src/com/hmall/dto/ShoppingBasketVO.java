package com.hmall.dto;

import java.sql.Timestamp;

public class ShoppingBasketVO {
	
	private int sbNo;
	private String userId;
	private int productCode;
	private int amount;
	private Timestamp sbDate;
	
	
	public int getSbNo() {
		return sbNo;
	}
	public void setSbNo(int sbNo) {
		this.sbNo = sbNo;
	}
	
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
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
	
	
	public Timestamp getSbDate() {
		return sbDate;
	}
	public void setSbDate(Timestamp sbDate) {
		this.sbDate = sbDate;
	}
	
	
	
	
	
}
