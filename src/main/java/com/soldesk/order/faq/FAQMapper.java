package com.soldesk.order.faq;

import java.util.List;

public interface FAQMapper {
	
	public int insertFaq (FAQVo vo);
	
	public List<FAQVo> getAllList (FAQVo vo);

}
