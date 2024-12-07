<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Students</title>
    <style>
        

        table {
            width: 100%;
            max-width: 1200px;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #ffffff; /* White background for the table */
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        table, th, td {
            border: 2px solid #35424a; /* Match border color with navbar */
        }

        th, td {
            padding: 10px;
            text-align: center;
        }

        th {
            background-color: #35424a; /* Match navbar background */
            color: #ffffff; /* White text for header */
        }

        tr:nth-child(even) {
            background-color: #f2f2f2; /* Light gray for even rows */
        }

        tr:nth-child(odd) {
            background-color: #ffffff; /* White for odd rows */
        }

        tr:hover {
            background-color: rgba(255, 255, 255, 0.2); /* Light hover effect */
            transition: background 0.3s ease;
        }

        td {
            word-wrap: break-word;
            color: #35424a; /* Match text color in table cells with navbar */
        }

        @media (max-width: 768px) {
            table, th, td {
                font-size: 12px;
            }

            th, td {
                padding: 5px;
            }
        }
    </style>
</head>
<body>
   
        
          
      
      	<div class="p-4 sm:ml-64">
            <h2 align="center"><b>View All Students</b></h2>
            <table>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Gender</th>
                    <th>Date of Birth</th>
                    <th>Department</th>
                    <th>CGPA</th>
                    <th>Email</th>
                    <th>Password</th>
                    <th>Location</th>
                    <th>Contact</th>
                    <th>Status</th>
                </tr>
                <c:forEach items="${stulist}" var="student">
                    <tr>
                        <td><c:out value="${student.id}"/></td>
                        <td><c:out value="${student.name}"/></td>
                        <td><c:out value="${student.gender}"/></td>
                        <td><c:out value="${student.dateofbirth}"/></td>
                        <td><c:out value="${student.department}"/></td>
                        <td><c:out value="${student.cgpa}"/></td>
                        <td><c:out value="${student.email}"/></td>
                        <td><c:out value="${student.password}"/></td>
                        <td><c:out value="${student.location}"/></td>
                        <td><c:out value="${student.contact}"/></td>
                        <td><c:out value="${student.status}"/></td>
                    </tr>
                </c:forEach>
            </table>
        </div>
</body>
</html>
