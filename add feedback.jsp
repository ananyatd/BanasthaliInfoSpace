<%-- 
    Document   : add feedback
    Created on : 11 Apr, 2023, 11:43:56 PM
    Author     : Deeksha
--%>

<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
    <title>Send Feedback</title>
 
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #F8F8F8;
        }

        h1 {
            text-align: center;
            margin-top: 50px;
            color: #333;
        }

        form {
            width: 400px;
            margin: 0 auto;
            background-color: #FFF;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }

        label, input, textarea {
            display: block;
            margin-bottom: 10px;
            width: 100%;
        }

        label {
            font-weight: bold;
            color: #666;
        }

        input[type="text"], textarea {
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
            resize: none;
        }

        input[type="file"] {
            border: none;
            padding: 0;
        }

        input[type="submit"] {
            margin-top: 20px;
            background-color: #007BFF;
            color: #FFF;
            border: none;
            padding: 10px 20px;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        input[type="submit"]:focus {
            outline: none;
        }
    </style>
</head>
<body>
    <h1>Feedback Form</h1>

    
    <form action="add feedback.jsp" method="post" class="feedback-form">
        <label for="smartid">SmartID:</label>
        <input type="text" id="smartid" name="id" required>

        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required>

        <label for="feedback">Write you feedback:</label>
        <textarea id="feedback" name="feedback" rows="5" required></textarea>

        <input type="submit" value="Submit Feedback">
    </form>

<!--    <h2>Feedback List</h2>
    <table>
        <tr>
            <th<td>>Name</td></th>
            <th><td>Email</td></th>
            <th><td>Feedback</td></th>
        </tr>
    </table>-->
      <% 
            String id = request.getParameter("id");
String name = request.getParameter("name");
String feedback = request.getParameter("feedback");

if (id != null && name != null && feedback != null) {
    // Connect to the database and insert the feedback
    String dbURL = "jdbc:derby://localhost:1527/project";
    Connection conn = DriverManager.getConnection(dbURL);
    PreparedStatement pstmt = conn.prepareStatement("INSERT INTO feedbacktable (sentby, fdesc,smartid) VALUES (?, ?, ?)", Statement.RETURN_GENERATED_KEYS);
    
    pstmt.setString(1, name);
    pstmt.setString(2, feedback);
    pstmt.setString(3, id);
    
     int y= pstmt.executeUpdate();
           if(y>0)
               {
              out.print("<script>alert('Thank You for your Feedback')</script>");
              response.sendRedirect("StudentDashboard.jsp");
           }
           else
              out.print("<script>alert('Oops There might be some problem!! Try again :) ')</script>"); 
      
}        
          
  /*  // Get the generated feedback ID
    ResultSet rs = pstmt.getGeneratedKeys();
    if (rs.next()) {
        int feedbackId = rs.getInt(1);
        System.out.println("Feedback ID: " + feedbackId);
    }

    // Close the database connections
    pstmt.close();
    conn.close();

    // Redirect back to the feedback page to prevent form resubmission
    response.sendRedirect("feedback.jsp");
} else {
    // Fetch the list of feedbacks from the database
    String dbURL = "jdbc:derby://localhost:1527/BVInfoSpace";
    Connection conn = DriverManager.getConnection(dbURL);
    Statement stmt = conn.createStatement();
    ResultSet rs = stmt.executeQuery("SELECT * FROM feedback");

    // Display each feedback in a table row
    while (rs.next()) {
        String feedbackName = rs.getString("name");
        String feedbackEmail = rs.getString("email");
        String feedbackText = rs.getString("fdesc");
        %>
<!--        <tr>
            <td><%= feedbackName %></td>
            <td><%= feedbackEmail %></td>
            <td><%= feedbackText %></td>
        </tr>-->
        <%
    }

    // Close the database connections
    rs.close();
    stmt.close();
    conn.close();
}

      */ %>

