package com.hmall.dto;

import java.util.ArrayList;

/*************************************************************
파일명: ProductImageVO.java
기능: 상품 상세이미지 객체 getter, setter
작성자: 박주영

[코멘트: x]
*************************************************************/
public class ProductImageVO {
	
	private int imgNo;
	private int productCode;
	private ArrayList<String> imgs;
	
	public int getImgNo() {
		return imgNo;
	}
	public void setImgNo(int imgNo) {
		this.imgNo = imgNo;
	}
	public int getProductCode() {
		return productCode;
	}
	public void setProductCode(int productCode) {
		this.productCode = productCode;
	}
	public ArrayList<String> getImgs() {
		return imgs;
	}
	public void setImgs(ArrayList<String> imgs) {
		this.imgs = imgs;
	}
		
	
}
