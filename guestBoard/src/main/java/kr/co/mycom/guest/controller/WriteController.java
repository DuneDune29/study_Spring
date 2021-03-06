package kr.co.mycom.guest.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import kr.co.mycom.guest.model.GuestDAO;
import kr.co.mycom.guest.model.GuestDTO;

public class WriteController implements Controller {
		private GuestDAO guestDAO;
		
		public void setGuestDAO(GuestDAO guestDAO) {
			this.guestDAO = guestDAO;
		}
		
		@Override
		public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
			String name = request.getParameter("name");
			String pwd = request.getParameter("pwd");
			String email = request.getParameter("email");
			String home = request.getParameter("home");
			String content = request.getParameter("content");
			
			GuestDTO dto = new GuestDTO();
			dto.setName(name);			dto.setPwd(pwd);
			dto.setEmail(email);		dto.setHome(home);
			dto.setContent(content);
			guestDAO.insertGuest(dto);
			
			ModelAndView mav = new ModelAndView();
			mav.setViewName("redirect:list.htm");
			return mav;
	}
}