package com.vamsi.controller;

import java.io.IOException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/AdminLogout")
public class AdminLogout extends HttpServlet{

	public void doPost(HttpServletRequest request , HttpServletResponse response) throws IOException {
		
		HttpSession session = request.getSession();
		session.removeAttribute("Adminusername");
		session.invalidate();
		
		response.sendRedirect("MainPage.jsp");
	}

}
