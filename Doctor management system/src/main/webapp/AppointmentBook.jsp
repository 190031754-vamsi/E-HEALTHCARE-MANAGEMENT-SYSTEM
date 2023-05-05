<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Appointment Booking</title>
<style>
 * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
  }
  body {
    font-family: "Inter", Arial, Helvetica, sans-serif;
    }
    
    
  .formbold-mb-5 {
    margin-bottom: 20px;
  }
  .formbold-pt-3 {
    padding-top: 12px;
  }
  .formbold-main-wrapper {
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 48px;
  }

  .formbold-form-wrapper {
    margin: 0 auto;
    max-width: 550px;
    width: 100%;
    background: white;
  }
  .formbold-form-label {
    display: block;
    font-weight: 500;
    font-size: 16px;
    color: #07074d;
    margin-bottom: 12px;
  }
  .formbold-form-label-2 {
    font-weight: 600;
    font-size: 20px;
    margin-bottom: 20px;
  }

  .formbold-form-input {
    width: 100%;
    padding: 12px 24px;
    border-radius: 6px;
    border: 1px solid #e0e0e0;
    background: white;
    font-weight: 500;
    font-size: 16px;
    color: #6b7280;
    outline: none;
    resize: none;
  }
  .formbold-form-input:focus {
    border-color: #6a64f1;
    box-shadow: 0px 3px 8px rgba(0, 0, 0, 0.05);
  }

  .formbold-btn {
    text-align: center;
    font-size: 16px;
    border-radius: 6px;
    padding: 14px 32px;
    border: none;
    font-weight: 600;
    background-color: #6a64f1;
    color: white;
    width: 100%;
    cursor: pointer;
  }
  .formbold-btn:hover {
    box-shadow: 0px 3px 8px rgba(0, 0, 0, 0.05);
  }

  .formbold--mx-3 {
    margin-left: -12px;
    margin-right: -12px;
  }
  .formbold-px-3 {
    padding-left: 12px;
    padding-right: 12px;
  }
  .flex {
    display: flex;
  }
  .flex-wrap {
    flex-wrap: wrap;
  }
  .w-full {
    width: 100%;
  }
  @media (min-width: 540px) {
    .sm\:w-half {
      width: 50%;
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

	<nav>
        <ul id='MenuItems'>
          <li><a href='PatientProfile.jsp'>View Profile</a></li>
          <li><a href="PatientHome.jsp">Home page</a></li>
          <li><form action="PatientLogout" method="post">
				<input type="submit" value="Logout">
			  </form></li>
        </ul>
     </nav>
     

<div class="formbold-main-wrapper">
  <div class="formbold-form-wrapper">
    <form action="AppointmentBookController" method="POST">
      <div class="formbold-mb-5">
        <label for="name" class="formbold-form-label"> Full Name </label>
        <input type="text" name="fullname" id="name" placeholder="Full Name" class="formbold-form-input"/>
      </div>
      
      
      <div class="formbold-mb-5">
        <label for="phone" class="formbold-form-label"> Phone Number </label>
        <input type="text" name="phnum" id="phone" placeholder="Enter your phone number" class="formbold-form-input"/>
      </div>
      
      
      <div class="formbold-mb-5">
        <label for="email" class="formbold-form-label"> Email Address </label>
        <input type="email" name="email" id="email" placeholder="Enter your email" class="formbold-form-input"/>
      </div>
      
      <div class="formbold-mb-5">
    <label for="specdoctor" class="formbold-form-label"> Select Specialized Doctor </label>
    <input type="text" list="specdoctor-list" name="specdoctor" class="formbold-form-input" />
    <datalist id="specdoctor-list">
        <option value="Dr. John Doe, Cardiology"> </option>
        <option value="Dr. Jane Smith, Dermatology"> </option>
        <option value="Dr. Mike Johnson, Pediatrics"> </option>
        <option value="Dr. Sarah Lee, Ophthalmology"> </option>
    </datalist>
	</div>
      
      
      
      
      <div class="flex flex-wrap formbold--mx-3">
        <div class="w-full sm:w-half formbold-px-3">
          <div class="formbold-mb-5 w-full">
            <label for="date" class="formbold-form-label"> Date </label>
            <input type="date" name="date" id="date" class="formbold-form-input" />
          </div>
          
          
        </div>
        <div class="w-full sm:w-half formbold-px-3">
          <div class="formbold-mb-5">
            <label for="time" class="formbold-form-label"> Time </label>
            <input type="time" name="time" id="time" class="formbold-form-input" />
          </div>
        </div>
      </div>

	
   
      <div class="formbold-mb-5 formbold-pt-3">
        <label class="formbold-form-label formbold-form-label-2">
          Address Details
        </label>
        
        <div class="flex flex-wrap formbold--mx-3">
          <div class="w-full sm:w-half formbold-px-3">
            <div class="formbold-mb-5">
              <input type="text" name="area" id="area" placeholder="Enter area" class="formbold-form-input" />
            </div>
          </div>
          
          
          <div class="w-full sm:w-half formbold-px-3">
            <div class="formbold-mb-5">
              <input type="text" name="city" id="city" placeholder="Enter city" class="formbold-form-input" />
            </div>
          </div>
          
          
          <div class="w-full sm:w-half formbold-px-3">
            <div class="formbold-mb-5">
              <input type="text" name="state" id="state" placeholder="Enter state" class="formbold-form-input" />
            </div>
          </div>
          
          
          <div class="w-full sm:w-half formbold-px-3">
            <div class="formbold-mb-5">
              <input type="text" name="postcode" id="post-code" placeholder="Post Code" class="formbold-form-input"/>
            </div>
          </div>
        </div>
      </div>

      <div>
        <input class="formbold-btn" type="submit" value="Book Appointment" />
      </div>
    </form>
  </div>
</div>

</body>
</html>