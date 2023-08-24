<%-- 
    Document   : editpost
    Created on : 12 Apr, 2023, 8:33:44 AM
    Author     : Deeksha
--%>

<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Post</title>
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
    <form action="EditPost" method="POST" enctype="multipart/form-data">
        <h1>Edit post</h1>
        <label for="id">ID:</label>
        <input type="text" name="id" id="id" placeholder="Enter Post ID">
        <input type="submit" value="OK" name="ok">
    </form>
    <%
        // Existing JSP code
        // ...
    %>
</body>
</html>
<% 
        if (request.getParameter("ok") != null) { // Check if the form is submitted
            String id = request.getParameter("id");
            
            // Connect to the database
            Connection conn = DriverManager.getConnection("jdbc:derby://localhost:1527/project");
            
            // Fetch data from the table based on the ID
            String query = "SELECT * FROM Posttable WHERE id=?";
            PreparedStatement stmt = conn.prepareStatement(query);
            stmt.setString(1, id);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                String name = rs.getString("pname");
                String image = rs.getString("pimage");
                String desc = rs.getString("pdes");
              //  String dept = rs.getString("department");
                // You can fetch other fields from the table similarly

                // Display the fetched data in the edit profile form
    %>
                <form action="EditPost" method="POST" enctype="multipart/form-data"> <!-- Update with the URL of the update profile logic -->
                    <input type="hidden" name="id" value="<%=id%>">
                    <label for="Title">Title:</label>
                    <input type="text" name="title" id="name" value="<%=image%>"><br>
                    <label>Upload Your Photo:</label><br>
                      Select File:<input type="file" name="img"  size='50'>
<!--                  
-->                    <label for="des">Content:</label>
                    <input type="text" name="des" id="des" value="<%=desc%>"><br>
                
                    <!-- Add other fields from the table to the form 
                    <input type="submit" value="Update">
                </form>
    <%
            } else {
                // If no data found for the given ID, display an error message
//    %>
<!---->               <p>No data found for ID: <%=id%></p>
    <%
            }
            rs.close();
            stmt.close();
            conn.close();
        }
    
        if (request.getParameter("id") != null && request.getParameter("title") != null && request.getParameter("title") != null && request.getParameter("img") != null && request.getParameter("des") != null) {
            String id = request.getParameter("id");
            String name = request.getParameter("title");
            String email = request.getParameter("img");
            String pass = request.getParameter("dec");
            

            // Connect to the database
            Connection conn = DriverManager.getConnection("jdbc:derby://localhost:1527/project");
            
            // Update the data in the table based on the ID
            String query = "UPDATE Posttable SET pname=?, pimage=?, pdes=? WHERE id=?";
            PreparedStatement stmt = conn.prepareStatement(query);
            stmt.setString(1, name);
            stmt.setString(2,email);
            stmt.setString(3, pass);
            
            
            int rowsUpdated = stmt.executeUpdate();
            
            if (rowsUpdated > 0) {
                // If update successful, display a success message
    %>
                <p>Profile updated successfully!</p>
    <%
            } else {
                // If update failed, display an error message
    %>
                <p>Failed to update profile. Please try again.</p>
    <%
            }
            stmt.close();
            conn.close();
        }
    %>
</body>
</html>