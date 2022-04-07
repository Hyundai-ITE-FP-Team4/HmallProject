package com.hmall.dao;
import java.sql.Connection;

public class QnaDAO {
	private QnaDAO() {  } //�̱��� ó��
	private static  QnaDAO instance = new QnaDAO();
	public static QnaDAO getInstance() {
	return instance;
	}
}
