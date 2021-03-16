package com.soldesk.order.faq;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class FAQController {

	private static final Logger logger = LoggerFactory.getLogger(FAQController.class);
	
	@Autowired
	private FAQDAO dao;
	
	@RequestMapping(value = "faq", method = RequestMethod.GET)
	public String writeView(HttpServletRequest request, FAQVo vo){
		logger.info("faq");
		dao.getAllList(request, vo);
		return "faq";
	}
	
	
	@RequestMapping(value = "regfaq", method = RequestMethod.POST)
	public String write(HttpServletRequest request, FAQVo vo){
		logger.info("작성");
		dao.insertFaq(request, vo);
		dao.getAllList(request, vo);
		return "redirect:faq";
	}
	
	

}
