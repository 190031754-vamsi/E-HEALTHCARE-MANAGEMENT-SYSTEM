<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Patient Login</title>
<style>
body {
	height: 100%;
    width: 100%;
  	background-image: url("https://t3.ftcdn.net/jpg/04/87/69/28/360_F_487692869_V8MZ1hLvhXQZKT50EV8Sh13AkdibGJb3.jpg");
  	font-family: "Roboto", sans-serif;
   	background-position: center;
    background-size: cover;
    position: absolute;
}

.signup-box {
  width: 360px;
  height: 620px;
  margin: auto;
  background-color: white;
  border-radius: 3px;
}

.login-box {
  width: 360px;
  height: 280px;
  margin: auto;
  border-radius: 3px;
  background-color: white;
}

h1 {
  text-align: center;
  padding-top: 15px;
}

h4 {
  text-align: center;
}

form {
  width: 300px;
  margin-left: 20px;
}

form label {
  display: flex;
  margin-top: 20px;
  font-size: 18px;
}

form input {
  width: 100%;
  padding: 7px;
  border: none;
  border: 1px solid gray;
  border-radius: 6px;
  outline: none;
}
input[type="button"] {
  width: 280px;
  height: 35px;
  margin-top: 20px;
  border: none;
  background-color: #49c1a2;
  color: white;
  font-size: 18px;
}
p {
  text-align: center;
  padding-top: 20px;
  font-size: 15px;
}
.para-2 {
  text-align: center;
  color: white;
  font-size: 15px;
  margin-top: -10px;
}
.para-2 a {
  color: #49c1a2;
}
</style>
</head>
<body>

<div class="login-box">
      <h1>Login</h1>
      <form action="PatientLoginController" method="post">
        <label>Username</label>
        <input type="text" name="uname" placeholder="" />
        <label>Password</label>
        <input type="password" name="pwd" placeholder="" />
        <input type="submit" value="Login" />
      <closeform></closeform>
      </form>
    </div>
    <p class="para-2">
      Not have an account? <a href="PatientSignup.jsp">Sign Up Here</a>
    </p>		

</body>
</html>