package com.soldesk.order.review;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReviewDAO {

	@Autowired
	private SqlSession ss;

	public void getallreviews(HttpServletRequest request) {
		
		request.setAttribute("reviews", ss.getMapper(ReviewMapper.class).getAllReviews());
		
	}
	
	
	
	
	
}
