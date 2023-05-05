<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Doctors</title>
<style>
* {box-sizing: border-box}
/* Full-width input fields */
  input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}
input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}
/* Set a style for all buttons */
button {
  background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}
button:hover {
  opacity:1;
}
/* Extra styles for the cancel button */
.cancelbtn {
  padding: 14px 20px;
  background-color: #f44336;
}
/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
  float: left;
  width: 50%;
}
/* Add padding to container elements */
.container {
  padding: 16px;
}
/* Clear floats */
.clearfix::after {
  content: "";
  clear: both;
  display: table;
}
/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
  .cancelbtn, .signupbtn {
    width: 100%;
  }
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
	
		if(session.getAttribute("Adminusername")==null){
			response.sendRedirect("AdminLogin.jsp");
		}
	%>


	<nav>
        <ul id='MenuItems'>
          <li><a href='AdminDoctors.jsp'>Doctors</a></li>
          <li><a href="AdminPatients.jsp">Patients</a></li>
          <li><a href="ViewDoctorConfirmAppointment.jsp">view Doctor Confirm Appointment</a></li>
          <li><form action="AdminLogout" method="post">
				<input type="submit" value="Logout">
			  </form></li>
        </ul>
     </nav>
     
<form action="UpdateDoctorsController" style="border:1px solid #ccc" method="post">
  <div class="container">
    <h1>Add Doctor</h1>
    <hr>
    <label for="did"><b>DoctorID whose details to be update</b></label>
    <input type="number" placeholder="Enter DoctorId" name="did" required><br>
    
    <label for="dname"><b>DoctorName</b></label>
    <input type="text" placeholder="Enter Doctorname" name="dname" required>
    
    <label for="pass"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="pwd" required>
    
    <label for="retype"><b>Retype Password</b></label>
    <input type="password" placeholder="Retype Password" name="repwd" required>
    
    <label for="role"><b>Enter Qualification</b></label>
    <input type="text" placeholder="Enter Qualification" name="qualification" required>
    
    <label for="qualification"><b>Enter Doctor name with Qualification</b></label>
    <input type="text" placeholder="Enter Doctor name with Qualification" name="specdoctor" required>
    
    <label for="email"><b>Enter Email</b></label>
    <input type="email" placeholder="Enter Email" name="email" required>
    
    <label>
      <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me
    </label>
    
    <div class="clearfix">
      <button type="submit" class="signupbtn">Add Doctor</button>
    </div>
  </div>
</form>
</body>
</html>