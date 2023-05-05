package com.vamsi.controller;

import java.io.IOException;

import com.vamsi.dao.DoctorRejectDao;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/DoctorRejectController")
public class DoctorRejectController extends HttpServlet{
	 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 
		 HttpSession session = request.getSession();
		 String email = (String) session.getAttribute("email");

		 
		 DoctorRejectDao dr = new DoctorRejectDao();
		 
		 if (dr.deletebyemail(email)) {
			 request.setAttribute("NOTIFICATION", "Doctor deleted successfully!");
		 }

		 RequestDispatcher rd = request.getRequestDispatcher("DoctorViewAppointmentRequest.jsp");
		 rd.forward(request, response);
	 }
	}