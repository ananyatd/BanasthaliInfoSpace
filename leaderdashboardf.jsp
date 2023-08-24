
<!DOCTYPE html>
<%@page import="java.sql.*" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!----======== CSS ======== -->
    <link rel="stylesheet" href="forleaderdashboard.css">
     
    <!----===== Iconscout CSS ===== -->
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
    
   

    <!--<title>Admin Dashboard Panel</title>--> 
</head>
<body>
    <nav>
        <div class="logo-name">
            <div class="logo-image">
                <img src="img_avatar2.png" alt="">
            </div>

            <span class="logo_name">Leader</span>
        </div>

        <div class="menu-items">
            <ul class="nav-links">
                <li><a href="leaderdashboardf.jsp">
                    <i class="uil uil-estate"></i>
                    <span class="link-name">Dahsboard</span>
                </a></li>
                <li><a href="studentrecord.jsp">
                    <i class="uil uil-files-landscapes"></i>
                    <span class="link-name">Student Record</span>
                </a></li>
                <li><a href="viewfeedback.jsp">
                    <i class="uil uil-chart"></i>
                    <span class="link-name">View Feedback</span>
                </a></li>
                <li><a href="leadereditprofile.jsp">
                   <i class="uil uil-setting"></i>
                    <span class="link-name">Edit Profile</span>
                </a></li>
                <li><a href="addpostpage.jsp">
                    <i class="uil uil-estate"></i>
                    <span class="link-name">Add Post</span>
                </a></li>
                <li><a href="viewpostf.jsp">
                    <i class="uil uil-estate"></i>
                    <span class="link-name">View Post</span>
                </a></li>
                <li><a href="editpost.jsp">
                    <i class="uil uil-estate"></i>
                    <span class="link-name">Edit Post</span>
                </a></li>
                <li><a href="Deletepost.jsp">
                    <i class="uil uil-estate"></i>
                    <span class="link-name">Delete Post</span>
                    </a></li>
                
            </ul>
            
            <ul class="logout-mode">
                <li><a href="newjsp.jsp">
                    <i class="uil uil-signout"></i>
                    <span class="link-name">Logout</span>
                </a></li>

                
            </ul>
        </div>
    </nav>
    
<!--    <div class="modal fade" id="viewpostmodal" tabindex="-1" aria-labelledby="ViewPostModal" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="viewpostmodall">View Post</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
        <form>
            
         
           <label for="username">User ID:</label> 
          <input type="text" class="input" name="emailID" placeholder="Enter StudentID" required>
         
          
          <input type="text" class="input" id="dept" placeholder="Enter your department name" required> 
         
       
          <input type="submit" value="Register" name="okstudent" class="submitbtn">
      </form>
       
      </div>
      <div class="modal-footer">
         <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button> 
      </div>
    </div>
  </div>-->

    
    
<!--        <form id="login" class="form-input" >
          <div class="imgcontainer">
            <img src="img_avatar2.png" alt="Avatar" class="avatar">
          </div>
          <div class="container-form">
             <label for="username">User ID:</label> 
          <input type="text" class="input" name="userID" placeholder="Enter smartID" required>
          <br>
          <br>
           <label for="password">Password:</label> 
          <input type="password" class="input" id="password" name="pwd" placeholder="Enter Password" required>
          <br>
          <br>
         <input type="checkbox" class="check-box"><span>Remember Password</span>
         <br>
         <br>
          <input type="submit" value="Login" class="submitbtn" name="slbtn">
          </div>
         
      </form>-->
<!--      </div>
         <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
          <button type="button" class="btn btn-primary">Save changes</button>
        </div> 
    </div>
  </div>
</div>-->

    <section class="dashboard">
        <div class="top">
            <i class="uil uil-bars sidebar-toggle"></i>

            
            
            <!--<img src="images/profile.jpg" alt="">-->
        </div>

        <div class="dash-content">
            <div class="overview">
                <div class="title">
                    <i class="uil uil-tachometer-fast-alt"></i>
                    <span class="text">Dashboard</span>
                </div>

                <div class="boxes">
                    <div class="box box1">
                        <i class="uil uil-files-landscapes"></i>
                        <span class="text">Club Name</span>
                        <span class="number">GDSC</span>
                    </div>
                    <div class="box box2">
                        <i class="uil uil-comments"></i>
                        <span class="text">Club Description</span>
                        <div class="text1">GDSC gdsc gdsc gdsc gdsc gdsc gdsc gdsc gdsc gdsc gdsc </div>
                    </div>
                    
                </div>
            </div>

            <div class="activity">
                <div class="title">
                    <i class="uil uil-clock-three"></i>
                    <span class="text">POST</span>
                </div>
                <!--<div><input type="submit" value="ADD POST" name="add" />  </div>-->
                <div class="activity-data">
                    <div class="data names">
                        <table class="styled-table">
                            <thead>
                                <tr>
                                    <th>Post ID</th>
                                    <th>POST Title</th>
                                    <th>POST DESCRIPTION</th>
<!--                                    <th>POST IMAGE</th>
                                     <th>POST DOCUMENT</th> 
                                    <th>UPDATE</th>-->
                                </tr>
                            </thead>
                            <tbody>
                               <%
                                   
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/project");
    Statement stmt=conn.createStatement(); 
    String q="select id,pname,pdes  from Posttable";
    ResultSet rs=stmt.executeQuery(q);
    while(rs.next()) {
        out.print(" <tr>");
        out.print(" <td>"+rs.getInt(1)+"</td>");
        out.print(" <td>"+rs.getString(2)+"</td>");
        out.print(" <td>"+rs.getString(3)+"</td>");
       /* out.print(" <td><button type='button' class='button-5'>View</button></td>");
        out.print(" <td><div style='display:flex; flex-direction: row;'>"
                  + "<button type='button' class='button-5'>Edit</button>"
                  + "<button type='button' class='button-5'>Delete</button></td></div>");*/
        out.print("</tr>"); 


}
                                  %>   
                              
<!--                                <tr>
                                    <td>123</td>
                                    <td>GDSC MEET</td>
                                    <td>hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh</td>
                                    <td><button type="button" class="button-5">View</button></td>
                                    
                                    <td><div style="display:flex; flex-direction: row;"><button type="button" class="button-5">Edit</button>
                                        <button type="button" class="button-5">Delete</button></td></div>
                                </tr>
                                <tr class="active-row">
                                    <td>123</td>
                                    <td>GDSC MEET</td>
                                    <td>helo hello mello gello       nice website</td>
                                    <td><button type="button" class="button-5">View</button></td>-->
                                
<!--                                    <td><div style="display:flex; flex-direction: row;"><button type="button" class="button-5">Edit</button>
                                        <button type="button" class="button-5">Delete</button></td></div>-->
                                 
                                <!--</tr>-->
                                <!-- and so on... -->
                            </tbody>
                        </table>
                </div>
            </div>
        </div>
    </section>

    <!--<script src="script.js"></script>-->
    
</body>
</html>
<%
    
    %>
