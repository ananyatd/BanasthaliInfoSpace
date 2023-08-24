<%-- 
    Document   : homepage
    Created on : 12 Apr, 2023, 2:03:39 AM
    Author     : Deeksha
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
       
    </body>
</html>

<%
    
    if(request.getParameter("submitbtn")!=null)
{

String uid=request.getParameter("userID");
String pwd=request.getParameter("pwd");

try{

   String query="select * from leaderregistration "; //where smartid='"+uid+"' and PASSWORD='"+pwd+"' ";
   Class.forName("org.apache.derby.jdbc.ClientDriver");
   Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/project");
    Statement stmt=conn.createStatement();
   ResultSet rs=stmt.executeQuery(query);
//   response.sendRedirect("leaderdashboardf.jsp");
   int flag=0;
   boolean status=rs.next();
   while(status){
       if(uid.equals(rs.getString("smartid")) && pwd.equals(rs.getString("password"))){
           flag=1;
       }
   }
   if(flag==1){
       response.sendRedirect("leaderdashboardf.jsp");
   }
   else{
       out.print("<script>alert('Succesfully signedup!!!')</script>");
       response.sendRedirect("homepage.jsp");
   }
}
catch(Exception e){
    System.out.println("exception");
    System.out.println(e);
}
//   if(status)
//   {
//       System.out.println(status);
//        out.print("hello");
//       response.sendRedirect("leaderdashboardf.jsp");
//   }
//   else
//   {
//       response.sendRedirect("leaderdashboardf.jsp");
//       out.print("hello");
// 
//   }
}
 
     try{
       if(request.getParameter("ok")!=null)
{

       
String uid= request.getParameter("userID");
String pwd=request.getParameter("pass");
String email=request.getParameter("emailID");
String name=request.getParameter("name");
String dept=request.getParameter("class");

//int y=0; 
   String query3="insert into LEADERREGISTRATION values('"+uid+"','"+name+"','"+email+"','"+pwd+"','"+dept+"') ";
   Class.forName("org.apache.derby.jdbc.ClientDriver");
   Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/project");
    Statement stmt=conn.createStatement();
      stmt.executeUpdate(query3);
//   if(y>0)
//   {
       response.sendRedirect("leaderdashboardf.jsp");
//       out.flush();
       out.print("<script>alert('Succesfully signedup!!!')</script>");
    
   
//   }
//   else
//   {   System.out.print("NOOOOO");
//       out.flush();
//       out.print("<script>alert('Try again!!!')</script>");
//       
// 
//   }
 }
}catch(Exception ex)
{
    ex.printStackTrace();
}
 %>