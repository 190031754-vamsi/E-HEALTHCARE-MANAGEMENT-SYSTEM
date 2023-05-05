<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Doctor Management System</title>
<style>
*{       /* select all items in an HTML file */
	margin:0;
	padding:0;
	box-sizing: border-box;
}

.full-page{
     height: 100%;
     width: 100%;
     background-image:url("https://us.123rf.com/450wm/pitinan/pitinan1711/pitinan171100292/90593810-health-insurance-concept-doctor-in-hospital-with-health-insurance-related-icons-in-modern-graphic.jpg?ver=6.jpg");
     background-position: center;
     background-size: cover;
     position: absolute;
     background-repeat: no-repeat;
  	 background-size: 100% 100%;
/*    this block of code is for the setting the
background image and position of the image etc*/
}

.navbar
{
         display: flex;
         align-items: run-in;
         padding: 20px;
         padding-left: 50px;                        /* this if for setting the dimensions of the navigation bar*/
         padding-right: 30px;
         padding-top: 30px;
          background:lightcyan; 
}
nav
{
       flex: 1;                                           /*flex property arranges the toggle buttons  to fit the space available in its container*/
       text-align: right;                              /*Putting toggle buttons( home,about us,take survey,create survey and login buttons) on right side*/       
}
nav ul
{
        display: inline-block;
        list-style: none;                                /* this blocks is for styling row in which the list elements are present*/  
}
nav ul li
{
        display: inline-block;
        margin-right: 70px;                               /* this blocks are for styling the list elements*/                                                    
}
nav ul li a
{
         text-decoration: none;
         font-size:20px;
         color: palevioletred;                        /*this is for toogle buttons of  home,about us,take survey and create survey */
         font-family: sans-serif;
}

nav ul li a:hover
{
        color: #FF26FF;                                 /*this is for toogle buttons of  home,about us,take survey and create survey */
}
a
{
      text-decoration: none;
      color: palevioletred;                      /* a{    } here "a" is used for only links*/
      font-size: 28px;
}
</style>
</head>
<body>

	<%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		//here we are mentioing that I don't want this page has Cache page.
	
		if(session.getAttribute("Patientusername")==null){
			response.sendRedirect("PatientLogin.jsp");
		}
	%>
	
<p class="welcome">
<% 
  String Patientusername = (String) session.getAttribute("Patientusername"); //the session attribute is returned as an object and to concatenate it with the string
  out.println("Welcome " + Patientusername);
%>
</p>

<div class="full-page">	
 <div class="nav-bar">
  <div>
  	<a href="Home.jsp">Hospital Management System</a>
  </div>

	<nav>
        <ul id='MenuItems'>
          <li><a href='PatientProfile.jsp'>View Profile</a></li>
          <li><a href="AppointmentConfirmation.jsp">View Appointments</a></li>
          <li><a href="AppointmentBook.jsp">Book Appointment</a></li>
          <li><form action="PatientLogout" method="post">
				<input type="submit" value="Logout">
			  </form></li>
        </ul>
     </nav>
 </div>    
</div>
</body>
</html>