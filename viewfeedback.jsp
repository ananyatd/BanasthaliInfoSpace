<%-- 
    Document   : viewfeedback
    Created on : 12 Apr, 2023, 12:01:08 AM
    Author     : Deeksha
--%>

<!DOCTYPE html>
<%@page import="java.sql.*" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!----======== CSS ======== -->
    <link rel="stylesheet" href="forviewfeedback.css">
     
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

    <section class="dashboard">
        <div class="top">
            <i class="uil uil-bars sidebar-toggle"></i>

            
            
            <!--<img src="images/profile.jpg" alt="">-->
        </div>

        <div class="dash-content">
            <div class="overview">
                <div class="title">
                    <i class="uil uil-feedback"></i>
                    <span class="text">FEEDBACK</span>
                </div>
                
                                        <%
                                           Class.forName("org.apache.derby.jdbc.ClientDriver");  
                                           Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/project");
                                           Statement stmt=conn.createStatement();
                                           ResultSet rs=stmt.executeQuery("select sentby,fdesc from feedbacktable");
                                        while(rs.next())
                                        {%>
                                        <section id="testimonals">
                                                            <div class="testimonal-box-container">
                                                                <div class="testimonal-box">
                                                                    <div class="box-top">
                                                                        <div class="profile">
                                                                            <div class="name-user">
                                                                                <strong><%out.print(rs.getString(1));%></strong>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="client-comment">
                                                                        <p>
                                                                            <%out.print(rs.getString(2));%>
                                                                        </p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </section>
                                          <%}%>
            </div>
        </div>
    </section>
                            
</body>
</html>