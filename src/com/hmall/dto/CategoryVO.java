package com.hmall.dto;

/*************************************************************
파일명: CategoryVO.java
기능: 카테고리 객체 getter, setter
작성자: 박주영

[코멘트: x]
*************************************************************/
public class CategoryVO {
	
	private String categoryCode;
	private String parentCode;
	private String categoryName;
	
	public String getCategoryCode() {
		return categoryCode;
	}
	public void setCategoryCode(String categoryCode) {
		this.categoryCode = categoryCode;
	}
	public String getParentCode() {
		return parentCode;
	}
	public void setParentCode(String parentCode) {
		this.parentCode = parentCode;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	
	
		
} // end class
