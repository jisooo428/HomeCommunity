<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginConfirm</title>
</head>
<body>
<table border="1">
	<tr height="50" align="center" >
		<td width="350" colspan="2">로그인 성공!</td>
	</tr>
	<tr height="50" align="center">
		<td> 
			<input type="button" onclick="location.href='getPostList.do?id=${member.id}'" value="목록"/>	
		</td>
	</tr>
</table>
</body>
</html>