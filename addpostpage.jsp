<%-- 
    Document   : addpostpage
    Created on : 11 Apr, 2023, 5:17:28 PM
    Author     : Deeksha
--%>

<!DOCTYPE html>
<!DOCTYPE html>
<html>
<head>
    <title>Create Post</title>
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
    <h1>Add Post</h1>
    <form action="FileUpload" method="POST" enctype="multipart/form-data">
        <label for="title">Title:</label>
        <input type="text" id="title" name="title" placeholder="Enter title">
        <label for="content">Content:</label>
        <textarea id="content" name="content" placeholder="Enter content"></textarea>
        <label>Upload Your Photo:</label><br>
         Select File:<input type="file" name="img"  size='50'>
        <input type="submit" value="ADD">
    </form>
</body>
</html>

