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

            String query = "SELECT did , dname, qualification, specdoctor, email from doctors";
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc", "root", "Vamsi2511@");
            PreparedStatement st = con.prepareStatement(query);

            ResultSet rs = st.executeQuery();
            if(!rs.next()) {
                out.println("No Doctors found.");
            } else { %>

                <table border="1" width="500" align="center">
                    <tr bgcolor="00FF7F">
                        <th><b>Doctor Id</b></th>
                        <th><b>Doctor Name</b></th>
                        <th><b>Doctor Qualification</b></th>
                        <th><b>Doctor Name With Qualification</b></th>
                        <th><b>Doctor Email</b></th>
                    </tr>

                    <%
                    do {
                    %>
                        <tr>
                            <td><%= rs.getInt(1) %></td>
                            <td><%= rs.getString(2) %></td>
                            <td><%= rs.getString(3) %></td>
                            <td><%= rs.getString(4) %></td>
                            <td><%= rs.getString(5) %></td>
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