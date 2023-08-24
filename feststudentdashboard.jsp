<%-- 
    Document   : feststudentdashboard
    Created on : 12 Apr, 2023, 5:39:37 AM
    Author     : Deeksha
--%>

<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!----======== CSS ======== -->
    <link rel="stylesheet" href="forfeststudentdb.css">
     
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

            <span class="logo_name">Student</span>
        </div>

        <div class="menu-items">
            <ul class="nav-links">
                <li><a href="StudentDashboard.jsp">
                    <i class="uil uil-estate"></i>
                    <span class="link-name">Dahsboard</span>
                </a></li>
                <li><a href="StudentDashboard.jsp">
                    <i class="uil uil-files-landscapes"></i>
                    <span class="link-name">Clubs</span>
                </a></li>
                <li><a href="feststudentdashboard.jsp">
                    <i class="uil uil-chart"></i>
                    <span class="link-name">Fests</span>
                </a></li>
                <li><a href="studentEditProfike.jsp">
                   <i class="uil uil-setting"></i>
                    <span class="link-name">Edit Profile</span>
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
                    <span class="text">FESTS</span>
                </div>
                <div class="main">
                    <div class="card">
                        <div class="box">
                        <div class="image-content">
                            <span class="overlay"></span>
                            <div class="card-content">
                            <img src="feedbackicon.jpg" alt="" class="card-img">
                            </div>
                        </div>
                        <div class="content">
                            <p>FEST NAME</p>
                            <a href="clubdash.jsp">JOIN</a>
                        </div>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
    </section>

    <!--<script src="script.js"></script>-->
</body>
</html>