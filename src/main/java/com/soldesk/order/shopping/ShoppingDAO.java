package com.soldesk.order.shopping;

import java.math.BigDecimal;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class ShoppingDAO {
	
	@Autowired
	private SqlSession gs;

	public void shopping(HttpServletRequest req, ShoppingVo sv) {
		
		try {
			String saveDirectory = req.getSession().getServletContext().getRealPath("resources/menuimg");
			System.out.println(saveDirectory);

			MultipartRequest mr = new MultipartRequest(req, saveDirectory, 31457280, "utf-8",
					new DefaultFileRenamePolicy());

			String s_picture = mr.getParameter("s_picture");
			String s_name = mr.getParameter("s_name");
			String s_price = mr.getParameter("s_price");
			String s_quan = mr.getParameter("s_quan");

			sv.setS_picture(s_picture);
			sv.setS_name(s_name);
			sv.setS_price(new BigDecimal(s_price));
			sv.setS_quan(new BigDecimal(s_quan));

			if (gs.getMapper(ShoppingMapper.class).insertShopping(sv) == 1) {
				System.out.println("성공");
				req.setAttribute("r", "등록성공");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	public void getlist(HttpServletRequest req, ShoppingVo sv) {
		req.setAttribute("shopping", gs.getMapper(ShoppingMapper.class).getAllList(sv));

		
	}

}
