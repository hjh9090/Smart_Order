package com.soldesk.order.login;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

@Service
@Repository
public class MemberDAO {

	
	@Autowired
	private SqlSession sqlsession;
	
	
	public int getMember (String mem_id) {
		MapperMember mapper = sqlsession.getMapper(MapperMember.class);
		int result = 0;
		try {
			result = mapper.getMember(mem_id);
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
	
	
	public int getGoogle (String goo_id) {
		int result = 0;
		MapperGoogle mapper = sqlsession.getMapper(MapperGoogle.class);
		try {
			result = mapper.getGoogle(goo_id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public int insertGoogle (GoogleVO google) {
		int result = 0;
		MapperGoogle mapper = sqlsession.getMapper(MapperGoogle.class);
		
		try {
			result = mapper.insertGoogle(google);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	
}
