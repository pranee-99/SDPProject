<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Sign Up Options</title>
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

    <!-- Signup options container -->
    <div class="flex items-center justify-center min-h-screen">
        <div class="bg-white bg-opacity-80 p-8 rounded-lg shadow-md w-full max-w-md text-center">
            <h1 class="text-2xl font-bold mb-6">Choose Your Sign Up Type</h1>
            
            <!-- Signup options -->
            <div class="space-y-4">
                
                <!-- Educator Signup -->
                <a href="${pageContext.request.contextPath}/educator/signup" class="w-full block bg-green-600 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline hover:bg-green-700 transition duration-300">
                    Educator Sign Up
                </a>
                
                <!-- Student Signup -->
                <a href="${pageContext.request.contextPath}/student/signup" class="w-full block bg-purple-600 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline hover:bg-purple-700 transition duration-300">
                    Student Sign Up
                </a>
            </div>

            <div class="mt-6 text-center">
                <p class="text-gray-700">Already have an account? <a href="${pageContext.request.contextPath}/studentlogin" class="text-purple-600 underline">Log in</a></p>
            </div>
        </div>
    </div>
    
    <%@ include file="footer.jsp" %>
</body>
</html>
