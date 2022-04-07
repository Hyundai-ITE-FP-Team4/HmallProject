package com.hmall.dao;

public class CategoryDAO {
	private CategoryDAO() { } // 싱글턴 패턴 처리
	private static CategoryDAO instance = new CategoryDAO();
	public static CategoryDAO getInstance() {
		return instance;
	}
	
}
