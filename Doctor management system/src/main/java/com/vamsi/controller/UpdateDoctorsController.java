package com.vamsi.controller;

import java.io.IOException;

import com.vamsi.dao.UpdateDoctorsDao;
import com.vamsi.model.UpdateDoctorsModel;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/UpdateDoctorsController")
public class UpdateDoctorsController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int did = Integer.parseInt(request.getParameter("did"));
        String dname = request.getParameter("dname");
        String pwd = request.getParameter("pwd");
        String repwd = request.getParameter("repwd");
        String qualification = request.getParameter("qualification");
        String specdoctor = request.getParameter("specdoctor");
        String email = request.getParameter("email");

        UpdateDoctorsModel udm = new UpdateDoctorsModel();
        udm.setDid(did);
        udm.setDname(dname);
        udm.setPwd(pwd);
        udm.setRepwd(repwd);
        udm.setQualification(qualification);
        udm.setSpecdoctor(specdoctor);
        udm.setEmail(email);

        UpdateDoctorsDao udd = new UpdateDoctorsDao();

        try {
            if (udd.update(udm)) {
                request.setAttribute("NOTIFICATION", "Doctor Updated Successfully!");
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        RequestDispatcher rd = request.getRequestDispatcher("UpdateDoctors.jsp");
        rd.forward(request, response);
    }
}
