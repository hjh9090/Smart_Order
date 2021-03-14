//package com.soldesk.order.faq;
//
//import java.util.List;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.ResponseBody;
//
//@Controller
//@RequestMapping(value = "/FAQ")
//public class FAQController1 {
//
//	@Autowired
//	private FAQService FAQService;
//
//	@RequestMapping(value = "/FAQ")
//	public String getBoardList(HttpServletRequest request, HttpServletResponse response) throws Exception {
//
//		return "faq/FAQ";
//	}
//
//	@RequestMapping(value = "/getFAQ")
//	@ResponseBody
//	public List<FAQVo> getBoardList(HttpServletRequest request, HttpServletResponse response, FAQForm FAQForm)
//			throws Exception {
//
//		List<FAQVo> FAQ = FAQService.getFAQ(FAQForm);
//
//		return FAQ;
//	}
//
//}
