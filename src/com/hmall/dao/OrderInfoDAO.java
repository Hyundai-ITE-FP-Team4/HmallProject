package com.hmall.dao;
import java.sql.Connection;

public class OrderInfoDAO {
	private OrderInfoDAO() {  } //�̱��� ó��
	private static OrderInfoDAO instance = new OrderInfoDAO();
	public static OrderInfoDAO getInstance() {
	return instance;
	}
}
