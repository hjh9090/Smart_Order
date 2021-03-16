package com.soldesk.order.review;

import java.util.List;

public interface ReviewMapper {

	public List<Review> getAllReviews(Review rv);

	public int regReview(Review rv);

	public int deleteReviewByNumber(Review rv);

	public List<Review> searchReviewByName(Review rv);

	public int updateReview(UpdateReview ur);
	
	
	
	
	
}
