package com.vamsi.controller;

import java.io.IOException;

import com.vamsi.dao.PatientSignupDao;
import com.vamsi.model.PatientSignupModel;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/PatientSignupController")
public class PatientSignupController extends HttpServlet{
	public void doPost(HttpServletRequest request , HttpServletResponse response) throws ServletException, IOException {
		
		String uname = request.getParameter("uname");
		String email = request.getParameter("email");
		long phno = Long.parseLong(request.getParameter("phno"));
		String area = request.getParameter("area");
		String city = request.getParameter("city");
		String state = request.getParameter("state");
		String pwd = request.getParameter("pwd");
		String cpwd = request.getParameter("cpwd");
		
		PatientSignupModel sm = new PatientSignupModel();
		sm.setUname(uname);
		sm.setEmail(email);
		sm.setPhno(phno);
		sm.setArea(area);
		sm.setCity(city);
		sm.setState(state);
		sm.setPwd(pwd);
		sm.setCpwd(cpwd);
		//java is clearly object oriented programming language that means -
		// -even if you want to fetch this data they should be passes in object format
		
		PatientSignupDao sd = new PatientSignupDao();
		
		 try {
	           sd.getVamsi(sm);
	        } 
		 catch (Exception e) {
	            e.printStackTrace();
	        }
		
		HttpSession session = request.getSession(); //HttpSession (Session Management)
		session.setAttribute("username", uname);
	
		response.sendRedirect("PatientAfterSignup.jsp");
	}

}
