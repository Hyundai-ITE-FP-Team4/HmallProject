package com.hmall.dao;

public class CategoryDAO {
	private CategoryDAO() { } // �̱��� ���� ó��
	private static CategoryDAO instance = new CategoryDAO();
	public static CategoryDAO getInstance() {
		return instance;
	}
	
}
