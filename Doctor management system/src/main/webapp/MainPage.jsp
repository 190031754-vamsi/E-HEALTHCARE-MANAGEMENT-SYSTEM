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
     background-image:url("https://www.urbanui.com/wp-content/uploads/2020/02/MedServices-1024x598.jpg");
     background-position: center;
     background-size: cover;
     position: absolute;
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
        color: #E75480                               /*this is for toogle buttons of  home,about us,take survey and create survey */
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
<div class="full-page">	
 <div class="nav-bar">
  <div>
  	<a href="Home.jsp">Hospital Management System</a>
  </div>

	<nav>
        <ul id='MenuItems'>
          <li><a href='AdminLogin.jsp'>Admin Login</a></li>
          <li><a href="DoctorLogin.jsp">Doctor Login</a></li>
          <li><a href="PatientLogin.jsp">Patient Login</a></li>
        </ul>
     </nav>
 </div>    
</div>
</body>
</html>