<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% Exception exception = (Exception) request.getAttribute("javax.servlet.error.exception"); %>
<% if(response.getStatus() == 500){ %>
<font color="red">Error: <%=exception.getMessage() %></font><br>
<%-- include login page --%>
<%@ include file="MainPage.jsp"%>
<%}else {%>
Hi There, error code is <%=response.getStatus() %><br>
Please go to <a href="Home.jsp"><font color="red" >home page</font></a>
<%} %>

</body>
</html> 