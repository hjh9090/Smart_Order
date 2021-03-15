package com.soldesk.order.faq;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class FAQDaoImpl implements FAQDao {
	
	@Inject
	private SqlSession sqlSession;
	
	@Override
	public void faq(FAQVo faqVo) throws Exception {
		sqlSession.insert("faqMapper.insert", faqVo);		
	}


}
