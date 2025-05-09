<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Courses</title>
</head>
<body>
<h2>Available Courses</h2>

<table border="1" cellpadding="10">
    <tr>
        <th>Course Name</th>
        <th>Action</th>
    </tr>
    <c:forEach var="course" items="${courses}">
        <tr>
            <td>${course}</td>
            <td>
                <form action="${pageContext.request.contextPath}/courses/register" method="post" style="margin:0;">
                    <input type="hidden" name="course" value="${course}" />
                    <button type="submit">Register</button>
                </form>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>