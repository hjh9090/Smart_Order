package com.soldesk.order.teampj;

import java.math.BigDecimal;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.soldesk.order.menu.MapperMenu;
import com.soldesk.order.menu.Menu_Vo;
import com.soldesk.order.menu.UpdateP;

@Service
public class DAO {

	@Autowired
	private SqlSession ss;

	public void getAllMenus(HttpServletRequest request) {

		request.setAttribute("menus", ss.getMapper(MapperMenu.class).getAllMenus());

	}

	public void regMenu(Menu_Vo mn, HttpServletRequest req) {

		try {
			String saveDirectory = req.getSession().getServletContext().getRealPath("resources/menuimg");
			System.out.println(saveDirectory);

			MultipartRequest mr = new MultipartRequest(req, saveDirectory, 31457280, "utf-8",
					new DefaultFileRenamePolicy());

			String m_picture = mr.getFilesystemName("m_picture");
			String m_name = mr.getParameter("m_name");
			String m_price = mr.getParameter("m_price");
			String m_quan = mr.getParameter("m_quan");

			mn.setM_picture(m_picture);
			mn.setM_name(m_name);
			mn.setM_price(new BigDecimal(m_price));
			mn.setM_quan(new BigDecimal(m_quan));

			if (ss.getMapper(MapperMenu.class).regMenu(mn) == 1) {
				System.out.println("성공");
				req.setAttribute("r", "등록성공");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public void updateMenu(UpdateP updp, HttpServletRequest req) {

		try {

			String udmn = req.getParameter("udmn");
			String udprice = req.getParameter("udprice");
			String mnum = req.getParameter("m_num");

			updp.setUdmn(udmn);
			updp.setUdprice(new BigDecimal(udprice));
			updp.setM_num(new BigDecimal(mnum));

			if (ss.getMapper(MapperMenu.class).updatePriceByNumber(updp) == 1) {
				System.out.println("성공");
				req.setAttribute("r", "등록성공");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public void deleteMenu(Menu_Vo mn, HttpServletRequest req) {

		try {

			String m_num = req.getParameter("m_num");
			mn.setM_num(new BigDecimal(m_num));

			if (ss.getMapper(MapperMenu.class).deleteMenu(mn) == 1) {
				req.setAttribute("r", "삭제성공");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
