<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Map Application</title>
</head>
<body>
<a href="/spring_web/welcome">Back</a>
<div align="center">
<table border="1" cellpadding="5">
<caption><h2>List of Map</h2></caption>
<tr>
<th>Map id</th>
<th>Map name</th>
</tr>
<c:forEach var="map" items="${mapList}">
<tr>
<td><c:out value="${map.map_id}" /></td>
<td><a href="/spring_web/map?map_id=<c:out value="${map.map_id}" />"><c:out value="${map.name}" /></a></td>

</tr>
</c:forEach>
</table>
</div>
</body>
</html>