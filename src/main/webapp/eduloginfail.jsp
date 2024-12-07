<!DOCTYPE html>
<html>
<head>
    <title>Educator Dashboard</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <style>
        /* General Styling */
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f3e5f5;  /* Pastel Lavender background */
            color: #333;
        }

        /* Sidebar Styling */
        .sidebar {
            width: 250px;
            height: 100vh;
            background-color: #e1bee7;  /* Pastel Lavender */
            position: fixed;
            top: 0;
            left: 0;
            transition: 0.3s ease;
            padding-top: 20px;
        }

        .sidebar.collapsed {
            width: 60px;
        }

        .sidebar img {
            width: 80%;
            height: auto;
            margin-bottom: 24px;
        }

        .sidebar nav ul {
            list-style-type: none;
            padding: 0;
        }

        .sidebar nav ul li {
            padding: 15px;
            text-align: left;
        }

        .sidebar nav ul li a {
            color: #5e35b1;  /* Darker Lavender */
            text-decoration: none;
            font-size: 18px;
            display: block;
            padding: 10px 20px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .sidebar nav ul li a:hover {
            background-color: #d1c4e9;  /* Light Lavender on hover */
        }

        /* Button to toggle sidebar */
        .toggle-btn {
            position: absolute;
            top: 10px;
            right: -40px;
            background-color: #e1bee7;  /* Pastel Lavender */
            color: #5e35b1;  /* Darker Lavender for text */
            border: none;
            font-size: 20px;
            padding: 10px;
            border-radius: 50%;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .toggle-btn:hover {
            background-color: #d1c4e9;  /* Light Lavender hover effect */
        }

        /* Content area styling */
        .content {
            margin-left: 250px;
            padding: 20px;
            transition: margin-left 0.3s ease;
        }

        .content.collapsed {
            margin-left: 60px;
        }

        /* Colorful Header */
        h1 {
            color: #7b1fa2;  /* Purple for header */
            font-size: 24px;
            text-align: center;
            margin-top: 30px;
        }

        /* Links and Buttons Styling */
        a {
            color: #7b1fa2;  /* Purple for links */
            text-decoration: none;
            transition: color 0.3s ease;
        }

        a:hover {
            color: #5e35b1;  /* Darker Purple on hover */
        }

        .button {
            padding: 10px 20px;
            border-radius: 5px;
            background-color: #7b1fa2;  /* Purple for buttons */
            color: white;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .button:hover {
            background-color: #5e35b1;  /* Darker Purple hover effect */
        }
    </style>
</head>
<body>
    <!-- Sidebar -->
    <div class="sidebar" id="sidebar">
        <div style="text-align: center; margin-bottom: 24px;">
        </div>
        <nav>
            <ul>
                <li><a href="viewallstud">View All Student Records</a></li>
                <li><a href="deletestud">Delete Student Record</a></li>
                <li><a href="viewallcourses">View All Courses</a></li> <!-- View All Courses -->
                <li><a href="addcourse">Add New Course</a></li> <!-- Add New Course -->
                <li><a href="assignstudents">Assign Students to Courses</a></li> <!-- Assign Students to Courses -->
                <li><a href="viewenrollments">View Student Enrollments</a></li> <!-- View Student Enrollments -->
                <li><a href="editcourse">Edit Course Details</a></li> <!-- Edit Course Details -->
                <li><a href="edulogout">Logout</a></li>
            </ul>
        </nav>
        <button class="toggle-btn" onclick="toggleSidebar()">&#9664;</button>
    </div>

    <!-- Content Section -->
    <div class="content">
        <h1>Welcome to the Educator Dashboard</h1>
        <!-- Additional content goes here -->
    </div>

    <script>
        function toggleSidebar() {
            const sidebar = document.getElementById("sidebar");
            const content = document.querySelector(".content");
            sidebar.classList.toggle("collapsed");
            content.classList.toggle("collapsed");
            document.querySelector(".toggle-btn").innerHTML = sidebar.classList.contains("collapsed") ? "&#9654;" : "&#9664;";
        }
    </script>
</body>
</html>
