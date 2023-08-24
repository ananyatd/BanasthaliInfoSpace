<%-- 
    Document   : Deletepost
    Created on : 12 Apr, 2023, 9:14:43 AM
    Author     : Deeksha
--%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
    <title></title>
<style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            padding: 20px;
        }

        form {
            max-width: 400px;
            margin: 0 auto;
            background-color: #ffffff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
        }

        label {
            display: block;
            margin-bottom: 10px;
        }

        input[type="text"],
        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #0000FF;
            color: #ffffff;
            font-weight: bold;
            text-transform: uppercase;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #add8e6;
        }

        p {
            margin-top: 10px;
            text-align: center;
            color: #ff0000;
        }
    </style>
</head>
<body>
    <form  method="post">
        <!--<h1>Edit Profile</h1>-->
        <label for="id">ID:</label>
        <input type="text" name="txtid" id="id" placeholder="Enter the Post ID">
        
        <input type="submit" value="OK" name="ok">
    </form>
<%    
   if(request.getParameter("ok")!=null)
{
    int id=Integer.parseInt(request.getParameter("txtid"));
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/project");
    String qu="delete from posttable where id=?";
    PreparedStatement pstmt = conn.prepareStatement(qu);
    pstmt.setInt(1,id);
    int y=pstmt.executeUpdate();
    if(y>0)
    {
        out.print("<script>alert('Deleted successfully')</script>");
    }
    else
    {
        out.print("<script>alert('Process Unsuccessful')</script>");
    }
}
    
%>