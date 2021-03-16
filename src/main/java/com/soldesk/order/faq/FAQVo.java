package com.soldesk.order.faq;

import org.springframework.stereotype.Service;

@Service
public class FAQVo {

	private String faq_f; // title
	private String faq_q; // content
	public FAQVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public FAQVo(String faq_f, String faq_q) {
		super();
		this.faq_f = faq_f;
		this.faq_q = faq_q;
	}
	public String getFaq_f() {
		return faq_f;
	}
	public void setFaq_f(String faq_f) {
		this.faq_f = faq_f;
	}
	public String getFaq_q() {
		return faq_q;
	}
	public void setFaq_q(String faq_q) {
		this.faq_q = faq_q;
	}

	

}
