<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- Custom styles for this template -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/signin.css">

<!-- bootstrap css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
</head>
<body>
<body class="text-center">

	<form class="form-signin" action="editMemberProc.do?id=${member.id }" method="post">

		<img class="mb-4"
			src="${pageContext.request.contextPath}/resources/img/hometownIcon.jpg"
			alt="" width="72" height="72">

		<h2>Edit Profile</h2>
		<hr>
		<div>
			<div class="text-left">
				<label for="id" class="form-label">Id</label> <input type="text"
					class="form-control" id="id" name="id" placeholder=""
					value="${member.id }" disabled>
				<div class="invalid-feedback">아이디를 입력하세요!</div>

				<label for="username" class="form-label">Username</label> <input
					type="text" class="form-control" id="username" name="username"
					placeholder="Username" value="${member.username }" >
				<div class="invalid-feedback">이름을 입력하세요!</div>


				<label for="password" class="form-label">Password</label> <input
					style="margin-bottom: 0px" type="password" class="form-control"
					id="password" name="password" value="${member.password }">
				<div class="invalid-feedback">비밀번호를 입력하세요!</div>

				<label for="address" class="form-label">Address</label> <input
					type="text" class="form-control" id="address" name="address"
					placeholder="서울특별시 강동구 성내동" value="${member.address }" >
				<div class="invalid-feedback">주소를 입력해주세요!</div>

				<label for="phone" class="form-label">Phone</label> <input
					type="text" class="form-control" id="phone" name="phone"
					placeholder="01012345678" value="${member.phone }" >
				<div class="invalid-feedback">전화번호를 입력해주세요!</div>
				<hr>
				<button class="btn btn-lg btn-primary btn-block" type="submit">Edit!</button>
			</div>

		</div>
	</form>

</body>
</html>