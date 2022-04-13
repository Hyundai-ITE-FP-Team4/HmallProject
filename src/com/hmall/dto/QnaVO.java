package com.hmall.dto;
import java.sql.Timestamp;

/*************************************************************
파일명: QnaVO.java
기능: QNA 테이블에 대한 데이터 객체
작성자: 황명하
*************************************************************/


public class QnaVO {
	private int boardNo;
	private int productCode;
	private String userId;
	private Timestamp boardDate;
	private String category1;
	private String category2;
	private String question;
	private String image;
	private String answer;
	private String contactChannel;
	private String contactAddress;
	
	public String getContactChannel() {
		return contactChannel;
	}
	public void setContactChannel(String contactChannel) {
		this.contactChannel = contactChannel;
	}
	public String getContactAddress() {
		return contactAddress;
	}
	public void setContactAddress(String contactAddress) {
		this.contactAddress = contactAddress;
	}
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	
	
	public int getProductCode() {
		return productCode;
	}
	public void setProductCode(int productCode) {
		this.productCode = productCode;
	}
	
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	
	public Timestamp getBoardDate() {
		return boardDate;
	}
	public void setBoardDate(Timestamp boardDate) {
		this.boardDate = boardDate;
	}
	
	
	public String getCategory1() {
		return category1;
	}
	public void setCategory1(String category1) {
		this.category1 = category1;
	}
	
	
	public String getCategory2() {
		return category2;
	}
	public void setCategory2(String category2) {
		this.category2 = category2;
	}
	
	
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	
	
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	
	
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	
}
