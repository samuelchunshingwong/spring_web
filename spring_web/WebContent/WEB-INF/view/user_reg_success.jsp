<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>user reg success</title>
</head>
<body>
<a href="/SpringMVCFormValidation/user_reg">Back</a>
		<table>

			<tr>
				<td>User Name</td>
				<td>${user.username}</td>
			</tr>

			<tr>
				<td>Email</td>
				<td>${user.email}</td>
			</tr>

			<tr>
				<td>Age</td>
				<td>${user.age}</td>
			</tr>

			
		</table>

</body>
</html>