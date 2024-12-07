<!DOCTYPE html>
<html>
<head>
    <title>Student Login</title>
    <style>
        /* General body styling */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: url('https://blog.ifs.com/wp-content/uploads/2021/06/10321_50042-1.jpg') no-repeat center center fixed;
            background-size: cover;
        }

        /* Centered container */
        .form-container {
            background: rgba(255, 255, 255, 0.9);
            width: 400px;
            padding: 20px 40px;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            margin: 100px auto;
        }

        /* Form styling */
        h3 {
            font-size: 24px;
            color: #333;
            margin-bottom: 20px;
            text-align: center;
        }

        label {
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
            color: #555;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px;
        }

        input[type="submit"],
        input[type="reset"] {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }

        input[type="submit"] {
            background-color: #6a1b9a;
            color: white;
            margin-bottom: 10px;
        }

        input[type="submit"]:hover {
            background-color: #4a148c;
        }

        input[type="reset"] {
            background-color: #ccc;
            color: #333;
        }

        input[type="reset"]:hover {
            background-color: #bbb;
        }

        /* Media queries for responsiveness */
        @media (max-width: 500px) {
            .form-container {
                width: 90%;
                padding: 15px;
            }

            h3 {
                font-size: 20px;
            }
        }
    </style>
</head>
<body>
  <jsp:include page="navbar.jsp" />
    <!-- Main container -->
    <div class="form-container">
        <h3><u>Student Login</u></h3>
        <form method="post" action="/checkstudlogin">
            <label for="susername">Enter Username</label>
            <input type="text" id="susername" name="susername" required />

            <label for="spwd">Enter Password</label>
            <input type="password" id="spwd" name="spwd" required />

            <input type="submit" value="Login" />
            <input type="reset" value="Clear" />
        </form>
    </div>
</body>
</html>
