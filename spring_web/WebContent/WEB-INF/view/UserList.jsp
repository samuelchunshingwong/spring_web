<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>User Store Application</title>
</head>
<body>
<a href="/spring_web/welcome">Back</a>
<div align="center">
<table border="1" cellpadding="5">
<caption><h2>List of Users</h2></caption>
<tr>
<th>Name</th>
<th>Age</th>
<th>Email</th>
</tr>
<c:forEach var="user" items="${userList}">
<tr>
<td><c:out value="${user.username}" /></td>
<td><c:out value="${user.age}" /></td>
<td><c:out value="${user.email}" /></td>
</tr>
</c:forEach>
</table>
</div>
</body>
</html>