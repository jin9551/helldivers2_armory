<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="<c:url value='/css/main_theme.css'/>">
	<title>Helldivers 2 Arsenal</title>
</head>
<body>
<!-- 네비게이션 바 -->
<nav class="navbar">
	<div class="nav-container">
		<a href="<c:url value='/'/>" class="nav-logo"><img class="responsive-image" src="<c:url value='/img/main_logo.png'/>" alt="Helldivers 2"> 헬다2</a>
		<ul class="nav-menu">
			<li><a href="<c:url value='/'/>" class="nav-link">Home</a></li>
			<li><a href="<c:url value='/equipment/list'/>" class="nav-link">장비 정보</a></li>
			<li><a href="<c:url value='/enemy/list'/>" class="nav-link">적 정보</a></li>
<%--			<li><a href="/enemies" class="nav-link">BTK 계산기</a></li>--%>
		</ul>
	</div>
</nav>

<div class="container">
	<h1>Helldivers 2 게시판</h1>
	<form action="/post" method="post">
		<input type="text" name="title" class="input-field" placeholder="제목을 입력하세요" required>
		<textarea name="content" class="input-field" placeholder="내용을 입력하세요" required></textarea>
		<button type="submit" class="btn">게시하기</button>
	</form>
</div>

<div class="container">
	<h2>게시글 목록</h2>
	<table border="1">
		<thead>
		<tr>
			<th>제목</th>
			<th>작성자</th>
			<th>날짜</th>
		</tr>
		</thead>
		<tbody>
		<c:forEach var="post" items="${posts}">
			<tr>
				<td><a href="/post/${post.id}">${post.title}</a></td>
				<td>${post.author}</td>
				<td>${post.date}</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
</div>
</body>
</html>

