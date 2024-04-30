<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ModifyPost</title>

<!-- bootstrap css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">


</head>

<body>
	<nav class="navbar navbar-light bg-light">
		<a class="navbar-brand">HomeTown Community</a>

		<ul class="nav justify-content-end">
			<li class="nav-item"><a class="nav-link" href="#">
					${member.id }님 </a></li>
			<li class="nav-item">
				<button class="btn btn-outline-success" type="button"
					onclick="location.href='login.do'">로그아웃</button>
			</li>
		</ul>

	</nav>
	<br>


	<form class="was-validated container"
		action="modifyPostProc.do?seq=${post.seq}"
		method="post">
		<div class="form-group">
			<label>Category</label> <select class="custom-select" name="category"
				id="category" required>
				<c:forEach var="category" items="${clist}">
					<option value="${category.seq}"
						<c:if test ="${cate.seq} == ${category.seq}">selected="selected"</c:if>>${category.category}</option>
				</c:forEach>
				<!-- 				<option value="">Category</option>
				<option value="1">추천 맛집/카페</option>
				<option value="2">추천 장소</option>
				<option value="3">소모임/동아리</option>
				<option value="4">동네정보공유</option>
				<option value="5">아나바다</option> -->
			</select>
			<div class="invalid-feedback">카테고리를 선택해주세요!</div>
		</div>

		<div class="form-group">
			<label>Title</label> <input class="form-control" type="text"
				name="title" value="${post.title }" required>
			<div class="invalid-feedback">제목을 입력해주세요!</div>
		</div>

		<div class="form-group">
			<label>Writer</label> <input class="form-control" type="text"
				value="${post.writer }" readonly>
		</div>

		<div class="form-group">
			<label>Content</label>
			<textarea class="form-control is-invalid" id="content" name="content"
				rows="10" placeholder="여기에 내용을 입력하세요." required>${post.content }</textarea>
			<div class="invalid-feedback">내용을 입력해주세요!</div>
		</div>

		<div class="form-group">
			<button type="submit" class="btn btn-primary">수정</button>
			<button type="button" class="btn btn-primary"
				onclick="location.href='getPostList.do'">목록</button>
		</div>
	</form>

	<%-- </head>
<body>
<form action="modifyPostProc.do?seq=${post.seq}"" method="post">
<table border="1">
	<tr height="50" align="center">
		<td width="150">카테고리</td>
		<td width="250">
			<select name="category"  >
				<option value="1">추천 맛집/카페</option>
				<option value="2">추천 장소</option>
				<option value="3">소모임/동아리</option>
				<option value="4">동네정보공유</option>
				<option value="5">아나바다</option>
			</select>
		</td>
	</tr>
	<tr height="50" align="center">	
		<td width="150">제목</td>
		<td width="250"><input type="text" value="${post.title }" name="title"></td>
	</tr>
	<tr height="50" align="center">
		<td width="150">글쓴이</td>
		<td width="250">${post.writer }</td>
	</tr>
	<tr height="50" align="center">
		<td width="150">내용</td>
		<td width="250"><input type="text" value="${post.content }" name="content"></td>
	</tr>
	<tr height="50" align="center">
		<td colspan="2">
			<input type="submit" value="게시글  수정하기"/>
				<input type="button" value="목록(수정취소)"
				onclick="location.href='getPostList.do'"/>
		</td>
	</tr>
</table>
</form>

 --%>
</body>
</html>