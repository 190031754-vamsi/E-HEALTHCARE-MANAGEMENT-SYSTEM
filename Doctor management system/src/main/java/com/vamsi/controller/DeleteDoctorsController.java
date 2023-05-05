package com.vamsi.controller;

import java.io.IOException;

import com.vamsi.dao.DeleteDoctorsDao;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/DeleteDoctorsController")
public class DeleteDoctorsController extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int did = 0;

        try {
            did = Integer.parseInt(request.getParameter("did"));
        } 
        catch (NumberFormatException ex) {
            request.setAttribute("NOTIFICATION", "Invalid Doctor ID!");
            RequestDispatcher rd = request.getRequestDispatcher("DeleteDoctors.jsp");
            rd.forward(request, response);
            return;
        }

        DeleteDoctorsDao dd = new DeleteDoctorsDao();

        if (dd.deletebyid(did)) {
            request.setAttribute("NOTIFICATION", "Doctor deleted successfully!");
        }

        RequestDispatcher rd = request.getRequestDispatcher("DeleteDoctors.jsp");
        rd.forward(request, response);
    }
}
