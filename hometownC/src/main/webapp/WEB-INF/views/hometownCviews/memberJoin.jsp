<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberJoin</title>

<!-- Custom styles for this template -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/signin.css">

<!-- bootstrap css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">

<script src="http://code.jquery.com/jquery-latest.min.js"></script>

<style>
.modal-sheet .modal-dialog {
	width: 380px;
	transition: bottom .75s ease-in-out;
}

.modal-sheet .modal-footer {
	padding-bottom: 2rem;
}

.hr {
	height: 1px;
	background-color: #81DAF5
}

.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}

.b-example-divider {
	width: 100%;
	height: 3rem;
	background-color: rgba(0, 0, 0, .1);
	border: solid rgba(0, 0, 0, .15);
	border-width: 1px 0;
	box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em
		rgba(0, 0, 0, .15);
}

.b-example-vr {
	flex-shrink: 0;
	width: 1.5rem;
	height: 100vh;
}

.bi {
	vertical-align: -.125em;
	fill: currentColor;
}

.nav-scroller {
	position: relative;
	z-index: 2;
	height: 2.75rem;
	overflow-y: hidden;
}

.nav-scroller .nav {
	display: flex;
	flex-wrap: nowrap;
	padding-bottom: 1rem;
	margin-top: -1px;
	overflow-x: auto;
	text-align: center;
	white-space: nowrap;
	-webkit-overflow-scrolling: touch;
}

.btn-bd-primary { -
	-bd-violet-bg: #712cf9; -
	-bd-violet-rgb: 112.520718, 44.062154, 249.437846; -
	-bs-btn-font-weight: 600; -
	-bs-btn-color: var(- -bs-white); -
	-bs-btn-bg: var(- -bd-violet-bg); -
	-bs-btn-border-color: var(- -bd-violet-bg); -
	-bs-btn-hover-color: var(- -bs-white); -
	-bs-btn-hover-bg: #6528e0; -
	-bs-btn-hover-border-color: #6528e0; -
	-bs-btn-focus-shadow-rgb: var(- -bd-violet-rgb); -
	-bs-btn-active-color: var(- -bs-btn-hover-color); -
	-bs-btn-active-bg: #5a23c8; -
	-bs-btn-active-border-color: #5a23c8;
}

.bd-mode-toggle {
	z-index: 1500;
}
</style>

</head>
<body>
<body class="text-center">

	<form class="form-signin" action="memberJoinProc.do" method="post">

		<img class="mb-4"
			src="${pageContext.request.contextPath}/resources/img/hometownIcon.jpg"
			alt="" width="72" height="72">

		<h2>Create account</h2>
		<p class="lead">Please create an account to use the HT COMMUNITY.</p>
		<hr>
		<div>
			<div class="text-left">
				<label for="id" class="form-label">Id</label>
				<!-- 				<div class="input-group mb-3">
					<input type="text" class="form-control" id="id" name="id"
						placeholder="" value="" required>
					<div class="invalid-feedback">아이디를 입력하세요!</div>

					<input class="btn btn-primary" type="button" id="checkId"
						value="ID CHECK" />

				</div> -->
				<input type="text" class="form-control" id="id" name="id"
					placeholder="" value="" required>
				<div class="invalid-feedback">아이디를 입력하세요!</div>

				<label for="username" class="form-label">Username</label> <input
					type="text" class="form-control" id="username" name="username"
					placeholder="Username" required>
				<div class="invalid-feedback">이름을 입력하세요!</div>


				<label for="password" class="form-label">Password</label> <input
					style="margin-bottom: 0px" type="password" class="form-control"
					id="password" name="password">
				<div class="invalid-feedback">비밀번호를 입력하세요!</div>

				<label for="address" class="form-label">Address</label> <input
					type="text" class="form-control" id="address" name="address"
					placeholder="서울특별시 강동구 성내동" required>
				<div class="invalid-feedback">주소를 입력해주세요!</div>

				<label for="phone" class="form-label">Phone</label> <input
					type="text" class="form-control" id="phone" name="phone"
					placeholder="01012345678" required>
				<div class="invalid-feedback">전화번호를 입력해주세요!</div>
				<hr>
				<button class="btn btn-lg btn-primary btn-block" type="submit">Join!</button>
			</div>

		</div>
	</form>

	<%-- <body>

	<div class="container">
		<main>
			<div class="text-center"
				style='padding-top: 50px; padding-bottm: 25px'>
				<img class="mb-4"
					src="${pageContext.request.contextPath}/resources/img/hometownIcon.jpg"
					alt="" width="72" height="72">
				<h2>Create account</h2>
				<p class="lead">Please create an account to use the HT
					COMMUNITY.</p>
			</div>
			<hr>
			<div class="col-md-12 col-lg-12">
				<form class="needs-validation" novalidate>
					<div class="row g-3">
						<label for="id" class="form-label">ID</label> <input type="text"
							class="form-control" id="id" name="id" placeholder="" value=""
							required>
						<div class="invalid-feedback">ID를 입력하세요!</div>

						<div class="col-12">
							<label for="username" class="form-label">Username</label>
							<div class="input-group has-validation">
								<span class="input-group-text">@</span> <input type="text"
									class="form-control" id="username" placeholder="Username"
									required>
								<div class="invalid-feedback">Your username is required.</div>
							</div>
						</div>

						<div class="col-12">
							<label for="email" class="form-label">Email <span
								class="text-body-secondary">(Optional)</span></label> <input
								type="email" class="form-control" id="email"
								placeholder="you@example.com">
							<div class="invalid-feedback">Please enter a valid email
								address for shipping updates.</div>
						</div>

						<div class="col-12">
							<label for="address" class="form-label">Address</label> <input
								type="text" class="form-control" id="address"
								placeholder="1234 Main St" required>
							<div class="invalid-feedback">Please enter your shipping
								address.</div>
						</div>

						<div class="col-12">
							<label for="address2" class="form-label">Address 2 <span
								class="text-body-secondary">(Optional)</span></label> <input type="text"
								class="form-control" id="address2"
								placeholder="Apartment or suite">
						</div>
					</div>
				</form>
			</div>
		</main>
	</div> --%>

	<!-- <form action="memberJoinProc.do" method="post">
<table border="1">
	<tr height="50" align="center">
		<td width="150">아이디</td>
		<td width="250"><input type="text" name="id"></td>
	</tr>
	<tr height="50" align="center">
		<td width="150">이름</td>
		<td width="250"><input type="text" name="username"></td>
	</tr>
	<tr height="50" align="center">
		<td width="150">비밀번호</td>
		<td width="250"><input type="text" name="password"></td>
	</tr>
		<tr height="50" align="center">
		<td width="150">전화번호</td>
		<td width="250"><input type="text" name="phone"></td>
	</tr>
	<tr height="50" align="center">
		<td colspan="2">
			<input type="submit" value="등록"/>
			<input type="reset" value="초기화"/>	
		</td>
	</tr>
</table>
</form> -->

</body>
</html>