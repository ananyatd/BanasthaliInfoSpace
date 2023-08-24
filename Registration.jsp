<%-- 
    Document   : Registration
    Created on : 31 Mar, 2023, 10:54:25 PM
    Author     : Deeksha
--%>


<%@page import="java.sql.*"%>
<%@ page import="java.util.regex.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


 <!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<!--  <link rel="stylesheet" href="styles.css">-->
  <title>Home Page</title>
  
  <style>
      *{
    padding: 0;
    margin: 0;
    box-sizing: box;
}
body{
    overflow-x: hidden;
    font-family: Arial, Helvetica, sans-serif;
}
.carousel-item img{
    width: 100%;
    height: 80vh;
}
   

h1 {
    font-size: 70px;
    font-family: "Dancing Script", cursive;
    font-weight: 600;
    text-shadow: #3B5998    ;
    background-image: linear-gradient( #df1616, hsla(108, 83%, 41%, 0.781));
    color: transparent;
    background-clip: text;
    -webkit-background-clip: text;
  }

form {border: 3px solid #f1f1f1;}

input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

h5{
    animation-delay: 1s;
     color:black;
}
.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

img.avatar {
  width: 28%;
  border-radius: 50%;
}

.container-form {
  padding: 16px;
}
.submitbtn{
    width: 85%;
    padding: 10px 30px;
    cursor:pointer;
    display:block;
    margin: auto;
    background: linear-gradient(to right,orange,rgb(255, 0, 0));
    border:0;
    outline: none;
    border-radius: 30px;
}
span{
    color: #777;
    font-size: 15px;
    bottom: 80px;
    position: absolute;
}
/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .btn {
     width: 100%;
  }
}
.contact{
    height: 50vh;
    display: flex;
    justify-content: center;
    align-items: center;
}
.fa {
    padding: 20px;
    font-size: 30px;
    width: 50px;
    text-align: center;
    text-decoration: none;
    margin: 5px 2px;
  }
  
  .fa:hover {
      opacity: 0.7;
  }
  
  .fa-facebook {
    background: #3B5998;
    color: white;
  }
  
  .fa-envelope {
    background: #dd4b39;
    color: white;
  }
  
  .fa-linkedin {
    background: #007bb5;
    color: white;
  }
  

  
  .fa-instagram {
    background: #125688;
    color: white;
  }




  </style>
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>
  <header>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark px-19">
      <div class="container-fluid">
          <img src="Info Space (1).jpg" width="30" height="30" alt="Info Space (1)"/>
        <a class="navbar-brand" href="#"> BanasthaliInfoSpace</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span><img src="Info Space (1).jpg" width="30" height="30" alt="Info Space (1)"/>

        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav ms-auto mb-2 mb-lg-0 text-center">
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="#">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#about">About</a>
            </li>
           
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown"
                aria-expanded="false">
                Login
              </a>
              <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                <li><a class="dropdown-item" href="StudentDashboard.jsp" data-bs-toggle="modal" data-bs-target="#loginStudentModal">Login as student</a></li>
                <li><a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#loginCordinatorModal">Login as Cordinator</a></li>
              </ul>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown"
                aria-expanded="false">
                SignIn
              </a>
              <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                <li><a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#signupStudentModal">SignIn as student</a></li>
                <li><a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#signupCordinatorModal">SignIn as Cordinator</a></li>
              </ul>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#contact">Contact Us</a>
            </li>
           
          </ul>
         
        </div>
    </nav>

    <!-- login Student modal -->

    <!-- Button trigger modal -->
<!-- <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#loginModal">
  Launch demo modal
</button> -->

<!-- Modal -->
<div class="modal fade" id="loginStudentModal" tabindex="-1" aria-labelledby="loginStudentModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="loginStudentModal">Login as Student</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form id="login" class="form-input" >
          <div class="imgcontainer">
            <img src="img_avatar2.png" alt="Avatar" class="avatar">
          </div>
          <div class="container-form">
            <!-- <label for="username">User ID:</label> -->
          <input type="text" class="input" name="userID" placeholder="Enter smartID" required>
          <br>
          <br>
          <!-- <label for="password">Password:</label> -->
          <input type="password" class="input" id="password" name="pwd" placeholder="Enter Password" required>
          <br>
          <br>
<!--         <input type="checkbox" class="check-box"><span>Remember Password</span>
         <br>
         <br>-->
          <input type="submit" value="Login" class="submitbtn" name="slbtn">
          </div>
         
      </form>
      </div>
        <!-- <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
          <button type="button" class="btn btn-primary">Save changes</button>
        </div> -->
    </div>
  </div>
</div>


 <!-- login Cordinator modal -->

    <!-- Button trigger modal -->
<!-- <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#loginCordinatorModal">
  Launch demo modal
</button> -->

<!-- Modal -->
<div class="modal fade" id="loginCordinatorModal" tabindex="-1" aria-labelledby="loginCordinatorModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="loginCordinatorModal">Login as Cordinator</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form id="login" class="form-input" >
          <div class="imgcontainer">
            <img src="C:\Projectfinal\web\images\img_avatar2.png" alt="Avatar" class="avatar">
          </div>
          <div class="container-form">
            <!-- <label for="username">User ID:</label> -->
          <input type="text" class="input" name="userID" placeholder="Enter smartID" required>
          <br>
          <br>
          <!-- <label for="password">Password:</label> -->
          <input type="password" class="input" name="pwd" id="password" placeholder="Enter Password" required>
          <br>
          <br>
         <input type="checkbox" class="check-box"><span>Remember Password</span>
         <br>
         <br>
          <input type="submit" value="Login" name="submitok" class="submitbtn">
          </div>
         
      </form>
      </div>
        <!-- <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
          <button type="button" class="btn btn-primary">Save changes</button>
        </div> -->
    </div>
  </div>
</div>

    <!-- sign up Student modal -->
    <!-- Button trigger modal -->
<!-- <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#signupModal">
  Launch demo modal
</button> -->

<!-- Modal -->
<div class="modal fade" id="signupStudentModal" tabindex="-1" aria-labelledby="signupStudentModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="signupStudentModalLabel">SignUp as student</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form id="register" class="form-input" >
            <div class="imgcontainer"><img src="C:\Projectfinal\web\images\img_avatar2.png" alt="img_avatar2" class="avatar"/>

            
          </div>
          <!-- <label for="username">User ID:</label> -->
          <input type="text" class="input" name="emailID" placeholder="Enter StudentID" required>
         
          <br>
          <input type="text" class="input" name="userID" placeholder="Enter SmartID" required>
          <br>
          <input type="text" class="input" name="name" placeholder="Enter name" required>
         
          <br>
          <!-- <label for="password">Password:</label> -->
          <input type="password" class="input" name="pass" id="password" placeholder="Enter Password" required>
         
          <br>
         <!-- <input type="checkbox" class="check-box"><span>I agree to terms and conditions</span> -->
         <input type="text" class="input" name="dept" id="class" placeholder="Enter your class" required>
       
         <br>
         <!-- <input type="text" class="input" id="dept" placeholder="Enter your department name" required> -->
         
       
          <input type="submit" value="Register" name="okstudent" class="submitbtn">
      </form>
       
      </div>
      <div class="modal-footer">
        <!-- <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button> -->
      </div>
    </div>
  </div>
</div>

<!-- sign up cordinator modal -->
    <!-- Button trigger modal -->
<!-- <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#signupCordinatorModal">
  Launch demo modal
</button> -->

<!-- Modal -->
<div class="modal fade" id="signupCordinatorModal" tabindex="-1" aria-labelledby="signupCordinatorModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="signupCordinatorModalLabel">SignUp as Cordinator</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form id="register" class="form-input" >
          <div class="imgcontainer">
            <img src="C:\Projectfinal\web\images\img_avatar2.png" alt="Avatar" class="avatar">
          </div>
          <!-- <label for="username">User ID:</label> -->
          <input type="text" class="input" name="emailID" placeholder="Enter StudentID" required>
         
          <br>
          <input type="text" class="input" name="userID" placeholder="Enter SmartID" required>
          <br>
          <input type="text" class="input" name="name" placeholder="Enter name" required>
         
          <br>
          <!-- <label for="password">Password:</label> -->
          <input type="password" class="input" name="pass" id="password" placeholder="Enter Password" required>
         
          <br>
         <!-- <input type="checkbox" class="check-box"><span>I agree to terms and conditions</span> -->
         <input type="text" class="input" name="class" id="class" placeholder="Enter your class" required>
       
         <br>
         <!-- <input type="text" class="input" id="dept" placeholder="Enter your department name" required> -->
         
       
          <input type="submit" value="Register" name="ok" class="submitbtn">
      </form>
       
      </div>
     
    </div>
  </div>
</div>
            <!-- carousel -->
    <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
      <div class="carousel-indicators">
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active"
          aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"
          aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"
          aria-label="Slide 3"></button>
      </div>
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img src="c1.jpg" class="d-block w-100" alt="...">
          <div class="carousel-caption">
            <h5>Why to go anywhere when everything is here!</h5>
            <p>...</p>
          </div>
        </div>
          <div class="carousel-item">

          <img src="c2.jpg" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
          <img src="c3.jpg" class="d-block w-100" alt="...">
        </div>
      </div>
      <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators"
        data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
      </button>
      <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators"
        data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
      </button>
    </div>
  </header>
  <br>
  <br>
  <section class="about-home">
    <div class="container text-center" id="about">
      <div>
        <h1>About Us<span class="text-primary"></span></h1>
        <hr  class="w-25 m-auto">
        <br><br>
        <p>“Banasthali Info Space" is a web-based application which helps Banasthali Vidyapith students in
providing all the required updates and information to students and the respective club leaders. “Banasthali Info Space” will serve as digital notice board for Btech
students.This It mainly provides the viewers with any news /updates related to any upcoming events.</p>
      </div>
    </div>
  </section>
  <br><br>
 
  <section class="contact" id="contact">
    <div class="container text-center">
      <h1>Contact Us at-</h1>
      <br><br>
      <div class="social-menu">
     
     
        <a href="#" class="fa fa-facebook"></a>
        <a href="#" class="fa fa-envelope"></a>
        <a href="https://www.linkedin.com/in/bhumikakaushik23456" target="_blank" class="fa fa-linkedin"></a>
        <a href="#" class="fa fa-instagram"></a>
       
        </div>
    </div>
   
   
  </section>

 
  <!-- Optional JavaScript; choose one of the two! -->

  <!-- Option 1: Bootstrap Bundle with Popper -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
    crossorigin="anonymous"></script>

  <!-- Option 2: Separate Popper and Bootstrap JS -->
  <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
</body>

</html>
<%
    //Leader SignIn
    
    if(request.getParameter("ok")!=null)
    {
        


// Get the input values submitted by the user
String uid = request.getParameter("userID");
String pwd = request.getParameter("pass");
String email = request.getParameter("emailID");
String name = request.getParameter("name");
String dept = request.getParameter("class");

// Define a regular expression to match the uid
String uidRegex = "^[A-Z]{5}[0-9]{5}$";
Pattern uidPattern = Pattern.compile(uidRegex);

// Validate the uid against the regular expression
Matcher uidMatcher = uidPattern.matcher(uid);
if (!uidMatcher.matches()) {
  // uid is invalid
  out.println("<script>alert('Invalid UID. UID must start with 5 alphabetical characters followed by 5 numerical characters.')</script>");
} else {
  // uid is valid
  try {
    String query3 = "INSERT INTO LEADERREGISTRATION VALUES('" + uid + "','" + name + "','" + email + "','" + pwd + "','" + dept + "')";
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    Connection conn = DriverManager.getConnection("jdbc:derby://localhost:1527/project");
    Statement stmt = conn.createStatement();
    int y = stmt.executeUpdate(query3);
    if (y > 0) {
      out.println("<script>alert('Successfully signed up!')</script>");
      response.sendRedirect("leaderdashboard.jsp");
      return;
    } else {
      out.println("<script>alert('Failed to sign up. Please try again.')</script>");
    }
  } catch (Exception ex) {
    ex.printStackTrace();
  }
}


    }
/*  try{
       if(request.getParameter("ok")!=null)
{

       
String uid= request.getParameter("userID");
String pwd=request.getParameter("pass");
String email=request.getParameter("emailID");
String name=request.getParameter("name");
String dept=request.getParameter("class");

int y=0;
   String query3="insert into LEADERREGISTRATION values('"+uid+"','"+name+"','"+email+"','"+pwd+"','"+dept+"') ";
   Class.forName("org.apache.derby.jdbc.ClientDriver");
   Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/project");
    Statement stmt=conn.createStatement();
     y= stmt.executeUpdate(query3);
   if(y>0)
   {
       out.print("<script>alert('Succesfully signedup!!!')</script>");
   // out.print("<a href=leaderdashboard.jsp></a>");
    response.sendRedirect("leaderdashboard.jsp");
    return;
   }
   else
   {   System.out.print("NOOOOO");
   
       out.print("<script>alert('Try again!!!')</script>");
       
 
   }
 }
}catch(Exception ex)
{
    ex.printStackTrace();
}
 */
  
if(request.getParameter("submitok")!=null)
{
try
{
String uid=request.getParameter("userID");
String pwd=request.getParameter("pwd");
   String query="select * from leaderregistration where smartid='"+uid+"' and PASSWORD='"+pwd+"' ";
   Class.forName("org.apache.derby.jdbc.ClientDriver");
   Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/project");
    Statement stmt=conn.createStatement();
   ResultSet rs=stmt.executeQuery(query);
   boolean status=rs.next();
   if(status)
   {
       out.print("hello");
       response.sendRedirect("leaderdashboard.jsp");
   }
   else
   {
       out.print("hello");
 
   }
}catch(Exception ex){ex.printStackTrace();}
        }
       


  //Leader Login
 /* if(request.getParameter("ok")!=null)
{
try
{
String uid=request.getParameter("userID");
String pwd=request.getParameter("pwd");
   String query4="select * from Leaderregistration where smartid='"+uid+"' and password='"+pwd+"' ";
   Class.forName("org.apache.derby.jdbc.ClientDriver");
   Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/project");
    Statement stmt=conn.createStatement();
   ResultSet rs=stmt.executeQuery(query4);
   boolean status=rs.next();
   if(status)
   {
       response.sendRedirect("leaderdashboard.jsp");
   }
   else
   {
       //response.sendRedirect("newjsp.jsp");
     response.sendRedirect("homepage.jsp");
   }
}catch(Exception ex){ex.printStackTrace();}
        }
 
   */      
   //Student LOgin
 
if(request.getParameter("slbtn")!=null)
{
try
{
String uid=request.getParameter("userID");
String pwd=request.getParameter("pwd");
   String query="select * from STUDENTREGISTRATION where sid='"+uid+"' and SPASSWORD='"+pwd+"' ";
   Class.forName("org.apache.derby.jdbc.ClientDriver");
   Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/APP","app","app");
    Statement stmt=conn.createStatement();
   ResultSet rs=stmt.executeQuery(query);
   boolean status=rs.next();
   if(status)
   {
       response.sendRedirect("studentdashboard.jsp");
   }
   else
   {
       //response.sendRedirect("newjsp.jsp");
//     response.sendRedirect("newjsp4.jsp");
       response.sendRedirect("newjsploginform.jsp");
   }
}catch(Exception ex){ex.printStackTrace();}
        }

  //Student Registration
  try{
       if(request.getParameter("okstudent")!=null)
{
int x=0;
       
String uid= request.getParameter("userID");
String pwd=request.getParameter("pass");
String email=request.getParameter("emailID");
String name=request.getParameter("name");
String dept=request.getParameter("dept");
   String query1="insert into STUDENTREGISTRATION values('"+uid+"','"+name+"','"+email+"','"+pwd+"','"+dept+"' ) ";
   Class.forName("org.apache.derby.jdbc.ClientDriver");
   Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/APP","app","app");
    Statement stmt=conn.createStatement();
     x= stmt.executeUpdate(query1);
   if(x>0)
   {
       out.print("hello");
       out.print("<script>alert('Succesfully signedup!!!')</script>");
     response.sendRedirect("studentdashboard.jsp");
   }
   else
   {   System.out.print("NOOOOO");
       out.print("<script>alert('Try again!!!')</script>");
       
 
   }
 }
}catch(Exception ex)
{
    ex.printStackTrace();
}
 
         
       
%>

