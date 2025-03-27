<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="ko">
<head>
    <title>장비 목록</title>
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
<!-- 검색바 -->
<div class="search-bar container">
    <form action="<c:url value='/equipment/list'/>" method="get">
        <!-- 장비 종류 -->
        <label for="equip_type">장비 종류:</label>
        <select name="equip_type" id="equip_type">
            <option value="">전체</option>
            <option value="1" ${param.equip_type == '1' ? 'selected' : ''}>주무기</option>
            <option value="2" ${param.equip_type == '2' ? 'selected' : ''}>보조무기</option>
            <option value="3" ${param.equip_type == '3' ? 'selected' : ''}>투척무기</option>
            <option value="4" ${param.equip_type == '4' ? 'selected' : ''}>지원무기</option>
            <option value="5" ${param.equip_type == '5' ? 'selected' : ''}>배낭</option>
            <option value="6" ${param.equip_type == '6' ? 'selected' : ''}>차량</option>
        </select>

        <!-- 장비명 -->
        <label for="name">장비명:</label>
        <input type="text" name="name" id="name" value="${param.name}" placeholder="예: MG-43"/>

        <!-- 장갑 관통력 -->
        <label for="ap">장갑 관통력:</label>
        <select name="ap" id="ap">
            <option value="">전체</option>
            <option value="0" ${param.ap == '0' ? 'selected' : ''}>무장갑</option>
            <option value="2" ${param.ap == '2' ? 'selected' : ''}>경장갑</option>
            <option value="3" ${param.ap == '3' ? 'selected' : ''}>일반 장갑</option>
            <option value="4" ${param.ap == '4' ? 'selected' : ''}>중장갑</option>
            <option value="5" ${param.ap == '5' ? 'selected' : ''}>대전차</option>
        </select>

        <!-- 검색 버튼 -->
        <button type="submit">검색</button>
    </form>
</div>
<!-- 장비 목록 -->
<div class="container">
    <h2>장비 목록 (총 <c:out value="${count}"/>개)</h2>

    <table>
        <thead>
        <tr class="list-header">
            <th>번호</th>
            <th>이미지</th>
            <th>이름</th>
            <th>종류</th>
<%--            <th>상세</th>--%>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="equip" items="${list}">
            <tr class="list-row">
                <td style="text-align: center">${equip.equip_id}</td>
                <td class="image-cell"><a href="read?equip_id=${equip.equip_id}"><img src="<c:url value='${equip.img_path}'/>" alt="이미지"/></a></td>
                <td><a href="read?equip_id=${equip.equip_id}">${equip.name}</a></td>
                <td style="text-align: center">
                    <c:choose>
                        <c:when test="${equip.equip_type == 1}">주무기</c:when>
                        <c:when test="${equip.equip_type == 2}">보조무기</c:when>
                        <c:when test="${equip.equip_type == 3}">투척무기</c:when>
                        <c:when test="${equip.equip_type == 4}">지원무기</c:when>
                        <c:when test="${equip.equip_type == 5}">배낭</c:when>
                        <c:when test="${equip.equip_type == 6}">차량</c:when>
                        <c:otherwise>기타</c:otherwise>
                    </c:choose>
                </td>
<%--                <td><a href="read?equip_id=${equip.equip_id}">보기</a></td>--%>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>
