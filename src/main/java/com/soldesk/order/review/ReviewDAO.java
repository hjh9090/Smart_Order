package com.soldesk.order.review;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;

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
			String r_id = (String)session.getAttribute("name");
			String r_date = mr.getParameter("r_date");
			String r_content = mr.getParameter("r_content");

			String r_picture = mr.getFilesystemName("r_picture");

			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd hh:mm:ss");

			// ? 채우기 db에 만들었었으니까
			rv.setR_content(r_content);
			rv.setR_id(r_id);
			rv.setR_picture(r_picture);

			request.setAttribute("reviews", ss.getMapper(ReviewMapper.class).getAllReviews(rv));
			
			
			if (ss.getMapper(ReviewMapper.class).regReview(rv) == 1) {
				System.out.println("성공");
				request.setAttribute("r", "등록성공ㅎㅎ");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
