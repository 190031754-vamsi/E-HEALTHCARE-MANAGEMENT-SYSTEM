<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Doctor</title>
    <link rel="stylesheet" type="text/css" href="AppointmentConfirmationcss.css">
    <style>
        .navbar {
            display: flex;
            align-items: run-in;
            padding: 20px;
            padding-left: 50px; /* this if for setting the dimensions of the navigation bar*/
            padding-right: 30px;
            padding-top: 30px;
            background: lightcyan;
        }

        nav {
            flex: 1; /*flex property arranges the toggle buttons to fit the space available in its container*/
            text-align: right; /*Putting toggle buttons( home,about us,take survey,create survey and login buttons) on right side*/
        }

        nav ul {
            display: inline-block;
            list-style: none; /* this blocks is for styling row in which the list elements are present*/
        }

        nav ul li {
            display: inline-block;
            margin-right: 70px; /* this blocks are for styling the list elements*/
        }

        nav ul li a {
            text-decoration: none;
            font-size: 20px;
            color: palevioletred; /*this is for toogle buttons of home,about us,take survey and create survey */
            font-family: sans-serif;
        }

        nav ul li a:hover {
            color: #FF26FF; /*this is for toogle buttons of home,about us,take survey and create survey */
        }

        a {
            text-decoration: none;
            color: palevioletred; /* a{ } here "a" is used for only links*/
            font-size: 28px;
        }

        /* <!---------now let us style for the form page---------> */

    </style>
</head>
<body>

<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    //here we are mentioning that I don't want this page has Cache page.

    if(session.getAttribute("Adminusername") == null) {
        response.sendRedirect("AdminLogin.jsp");
    }
%>

<h1>Delete Doctor</h1>

<form action="DeleteDoctorsController" method="post">
    <label for="did"><b>Enter Doctor ID:</b></label>
    <input type="number" id="did" name="did" placeholder="Enter Doctor ID" required>
    <button type="submit">Delete</button>
</form>

<nav>
    <ul id='MenuItems'>
        <li><a href='AdminDoctors.jsp'>Doctors</a></li>
        <li><a href="AdminPatients.jsp">Patient</a></li>
        <li>
            <form action="AdminLogout" method="post">
                <input type="submit" value="Logout">
            </form>
        </li>
    </ul>
</nav>

</body>
</html>
