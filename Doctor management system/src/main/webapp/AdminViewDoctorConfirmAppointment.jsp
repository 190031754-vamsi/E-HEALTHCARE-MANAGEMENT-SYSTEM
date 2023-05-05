<%@ page import ="com.vamsi.model.AppointmentBookModel" %>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Appointment Data</title>
    <style>
        .navbar {
            display: flex;
            align-items: center;
            padding: 20px;
            padding-left: 50px;
            padding-right: 30px;
            padding-top: 30px;
            background: lightcyan;
        }
        nav {
            flex: 1;
            text-align: right;
        }
        nav ul {
            display: inline-block;
            list-style: none;
        }
        nav ul li {
            display: inline-block;
            margin-right: 70px;
        }
        nav ul li a {
            text-decoration: none;
            font-size: 20px;
            color: palevioletred;
            font-family: sans-serif;
        }
        nav ul li a:hover {
            color: #FF26FF;
        }
        a {
            text-decoration: none;
            color: palevioletred;
            font-size: 28px;
        }
    </style>
</head>
<body>
<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    if(session.getAttribute("Adminusername") == null) {
        response.sendRedirect("AdminLogin.jsp");
        return;
    }
%>
<nav>
    <ul id='MenuItems'>
    	<li><a href='AdminDoctors.jsp'>Doctors</a></li>
        <li><a href="AdminPatients.jsp">Patients</a></li>
        <li><a href="AdminHome.jsp">Home page</a></li>
        <li>
            <form action="AdminLogout" method="post">
                <input type="submit" value="Logout">
            </form>
        </li>
    </ul>
</nav>
<h1>Displaying Appointments</h1>
    <%
        try {
            String query = "SELECT fullname, phnum, email, specdoctor, date, time, area, city, state, postcode FROM appointmentbook";
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc", "root", "Vamsi2511@");
            PreparedStatement st = con.prepareStatement(query);


            ResultSet rs = st.executeQuery();
            if(!rs.next()) {
                out.println("No appointments found.");
            } else { %>

                <table border="1" width="500" align="center">
                    <tr bgcolor="00FF7F">
                        <th><b>Patient Name</b></th>
                        <th><b>Phone number</b></th>
                        <th><b>Email</b></th>
                        <th><b>Doctor Name with Specializarion</b>
                        <th><b>Date</b></th>
                        <th><b>Time</b></th>
                        <th><b>Area</b></th>
                        <th><b>City</b></th>
                        <th><b>State</b></th>
                        <th><b>Postcode</b></th>
                        <th><b>        </b>
                    </tr>

                    <%
                    do {
                    %>
                        <tr>
                            <td><%= rs.getString(1) %></td>
                            <td><%= rs.getInt(2) %></td>
                            <td><%= rs.getString(3) %></td>
                            <td><%= rs.getString(4) %></td>
                            <td><%= rs.getString(5) %></td>
                            <td><%= rs.getString(6) %></td>
                            <td><%= rs.getString(7) %></td>
                            <td><%= rs.getString(8) %></td>
                            <td><%= rs.getString(9) %></td>
                            <td><%= rs.getInt(10) %> </td>	
                        </tr>
                    <%
                    } while(rs.next());
                    %>

                </table>

            <% } %>
            
            <br>
            
        <% } catch(Exception e) {
            out.println(e);
        }
    %>
</body>
</html>