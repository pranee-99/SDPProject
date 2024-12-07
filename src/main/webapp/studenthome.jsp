<%@ page import="com.klef.jfsd.springboot.model.Student" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%
Student s = (Student) session.getAttribute("student");
if (s == null) {
    response.sendRedirect("studsessionfail");
    return;
}
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Home</title>
</head>
<body>
    <%@ include file="studentnavbar.jsp" %>
    <main>
    <h3><div class="welcome-message">Welcome, <%= s.getName() %>!</div></h3>
    </main>
</body>
</html>
