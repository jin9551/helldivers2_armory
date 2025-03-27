<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="ko">
<head>
    <title>적 목록</title>
    <link rel="stylesheet" href="<c:url value='/css/main_theme.css'/>">
    <link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@500;700&display=swap" rel="stylesheet">
</head>
<body>

<!-- 네비게이션 바 -->
<nav class="navbar">
    <div class="nav-container">
        <a href="<c:url value='/'/>" class="nav-logo">
            <img class="responsive-image" src="<c:url value='/img/main_logo.png'/>" alt="Helldivers 2">
            <span>Helldiver's Arsenal</span>
        </a>
        <ul class="nav-menu">
            <li><a href="<c:url value='/'/>" class="nav-link">Home</a></li>
            <li><a href="<c:url value='/equipment/list'/>" class="nav-link">장비정보</a></li>
            <li><a href="<c:url value='/enemy/list'/>" class="nav-link">적정보</a></li>
        </ul>
    </div>
</nav>

<div class="search-bar container">
    <form action="<c:url value='/enemy/list'/>" method="get">
        <!-- 적 종족 -->
        <label for="e_race">적 종족:</label>
        <select name="e_race" id="e_race">
            <option value="">전체</option>
            <option value="테르미니드" ${param.e_race == '테르미니드' ? 'selected' : ''}>테르미니드</option>
            <option value="오토마톤" ${param.e_race == '오토마톤' ? 'selected' : ''}>오토마톤</option>
            <option value="일루미닛" ${param.e_race == '일루미닛' ? 'selected' : ''}>일루미닛</option>
        </select>

        <!-- 적 크기 -->
        <label for="e_type">적 크기:</label>
        <select name="e_type" id="e_type">
            <option value="">전체</option>
            <option value="1" ${param.e_type == '1' ? 'selected' : ''}>소형</option>
            <option value="2" ${param.e_type == '2' ? 'selected' : ''}>중형</option>
            <option value="3" ${param.e_type == '3' ? 'selected' : ''}>대형</option>
        </select>

        <!-- 적 이름 -->
        <label for="name">적 이름:</label>
        <input type="text" name="name" id="name" value="${param.name}" placeholder="예: 차저"/>

        <!-- 검색 버튼 -->
        <button type="submit">검색</button>
    </form>
</div>

<!-- 적 목록 -->
<div class="container">
    <h2>적 목록 (총 <c:out value="${count}"/>종)</h2>

    <table>
        <thead>
        <tr class="list-header">
            <th>번호</th>
            <th>이미지</th>
            <th>이름</th>
            <th>종족</th>
            <th>타입</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="enemy" items="${list}">
            <tr class="list-row">
                <td style="text-align: center">${enemy.e_id}</td>
                <td class="image-cell">
                    <a href="read?e_id=${enemy.e_id}">
                        <img src="<c:url value='${enemy.img_path}'/>" alt="적 이미지"/>
                    </a>
                </td>
                <td><a href="read?e_id=${enemy.e_id}">${enemy.name}</a></td>
                <td style="text-align: center">${enemy.e_race}</td>
                <td style="text-align: center">
                    <c:choose>
                        <c:when test="${enemy.e_type == 1}">소형</c:when>
                        <c:when test="${enemy.e_type == 2}">중형</c:when>
                        <c:when test="${enemy.e_type == 3}">대형</c:when>
                        <c:otherwise>기타</c:otherwise>
                    </c:choose>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>
