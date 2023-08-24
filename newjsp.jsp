<%-- 
    Document   : newjsp
    Created on : 12 Apr, 2023, 7:14:09 AM
    Author     : Deeksha
--%>

<%-- 
    Document   : newjsp
    Created on : 31 Mar, 2023, 11:48:29 PM
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

  <link rel="stylesheet" href="styles.css">
  <title>Home Page</title>

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>
  <header>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark px-19">
      <div class="container-fluid">
          <img src="images/Info_Space.jpg" width="40" height="40" alt="Info_Space"/>

        <a class="navbar-brand" href="#">Banasthali InfoSpace</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
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
                <li><a class="dropdown-item" href="#"  data-bs-toggle="modal" data-bs-target="#loginStudentModal">Login as student</a></li>
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
            <!--<img src="img_avatar2.png" alt="Avatar" class="avatar">-->
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
         <!--<input type="checkbox" class="check-box"><span>Remember Password</span>-->
<!--         <br>
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
            <!--<img src="images/img_avatar2.png" alt="Avatar" class="avatar">-->
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
         <!--<input type="checkbox" class="check-box"><span>Remember Password</span>-->
<!--         <br>
         <br>-->
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
          <div class="imgcontainer">
            <!--<img src="images/img_avatar2.png" alt="Avatar" class="avatar">-->
          </div>
          <!-- <label for="username">User ID:</label> -->
          <input type="email" class="input" name="emailID" placeholder="Enter StudentID" required>
         
          <br>
          <input type="text" class="input" name="userID" placeholder="Enter SmartID" required>
          <br>
          <input type="text" class="input" name="name" placeholder="Enter name" required>
         
          <br>
          <!-- <label for="password">Password:</label> -->
          <input type="password" class="input" name="pwd" id="password" placeholder="Enter Password" required>
         
          <br>
         <!-- <input type="checkbox" class="check-box"><span>I agree to terms and conditions</span> -->
         <input type="text" class="input" name="class" id="class" placeholder="Enter your class" required>
       
         <br>
         <!-- <input type="text" class="input" id="dept" placeholder="Enter your department name" required> -->
         
       
          <input type="submit" value="Register" name="substu" class="submitbtn">
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
            <!--<img src="img_avatar2.png" alt="Avatar" class="avatar">-->
          </div>
          <!-- <label for="username">User ID:</label> -->
          <input type="email" class="input" name="emailID" placeholder="Enter StudentID" required>
         
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
         
       
          <input type="submit" value="Register" name="submitcoord" class="submitbtn">
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

          <img src="images/MAINIMAGE.png" class="d-block w-100" alt="...">
          <div class="carousel-caption">
            
            <p>...</p>
          </div>
        </div>
<!--        <div class="carousel-item">
          <img src="p2.jpg" class="d-block w-100" alt="...">
        </div>-->
        <div class="carousel-item">
          <img src="images/BVFEST.png" class="d-block w-100" alt="...">
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
  <section class="about-home" id="about">
<!--    <div class="container text-center">
      <div>
        <h1>About Us<span class="text-primary"></span></h1>
        <hr  class="w-25 m-auto">
        <br><br>
        <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Maiores tempore maxime ducimus adipisci temporibus quam. Corrupti veritatis nemo aspernatur deleniti quos molestiae sequi, nesciunt quidem odio amet cupiditate eum eligendi? Esse dolorum obcaecati nesciunt qui aliquam saepe unde sint eligendi. ipsum dolor sit amet consectetur adipisicing elit. Atque architecto nobis fugit mollitia natus odit aliquam exercitationem sequi? Sed itaque officia placeat, eligendi rerum repellat reprehenderit ut doloribus quaerat ullam.</p>
      </div>
    </div>-->
 <!-- about section -->
  
    <div class="container-fluid">
      <div class="row">
        <div class="col-md-6">
          <div class="img-box">
            <img src="images/about-img.jpg" alt="">
          </div>
        </div>
        <div class="col-md-5 col-lg-4">
          <div class="detail-box">
            <div class="heading_container">
              <h2>
                A Few words about us
              </h2>
            </div>
            <p>
              “Banasthali Info Space" is a web-based application which helps Banasthali Vidyapith students in
providing all the required updates and information to students and the respective club leaders. “Banasthali Info Space” will serve as digital notice board for Btech
students.This It mainly provides the viewers with any news /updates related to any upcoming events.
            </p>
            

          </div>
        </div>
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
//       out.print("hello");
       response.sendRedirect("leaderdashboardf.jsp");
   }
   else
   {
       out.print("hello");
 
   }
}catch(Exception ex){ex.printStackTrace();}
        }
   try{
       if(request.getParameter("submitcoord")!=null)
{

       
String uid= request.getParameter("userID");
String pwd=request.getParameter("pass");
String email=request.getParameter("emailID");
String name=request.getParameter("name");
String dept=request.getParameter("dept");

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
    response.sendRedirect("leaderdashboardf.jsp");
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
 
  if(request.getParameter("slbtn")!=null)
{
try
{
String uid=request.getParameter("userID");
String pwd=request.getParameter("pwd");
   String query="select * from STUDENTREGISTRATION where smartid='"+uid+"' and SPASSWORD='"+pwd+"' ";
   Class.forName("org.apache.derby.jdbc.ClientDriver");
   Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/project");
    Statement stmt=conn.createStatement();
   ResultSet rs=stmt.executeQuery(query);
   boolean status=rs.next();
   if(status)
   {
       response.sendRedirect("StudentDashboard.jsp");
   }
   else
   {
       //response.sendRedirect("newjsp.jsp");
//     response.sendRedirect("newjsp4.jsp");
      out.print("<script>alert('Try again!!!')</script>"); 
   }
}catch(Exception ex){ex.printStackTrace();}
        }
  
  try{
       if(request.getParameter("substu")!=null)
{
int x=0;
       
String uid= request.getParameter("userID");
String pwd=request.getParameter("pwd");
String email=request.getParameter("emailID");
String name=request.getParameter("name");
String dept=request.getParameter("class");
   String query1="insert into STUDENTREGISTRATION values('"+uid+"','"+name+"','"+email+"','"+pwd+"','"+dept+"' ) ";
   Class.forName("org.apache.derby.jdbc.ClientDriver");
   Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/project");
    Statement stmt=conn.createStatement();
     x= stmt.executeUpdate(query1);
   if(x>0)
   {
       out.print("hello");
       out.print("<script>alert('Succesfully signedup!!!')</script>");
     response.sendRedirect("StudentDashboard.jsp");
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
