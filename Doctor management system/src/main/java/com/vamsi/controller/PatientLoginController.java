package com.vamsi.controller;

import java.io.IOException;

import com.vamsi.dao.PatientLoginDao;
import com.vamsi.model.PatientLoginModel;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/PatientLoginController")
public class PatientLoginController extends HttpServlet{
	public void doPost(HttpServletRequest request , HttpServletResponse response) throws IOException {
		
		String uname = request.getParameter("uname");
		String pwd = request.getParameter("pwd");
		
		PatientLoginModel plm = new PatientLoginModel();
		plm.setUname(uname);
		plm.setPwd(pwd);
		
		PatientLoginDao pld = new PatientLoginDao();
		
		if(pld.check(plm)) {
			HttpSession session = request.getSession();
			session.setAttribute("Patientusername", uname);
			
			response.sendRedirect("PatientHome.jsp");
		}
		else {
			response.sendRedirect("PatientLogin.jsp");
		}
		
	}

}
