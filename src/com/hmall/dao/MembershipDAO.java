package com.hmall.dao;

public class MembershipDAO {
	private MembershipDAO() {}
	
	private static MembershipDAO instance = new MembershipDAO();

	public static MembershipDAO getInstance() {
		return instance;
	}
}
