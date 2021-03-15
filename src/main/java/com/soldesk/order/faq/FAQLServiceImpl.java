package com.soldesk.order.faq;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

@Service
public class FAQLServiceImpl implements FAQLService {

	@Inject
	private FAQDao dao;

	@Override
	public void faq(FAQVo faqVo) throws Exception {
		dao.faq(faqVo);
		
	}

}
