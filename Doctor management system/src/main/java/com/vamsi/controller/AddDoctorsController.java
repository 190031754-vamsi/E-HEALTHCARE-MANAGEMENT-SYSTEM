package com.vamsi.controller;

import java.io.IOException;
import com.vamsi.dao.AddDoctorsDao;
import com.vamsi.model.AddDoctorsModel;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/AddDoctorsController")
public class AddDoctorsController extends HttpServlet {
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        int did = Integer.parseInt(request.getParameter("did"));
        String dname = request.getParameter("dname");
        String pwd = request.getParameter("pwd");
        String repwd = request.getParameter("repwd");
        String qualification = request.getParameter("qualification");
        String specdoctor = request.getParameter("specdoctor");
        String email = request.getParameter("email");

        
        AddDoctorsModel adm = new AddDoctorsModel();
        adm.setDid(did);
        adm.setDname(dname);
        adm.setPwd(pwd);
        adm.setRepwd(repwd);
        adm.setQualification(qualification);
        adm.setSpecdoctor(specdoctor);
        adm.setEmail(email);
        
        
        
        AddDoctorsDao add = new AddDoctorsDao();
        System.out.println(adm);
        try {
        	HttpSession session = request.getSession();
			session.setAttribute("AddDoctorsModel", adm);

            add.getDoctors(adm);
            
        } catch (Exception e) {
            e.printStackTrace();
           
        }
        response.sendRedirect("AdminHome.jsp");
    }
}





//HttpSession session = request.getSession(); //HttpSession (Session Management)
//session.setAttribute("username", uname);