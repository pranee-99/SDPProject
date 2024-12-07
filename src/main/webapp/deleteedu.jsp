<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Educator By ID</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
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
<body>
    <%@ include file="adminnavbar.jsp" %>
	<div class="p-4 sm:ml-64">
    <h2 align="center"><b>Delete Educators</b></h2>
    
    <table>
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>GENDER</th>
            <th>DATE OF BIRTH</th>
            <th>DEPARTMENT</th>
            <th>SALARY</th>
            <th>LOCATION</th>
            <th>EMAIL</th>
            <th>CONTACT</th>
            <th>STATUS</th>
            <th>DELETE</th>
            </tr>
        <c:forEach items="${edulist}" var="edu">
            <tr>
                <td><c:out value="${edu.id}"/></td>
                <td><c:out value="${edu.name}"/></td>
                <td><c:out value="${edu.gender}"/></td>
                <td><c:out value="${edu.dateofbirth}"/></td>
                <td><c:out value="${edu.department}"/></td>
                <td><c:out value="${edu.salary}"/></td>
                <td><c:out value="${edu.location}"/></td>
                <td><c:out value="${edu.email}"/></td>
                <td><c:out value="${edu.contact}"/></td>
                <td><c:out value="${edu.status}"/></td>
                <td> <a href='<c:url value="deleteedu?id=${edu.id}"></c:url>'>Delete</a></td>
            </tr>
        </c:forEach>
    </table>
	</div>
	<div class="p-4 sm:ml-64">
    <%@ include file="footer.jsp" %>
    </div>
</body>
</html>
