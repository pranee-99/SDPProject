<!DOCTYPE html>
<html>
<head>
    <title>Student Dashboard</title>
    <style>
        /* General body styling */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: #f5f5f5;
        }

        /* Sidebar styling */
        .sidebar {
            position: fixed;
            width: 250px;
            height: 100%;
            background: #f4f4f4;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.1);
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 20px 0;
        }

        .sidebar img {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            margin-bottom: 15px;
        }

        .sidebar a {
            text-decoration: none;
            color: #333;
            font-size: 16px;
            margin: 15px 0;
        }

        .sidebar a:hover {
            color: #6a1b9a;
            font-weight: bold;
        }

        /* Main content */
        .main-content {
            margin-left: 250px;
            padding: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .main-content h1 {
            font-size: 24px;
            color: #333;
        }

        /* Back button styling */
        .back-button {
            position: absolute;
            top: 10px;
            left: 10px;
            background: #6a1b9a;
            color: white;
            border: none;
            border-radius: 50%;
            padding: 10px 15px;
            cursor: pointer;
        }

        .back-button:hover {
            background: #4a148c;
        }
    </style>
</head>
<body>
    <!-- Sidebar -->
    <div class="sidebar">
        <img src="images/logo.png" alt="Logo">
        <h3>Knowvana</h3>
        <a href="home.jsp">Home</a>
        <a href="myprofile.jsp">My Profile</a>
        <a href="updateprofile.jsp">Update Profile</a>
        <a href="logout.jsp">Logout</a>
    </div>

    <!-- Main content -->
    <div class="main-content">
        <h1>Welcome, <%= session.getAttribute("username") %>!</h1>
    </div>

    <!-- Back Button -->
    <button class="back-button" onclick="window.history.back();">&larr;</button>
</body>
</html>
