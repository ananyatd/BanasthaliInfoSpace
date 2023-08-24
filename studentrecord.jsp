<!DOCTYPE html>
<%@page import="java.sql.*"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!----======== CSS ======== -->
    <link rel="stylesheet" href="forstudentrecord.css">
     
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
                <li><a href="#">
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
                    
            </div>

            <div class="activity">
                <div class="title">
                    <i class="uil uil-database"></i>
                    <span class="text">STUDENT RECORD</span>
                </div>

                <div class="activity-data">
                    <div class="data names">
                        <table class="styled-table">
                            <thead>
                                <tr>
                                    <th>STUDENT ID</th>
                                    <th>STUDENT NAME</th>
                                    <th>SMARTCARD ID</th>
                                    <th>CLASS</th>
                                    <!-- <th>POST DOCUMENT</th> -->
                                   
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    Class.forName("org.apache.derby.jdbc.ClientDriver");
                                    Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/project");
                                    Statement stmt=conn.createStatement(); 
                                    String q="select smail,sname,smartid,sdepartment  from studentregistration";
                                    ResultSet rs=stmt.executeQuery(q);
                                    while(rs.next()) {
                                         out.print(" <tr>");
                                         out.print(" <td>"+rs.getString(1)+"</td>");
                                         out.print(" <td>"+rs.getString(2)+"</td>");
                                         out.print(" <td>"+rs.getString(3)+"</td>");
                                         out.print(" <td>"+rs.getString(4)+"</td>");
                                         out.print(" </tr>"); // Add closing tag for table row
}
                                  %>
                                 
                                   
                                    <!--<td>GDSC MEET</td>-->
                                    <!--<td></td>-->
                                    <!--<td></td>-->
                                    
                                    
                                <!--</tr>-->
                                <!--<tr class="active-row">-->
                                    <!--<td>123</td>-->
                                    <!--<td>GDSC MEET</td>-->
                                    <!--<td></td>-->
                                    <!--<td></td>-->
                                
                                    
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