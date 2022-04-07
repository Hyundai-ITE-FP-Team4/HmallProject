package com.hmall.dao;
import java.sql.Connection;

public class ShoppingBasketDAO {
	private ShoppingBasketDAO() {};
	private static ShoppingBasketDAO instance = new ShoppingBasketDAO();
	public static ShoppingBasketDAO getInstance() {
	    return instance;
	  }
}
