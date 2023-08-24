<%-- 
    Document   : viewpostf
    Created on : 12 Apr, 2023, 9:52:51 AM
    Author     : Deeksha
--%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>POSTS</title>
  <link rel="stylesheet" href="forviewpost.css">

</head>
<body>
<!-- partial:index.partial.html -->
       <%

 
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/project");
    Statement stmt1=conn.createStatement();
    ResultSet rs=stmt1.executeQuery("select * from posttable");
                                        while(rs.next())
                                        {%>
 
                                        <div class="container">
                                          <div class="card">
                                            <div class="card__header">
                                               <%  out.print("<img src='"+rs.getString(3)+"' class='card__image' width='600' alt='Tulips' alt='card_image' /> ");%>
                                            </div>
                                            <div class="card__body">
                                              <h4>   <%out.print(rs.getString(2));%></h4>
                                              <p>   <%out.print(rs.getString(4));%></p>
                                            </div>
                                            <div class="card__footer">
                                              <div class="user">

                                                <div class="user__info">
                                                  <h5>GDSC</h5>
                                                  <small>Vrinda</small>
                                                </div>
                                                
                                              </div>
                                              </div>
                                          </div>

                                        </div>
                                    <%}%>
<!-- partial -->
  
</body>
</html>
