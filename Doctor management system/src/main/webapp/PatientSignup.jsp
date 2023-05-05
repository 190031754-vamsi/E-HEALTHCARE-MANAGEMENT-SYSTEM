<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Patient Sign Up</title>
<script type="text/javascript">function validate() {
var pa = document.myform.pwd.value;
var cp = document.myform.cpwd.value;
if(pa.length <= 4)
alert("Password should be more than 4 letters");
else if(pa != cp)
alert("Password is incorrect");
}
</script>

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



h1 {
  text-align: center;
  padding-top: 15px;
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
input[type="submit"] {
  width: 320px;
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
<div class="signup-box">
      <h1>Sign Up</h1>
      <form action="PatientSignupController" method="post">
        <label>User Name</label>
        <input type="text" name="uname" placeholder="" />
        
        <label>Email</label>
        <input type="email" name="email" placeholder="" />
        
        <label>Phone number</label>
        <input type="text" name="phno" placeholder="" />
        
        <label>Area</label>
        <input type="text" name="area" placeholder="" />
        
        <label>City</label>
        <input type="text" name="city" placeholder="" />
        
        <label>State</label>
        <input type="text" name="state" placeholder="" />
        
        <label>Password</label>
        <input type="password" name="pwd" placeholder="" />
        
        <label>Confirm Password</label>
        <input type="password" name="cpwd" placeholder="" />
        
        
        <input type="submit" value="Signup" />
      <closeform></closeform></form>
      <p>
        By clicking the Sign Up button,you agree to our <br />
        <a href="#">Terms and Condition</a> and <a href="#">Policy Privacy</a>
      </p>
    </div>
    <p class="para-2">
      Already have an account? <a href="PatientLogin.jsp">Login here</a>
    </p>
</body>
</html>