<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>Helldivers 2 BTK 계산기</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="<c:url value='/css/main_theme.css'/>">
	<link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@500;700&display=swap" rel="stylesheet">
</head>
<body>

<%@ include file="/WEB-INF/views/navbar.jsp" %>

<div class="container">
	<h2>BTK 계산 결과</h2>

	<c:if test="${not empty resultList}">
		<table class="read-table">
			<thead>
			<tr>
				<th>적 이름</th>
				<th>부위</th>
				<th>필요한 타수</th>
				<th>처치 가능 여부</th>
			</tr>
			</thead>
			<tbody>
			<c:forEach var="res" items="${resultList}">
				<tr>
					<td>${res.enemyName}</td>
					<td>${res.partName}</td>
					<td>${res.shotsNeeded}</td>
					<td>
                            <span class="status-icon ${res.killable ? 'yes' : 'no'}">
									${res.killable ? '✔' : '✖'}
							</span>
					</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
	</c:if>

	<br/>
	<a href="<c:url value='/equipment/list'/>" class="btn list-btn">
		<span class="icon">📦</span> 장비 목록
	</a>
	<a href="<c:url value='/enemy/list'/>" class="btn list-btn">
		<span class="icon">👾</span> 적 목록
	</a>
</div>

</body>
</html>
