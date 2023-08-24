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
    <form action="popupid.jsp" method="post">
        <!--<h1>Edit Profile</h1>-->
        <label for="id">ID:</label>
        <input type="text" name="id" id="id" placeholder="Enter the ID">
        <input type="submit" value="OK" name="ok">
    </form>
  

<%
        if(request.getMethod().equalsIgnoreCase("post")) {
            String id = request.getParameter("id");
            
            // Database connection details
            
            
            try {
                // Load the JDBC driver
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                
                // Establish the database connection
                Connection conn = DriverManager.getConnection("jdbc:derby://localhost:1527/project");
                
                // Retrieve data from studentregistration table
                PreparedStatement stmt1 = conn.prepareStatement("SELECT * FROM studentregistration WHERE smartid = ?");
                stmt1.setString(1, id);
                ResultSet rs1 = stmt1.executeQuery();
                if (rs1.next()) {
                    // ID is already logged in
                    out.println("<p>You are already logged in.</p>");
                    response.sendRedirect("clubdash.jsp");
                }
                else{
                    PreparedStatement stmt2 = conn.prepareStatement("SELECT * FROM studentregistration WHERE id = ?");
                    stmt2.setString(1, id);
                    ResultSet rs2 = stmt2.executeQuery();
                     if (rs2.next()) {
                    // Extract the data from the result set
                    String name = rs2.getString("sname");
                    String email = rs2.getString("smail");
                    String dept = rs2.getString("sdepartment");
                    
                    // Insert or update the data in club table
                    PreparedStatement stmt3 = conn.prepareStatement("INSERT INTO club1_student (id, sname, email,sclass) VALUES (?, ?, ?,?) ");                            ;
                    stmt3.setString(1, id);
                    stmt3.setString(2, name);
                    stmt3.setString(3, email);
                    stmt3.setString(4,dept);
                    stmt3.executeUpdate();
                    
                    out.println("<p>Successfully Joined!</p>");
                    response.sendRedirect("clubdash.jsp");
                } else {
                    out.println("<p>No data found for the entered ID.</p>");
                
                }
                
               
                
                // Close the database connection
                conn.close();
                }} catch(Exception e) {
                out.println("<p>Error: " + e.getMessage() + "</p>");
            }
        }
    %>
 </body>
</html>