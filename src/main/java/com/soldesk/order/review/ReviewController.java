package com.soldesk.order.review;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ReviewController {

	@Autowired
	private ReviewDAO d;
	
	
	@RequestMapping(value = "review", method = RequestMethod.GET)
	public String review(HttpServletRequest req) {
		
		d.getallreviews(req);
		return "review/review";
	}
	
	
	
	
	
}
