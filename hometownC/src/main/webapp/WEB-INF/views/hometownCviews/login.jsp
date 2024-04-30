<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="background_color" content="#563d7c">

<title>로그인</title>

<!-- Custom styles for this template -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/signin.css">

<!-- bootstrap css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">


</head>

<body class="text-center">

	<form class="form-signin" action="loginProc.do" method="post">

		<img class="mb-4"
			src="${pageContext.request.contextPath}/resources/img/hometownIcon.jpg"
			alt="" width="72" height="72">
		<h1 class="h3 mb-3 font-weight-normal">HT COMMUNITY</h1>
	
		<label for="inputEmail" class="sr-only">Id</label> <input type="id"
			name="id" class="form-control" placeholder="Id" required autofocus>
		<label for="inputPassword" class="sr-only">Password</label> <input
			type="password" name="password" class="form-control"
			placeholder="Password" required>
		<button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>
		<hr>
		<div class="text-center">
			<a style='color: grey; text-align: right; text-decoration: underline'
				type="button" href="memberJoin.do">회원가입</a>
		</div>
		<p class="mt-5 mb-3 text-muted">&copy; 2023</p>

	</form>

</body>
</html>