<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Home</title>
</head>
<body>
<%@ include file="adminnavbar.jsp" %>
<div class="p-4 sm:ml-64">
<img src="https://t4.ftcdn.net/jpg/06/05/80/77/360_F_605807730_PnCelSene9RBsuwaUmKBtr4JaeXIT9wI.jpg" 
                 alt="A person learning online with a laptop" class="w-full h-96 object-cover">
       Total Educators=<c:out value="${eduscount}"></c:out><br/>
       Total Students=<c:out value="${stuscount}"></c:out>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>