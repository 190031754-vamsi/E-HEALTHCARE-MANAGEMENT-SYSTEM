<%@ page import ="com.vamsi.model.AppointmentConfirmationModel" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Appointment Data</title>
    <link rel="stylesheet" type="text/css" href="AppointmentConfirmationcss.css">
    <style>
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

/* <!---------now let us style for the form page---------> */
       
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

 <h1>Appointment Data</h1>
    <form action="AppointmentConfirmationController" method="post">
        <label for="fullname">Full Name:</label>
        <input type="text" id="fullname" name="fullname" placeholder="Enter full name">
        <button type="submit">Search</button>
    </form>
    
	 <nav>
        <ul id='MenuItems'>
          <li><a href='PatientProfile.jsp'>View Profile</a></li>
          <li><a href="PatientHome.jsp">Home page</a>
          <li><form action="PatientLogout" method="post">
				<input type="submit" value="Logout">
			  </form></li>
        </ul>
 </nav>
     
    
        <table>
            <tr>
                <th>Full Name</th>
                <th>Phone Number</th>
                <th>Email</th>
                <th>Specialized Doctor</th>
                <th>Date</th>
                <th>Time</th>
                <th>Area</th>
                <th>City</th>
                <th>State</th>
                <th>Postcode</th>
            </tr>
                <tr>
                    <td>${appointments.getFullname()}</td>
                    <td>${appointments.getPhnum()}</td>
                    <td>${appointments.getEmail()}</td>
                    <td>${appointments.getSpecdoctor()}
                    <td>${appointments.getDate()}</td>
                    <td>${appointments.getTime()}</td>
                    <td>${appointments.getArea()}</td>
                    <td>${appointments.getCity()}</td>
                    <td>${appointments.getState()}</td>
                    <td>${appointments.getPostcode()}</td>
                </tr>
        </table>
</body>
</html>
