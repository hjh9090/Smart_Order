package com.soldesk.order.faq;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/faq/*")
public class FAQController {

	private static final Logger logger = LoggerFactory.getLogger(FAQController.class);

	@Inject
	FAQLService service;
	
	@RequestMapping(value = "/faq/faq", method = RequestMethod.GET)
	public void writeView() throws Exception{
		logger.info("faq");
		
	}
	
	@RequestMapping(value = "/faq/faq", method = RequestMethod.POST)
	public String write(FAQVo faqVo) throws Exception{
		logger.info("faq");
		
		service.faq(faqVo);
		
		return "faq/faq";
	}

}
