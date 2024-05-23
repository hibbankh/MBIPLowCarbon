<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="entity.User" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MBIP Carbon Consumption</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            text-align: center;
            background-image: url('file:///C:/Users/User/Documents/workspace-spring-tool-suite-4-4.5.0.RELEASE/MBIPProject/src/image/homepage.jpg');
            position: relative;
            margin: 0;
        }

        header {
            text-align: center;
            height: 130px;
        }

        header img {
            width: 100%;
            max-height: 100%;
            object-fit: cover;
        }

        main {
            padding: 20px;
        }

        footer {
            background-color: white;
            color: black;
            padding: 10px;
            position: fixed;
            bottom: 0;
            width: 100%;
            display: flex;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            align-items: center;
        }

        footer img {
            width: 100px;
            margin-left: 470px;
            margin-top:20px
        }

        footer p {
            margin-right: 10px;
        }

        .upload-buttons-container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 500px; 
        }

        .upload-button {
            padding: 20px 40px;
            font-size: 18px;
            text-decoration: none;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .water-button {
            background-color: #007BFF; 
        }

        .electricity-button {
            background-color: #28a745; 
            margin-left: 20px;
        }

        .recycle-button {
            background-color: #dc3545; 
            margin-left: 20px; 
        }

        .upload-button:hover {
            opacity: 0.9; 
        }


        .logout-button {
            padding: 10px 20px;
            font-size: 18px;
            text-decoration: none;
            color: white;
            background-color: #6c757d;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 20px;
        }

        .logout-button:hover {
            background-color: #495057;
        }
    </style>
</head>
<body>
<%User user=(User)request.getAttribute("user"); %>
    <header>
        <img src="file:///C:/Users/User/Documents/workspace-spring-tool-suite-4-4.5.0.RELEASE/MBIPProject/src/image/Untitled.jpg" alt="Header Image">
    </header>

    <main>
        <h1>Welcome to MBIP Carbon Consumption Tracker</h1>
        <h4>User: <%=user.getFullName() %></h4>
        <a href="<%= request.getContextPath() %>/changePassword" class="upload-button electricity-button">Change Password</a>
      
        <div class="upload-buttons-container">
            <a href="<%= request.getContextPath() %>/addWaterData" class="upload-button water-button">Upload Water Bill</a>
            <a href="<%= request.getContextPath() %>/addElectricityData" class="upload-button electricity-button">Upload Electricity Bill</a>
            <a href="<%= request.getContextPath() %>/addRecycleData" class="upload-button recycle-button">Upload Recycle Bill</a>
        </div>
        
        <a href="<%= request.getContextPath() %>/homePage1" class="logout-button">Logout</a>
    </main>

    <footer>
        <img src="file:///C:/Users/User/Documents/workspace-spring-tool-suite-4-4.5.0.RELEASE/MBIPProject/src/image/footer.jpg" alt="Footer Image">
        &copy; 2023 MBIP SYSTEM

        
    </footer>
</body>
</html>