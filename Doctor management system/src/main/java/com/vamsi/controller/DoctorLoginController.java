package com.vamsi.controller;

import java.io.IOException;

import com.vamsi.dao.DoctorLoginDao;
import com.vamsi.model.DoctorLoginModel;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/DoctorLoginController")
public class DoctorLoginController extends HttpServlet{
public void doPost(HttpServletRequest request , HttpServletResponse response) throws IOException {
		
		String specdoctor = request.getParameter("specdoctor");
		String pwd = request.getParameter("pwd");
		
		DoctorLoginModel lm = new DoctorLoginModel();
		lm.setSpecdoctor(specdoctor);
		lm.setPwd(pwd);
		
		DoctorLoginDao dao = new DoctorLoginDao();
		
		if(dao.check(lm)) {
			HttpSession session = request.getSession();
			session.setAttribute("Doctorusername", specdoctor);
			
			response.sendRedirect("DoctorHome.jsp");
		}
		else {
			response.sendRedirect("DoctorLogin.jsp");
		}
		
	}
}
