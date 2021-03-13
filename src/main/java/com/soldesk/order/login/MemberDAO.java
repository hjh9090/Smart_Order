package com.soldesk.order.login;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberDAO {

	
	@Autowired
	private SqlSession sqlsession;
	
	
	public int getMember (String id) {
		MapperMember mapper = sqlsession.getMapper(MapperMember.class);
		int result = 0;
		
		try {
			result = mapper.getMember(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	} // spring boot type
	
	public int insertMember (MemberVO member) {
		int result = 0;
		MapperMember mapper = sqlsession.getMapper(MapperMember.class);
		try {
			result = mapper.insertMember(member);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	} // spring boot type 
	
}
