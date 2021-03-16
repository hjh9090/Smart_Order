package com.soldesk.order.review;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ReviewController {

	@Autowired
	private ReviewDAO d;
	
	
	@RequestMapping(value = "review", method = RequestMethod.GET)
	public String review(Review rv, HttpServletRequest req) {
		d.getallreviews(rv, req);
		return "review/review";
	}
	
	@RequestMapping(value = "reg.review", method = RequestMethod.POST)
	public String regreview(Review rv, HttpServletRequest request, HttpSession session) {
		d.regReview(rv,request,session);
		d.getallreviews(rv, request);
		return "review/review";
	}
	
	

	
	
	
}
