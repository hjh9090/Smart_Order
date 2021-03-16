package com.soldesk.order.review;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@Service
public class ReviewDAO {

	@Autowired
	private SqlSession ss;

	public void getallreviews(Review rv, HttpServletRequest request) {

		request.setAttribute("reviews", ss.getMapper(ReviewMapper.class).getAllReviews(rv));

	}

	public void regReview(Review rv, HttpServletRequest request, HttpSession session) {

		try {

			String saveDirectory = request.getSession().getServletContext().getRealPath("resources/reviewimg");
			System.out.println(saveDirectory);

			MultipartRequest mr = new MultipartRequest(request, saveDirectory, 31457280, "utf-8",
					new DefaultFileRenamePolicy());

//		request.setCharacterEncoding("utf-8");

			// request.getParameter("title"); 에서
			String r_num = mr.getParameter("r_num");
			
			//String r_date = mr.getParameter("r_date");
			String r_content = mr.getParameter("r_content");

			String r_picture = mr.getFilesystemName("r_picture");

			//SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd hh:mm:ss");

			// ? 채우기 db에 만들었었으니까
			rv.setR_content(r_content);
			System.out.println(r_content);
			rv.setR_id((String)request.getSession().getAttribute("naverNAME"));
			System.out.println((String)request.getSession().getAttribute("naverNAME"));
			rv.setR_picture(r_picture);
			System.out.println(r_picture);

			request.setAttribute("reviews", ss.getMapper(ReviewMapper.class).getAllReviews(rv));
			
			
			if (ss.getMapper(ReviewMapper.class).regReview(rv) == 1) {
				System.out.println("성공");
				request.setAttribute("r", "등록 성공!");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public void delReview(Review rv, HttpServletRequest request, HttpSession session) {
	
		try {

			int r_num = Integer.parseInt(request.getParameter("r_num"));
			rv.setR_num(r_num);

		
			if (ss.getMapper(ReviewMapper.class).deleteReviewByNumber(rv) == 1) {
				request.setAttribute("r", "삭제 성공!");
			}

		} catch (Exception e) {
			e.printStackTrace();

		}
		
	}

	public void searchReview(Review rv, HttpServletRequest request, HttpSession session) {
		
		try {
			
			String r_content = request.getParameter("r_content");
				rv.setR_content(r_content);
			
			request.setAttribute("reviews", ss.getMapper(ReviewMapper.class).searchReviewByName(rv));
				
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		
		
		
	}

	public void updateReview(UpdateReview ur,Review rv, HttpServletRequest request, HttpSession session) {

		try {
			
			String u_content = request.getParameter("r_content");
			int r_num = Integer.parseInt(request.getParameter("r_num"));
			
			ur.setR_num(r_num);
			ur.setU_content(u_content);
			
			request.setAttribute("reviews", ss.getMapper(ReviewMapper.class).updateReview(ur));

			if (ss.getMapper(ReviewMapper.class).updateReview(ur)==1) {
				request.setAttribute("r", "수정 성공!");
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
