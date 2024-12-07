<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Sign-Up Successful</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        body {
            background: url(https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3U3pgmfxobq5y55Gzuz63nKrdGLhIIU8ClQ&s) no-repeat center center fixed;
            background-size: cover;
        }
    </style>
</head>
<body class="bg-gray-100">

    <!-- Navbar at the top of the page -->
    <jsp:include page="navbar.jsp" />

    <!-- Signup Success Message Container -->
    <div class="flex items-center justify-center min-h-screen">
        <div class="bg-white bg-opacity-80 p-8 rounded-lg shadow-md w-full max-w-md text-center">
            <h1 class="text-2xl font-bold mb-6 text-green-600">Sign-Up Successful!</h1>
            
            <!-- Displaying the user's name -->
            <p class="text-gray-700 mb-6">
                Thank you, <strong>${name}</strong>, for registering. Your account has been successfully created.
            </p>
            
            <!-- Button to go to the homepage -->
            <a href="${pageContext.request.contextPath}/educatorlogin" class="w-full block bg-blue-600 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline hover:bg-blue-700 transition duration-300">
                Login Again With Your Credentials
            </a>
        </div>
    </div>

    <%@ include file="footer.jsp" %>
</body>
</html>
