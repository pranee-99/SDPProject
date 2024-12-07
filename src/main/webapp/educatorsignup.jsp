<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Educator Sign Up</title>
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

    <!-- Educator Signup Form -->
    <div class="flex items-center justify-center min-h-screen">
        <div class="bg-white bg-opacity-80 p-8 rounded-lg shadow-md w-full max-w-lg">
            <h1 class="text-2xl font-bold mb-6">Educator Sign Up</h1>

            <!-- Signup form with fields matching the Educator model -->
            <form action="edusignup" method="post">
                <!-- Name -->
                <div class="mb-4">
                    <label class="block text-gray-700 text-sm font-bold mb-2" for="name">Full Name</label>
                    <input class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" 
                           id="ename" name="ename" type="text" placeholder="Full Name" required>
                </div>
                
                <!-- Gender -->
                <div class="mb-4">
                    <label class="block text-gray-700 text-sm font-bold mb-2" for="gender">Gender</label>
                    <select class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" 
                            id="egender" name="egender" required>
                        <option value="" disabled selected>Select Gender</option>
                        <option value="Male">Male</option>
                        <option value="Female">Female</option>
                        <option value="Other">Other</option>
                    </select>
                </div>

                <!-- Date of Birth -->
                <div class="mb-4">
                    <label class="block text-gray-700 text-sm font-bold mb-2" for="dateofbirth">Date of Birth</label>
                    <input class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" 
                           id="edob" name="edob" type="date" required>
                </div>

                <!-- Department -->
                <div class="mb-4">
                    <label class="block text-gray-700 text-sm font-bold mb-2" for="department">Department</label>
                    <input class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" 
                           id="department" name="edept" type="text" placeholder="Department" required>
                </div>

                <!-- Salary -->
                <div class="mb-4">
                    <label class="block text-gray-700 text-sm font-bold mb-2" for="salary">Salary</label>
                    <input class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" 
                           id="salary" name="esalary" type="number" step="0.01" placeholder="Salary" required>
                </div>

                <!-- Email -->
                <div class="mb-4">
                    <label class="block text-gray-700 text-sm font-bold mb-2" for="email">Email</label>
                    <input class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" 
                           id="email" name="eemail" type="email" placeholder="Email" required>
                </div>

                <!-- Password -->
                <div class="mb-4">
                    <label class="block text-gray-700 text-sm font-bold mb-2" for="password">Password</label>
                    <input class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" 
                           id="password" name="epwd" type="password" placeholder="Password" required>
                </div>

                <!-- Location -->
                <div class="mb-4">
                    <label class="block text-gray-700 text-sm font-bold mb-2" for="location">Location</label>
                    <input class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" 
                           id="location" name="elocation" type="text" placeholder="Location" required>
                </div>

                <!-- Contact -->
                <div class="mb-4">
                    <label class="block text-gray-700 text-sm font-bold mb-2" for="contact">Contact Number</label>
                    <input class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" 
                           id="contact" name="econtact" type="text" placeholder="Contact Number" required>
                </div>


                <!-- Submit Button -->
                <div class="mb-4">
                    <button class="w-full bg-purple-600 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline" type="submit">
                        Sign Up
                    </button>
                </div>
            </form>

            <div class="mt-6 text-center">
                <p class="text-gray-700">Already have an account? <a href="${pageContext.request.contextPath}/educatorlogin" class="text-purple-600 underline">Log in</a></p>
            </div>
        </div>
    </div>

    <%@ include file="footer.jsp" %>
</body>
</html>
