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
        
        
        <%-- ------------------------------- --%>
        
        @import url('https://fonts.googleapis.com/css?family=Cairo:400,700=arabic');

.screen:hover .background {
    opacity:0.5;
}
.slider:hover {

    left: -320px;
    -webkit-transition: all 0.5s ease-in-out;
    transition: all 0.5s ease-in-out;
}
body {
    font-family:'Cairo', Helvetica, Arial, sans-serif;
}
.Pheader {
    width:100%;
    background:#c32148;
    text-align:center;
    float:left;
    color:#fff;
}
.profilepic {
    width:80px;
    border-radius:50%;
    margin-top:0px;
    border:2px solid #fff;
    box-shadow:0px 1px 2px rgba(0, 0, 0, 0.5);
}
h3 {
    margin-top:0;
    text-shadow:0px 1px 3px rgba(0, 0, 0, 0.75);
}
.screen {
    margin:0 auto;
    margin-top:50px;
    width:320px;
    height:420px;
    position:relative;
    overflow:hidden;
    background:#333;
   box-shadow: 0px 5px 10px #262626;
}
.slider {
    width:640px;
    float:left;
    left:0;
    position:relative;
    -webkit-transition: all 0.5s ease-in-out;
    transition: all 0.5s ease-in-out;
}
.background {
    position:absolute;
    width:320px;
    height:auto;
    z-index:0;
    top:60px;
    left:0;
    -webkit-transition: all 0.5s ease-in-out;
    transition: all 0.5s ease-in-out;
}
.header1, .header2 {
    text-align:center;
    width:320px;
    float:left;
    height:140px;
    color:#fff;
    position:relative;
}
.header2 {
    padding-top:0px;
}
p {
    font-size:12px;
    text-shadow:0px 1px 2px rgba(0, 0, 0, 0.0);
}
        
    </style>
</head>
<body>
<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    if(session.getAttribute("Patientusername") == null) {
        response.sendRedirect("PatientLogin.jsp");
        return;
    }
%>
<nav>
    <ul id='MenuItems'>
        <li><a href="PatientHome.jsp">Home page</a></li>
        <li>
            <form action="PatientLogout" method="post">
                <input type="submit" value="Logout">
            </form>
        </li>
    </ul>
</nav>

    <%
    try {
    	String uname = (String) session.getAttribute("Patientusername");
        String query = "SELECT uname, email, phno, area, city, state FROM patientsignup WHERE uname = ?";
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc", "root", "Vamsi2511@");
        PreparedStatement st = con.prepareStatement(query);
        st.setString(1, uname);
        
        ResultSet rs = st.executeQuery();
        if (!rs.next()) {
            out.println("No Doctors found.");
        } else { 
%>

<a href="https://codepen.io/a7rarpress" target="_blank" title="codepen" style="position: fixed; bottom: 10px; right: 10px"><img src="https://tinypic.host/images/2023/03/27/codepen_circle_icon_237905.png" alt=""></a>

<div style="text-align: center;">
    <b><span style="color: #000;font-family:'cairo',serif;"><span><span> </span> <a href="https://codepen.io/a7rarpress" target="_blank"><span style="color: #ff0000;">Patient Profile</span></a></span></span></b>
</div>
<div class="screen">
    <div class="Pheader">
        <h4></h4>
    </div>
    <img class="background" src="https://tinypic.host/images/2023/02/06/010101010101.png">
    <div class="slider">
        <!-- Section 1 -->
        <div class="header1">
            <img class="profilepic" src="https://tinypic.host/images/2023/02/21/pikrepo.com-2.jpg">
            <h3>Patient Profile</h3>
        </div>
        <!-- Section 2 -->
        <div class="header2">
        	<p>Patient Name : <%=rs.getString(1) %></p><br> 
        	<p>Patient Email : <%=rs.getString(2) %></p><br> 
        	<p>Patient PhoneNo: <%=rs.getInt(3) %></p><br> 
        	<p>Patient Area : <%=rs.getString(4) %></p><br>
        	<p>Patient City : <%= rs.getString(5) %></p><br> 
        	<p>Patient State : <%= rs.getString(6) %></p></br>
        </div>
    </div>
</div>
<%
        }
        rs.close();
        st.close();
        con.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
</body>
</html>



    