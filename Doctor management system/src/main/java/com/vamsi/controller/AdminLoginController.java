package com.vamsi.controller;

import java.io.IOException;

import com.vamsi.dao.AdminLoginDao;
import com.vamsi.model.AdminLoginModel;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/AdminLoginController")
public class AdminLoginController extends HttpServlet{
public void doPost(HttpServletRequest request , HttpServletResponse response) throws IOException {
		
		String uname = request.getParameter("uname");
		String pwd = request.getParameter("pwd");
		
		AdminLoginModel lm = new AdminLoginModel();
		lm.setUname(uname);
		lm.setPwd(pwd);
		
		AdminLoginDao dao = new AdminLoginDao();
		
		if(dao.check(lm)) {
			HttpSession session = request.getSession();
			session.setAttribute("Adminusername", uname);
			
			response.sendRedirect("AdminHome.jsp");
		}
		else {
			response.sendRedirect("AdminLogin.jsp");
		}
		
	}
}


