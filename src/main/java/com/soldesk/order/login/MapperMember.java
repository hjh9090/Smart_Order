package com.soldesk.order.login;

public interface MapperMember {
	
	public Integer insertMember (MemberVO member);
	
	public Integer getMember (String mem_id);

}
