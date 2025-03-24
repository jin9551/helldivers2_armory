<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="ko">
<head>
    <title>장비 상세 정보</title>
    <link rel="stylesheet" href="<c:url value='/css/main_theme.css'/>">
</head>
<body>

<!-- 네비게이션 바 -->
<nav class="navbar">
    <div class="nav-container">
        <a href="<c:url value='/'/>" class="nav-logo">
            <img class="responsive-image" src="<c:url value='/img/main_logo.png'/>" alt="Helldivers 2"> 헬다2
        </a>
        <ul class="nav-menu">
            <li><a href="<c:url value='/'/>" class="nav-link">Home</a></li>
            <li><a href="<c:url value='/equipment/list'/>" class="nav-link">장비 정보</a></li>
            <li><a href="<c:url value='/enemy/list'/>" class="nav-link">적 정보</a></li>
        </ul>
    </div>
</nav>

<div class="container">
    <c:forEach var="equip" items="${list}">
        <h2>${equip.name}</h2>
        <img src="<c:url value='${equip.img_path}'/>" width="150" alt="장비 이미지"/>

        <p><strong>종류:</strong>
            <c:choose>
                <c:when test="${equip.equip_type == 1}">주무기</c:when>
                <c:when test="${equip.equip_type == 2}">보조무기</c:when>
                <c:when test="${equip.equip_type == 3}">투척무기</c:when>
                <c:when test="${equip.equip_type == 4}">지원무기</c:when>
                <c:when test="${equip.equip_type == 5}">배낭</c:when>
                <c:when test="${equip.equip_type == 6}">차량</c:when>
                <c:otherwise>기타</c:otherwise>
            </c:choose>
        </p>

        <p><strong>탄종:</strong> ${equip.proj_name}</p>
        <p><strong>기본 데미지:</strong> ${equip.normal_dmg}</p>
        <p><strong>내구 데미지:</strong> ${equip.durable_dmg}</p>
        <p><strong>장갑 관통력:</strong> ${equip.ap}</p>

        <p><strong>속성:</strong>
            <c:choose>
                <c:when test="${equip.effect_type == 0}">없음</c:when>
                <c:when test="${equip.effect_type == 1}">화염</c:when>
                <c:when test="${equip.effect_type == 2}">산성</c:when>
                <c:when test="${equip.effect_type == 3}">아크</c:when>
                <c:when test="${equip.effect_type == 4}">가스</c:when>
                <c:when test="${equip.effect_type == 5}">출혈</c:when>
                <c:when test="${equip.effect_type == 6}">파편</c:when>
                <c:when test="${equip.effect_type == 7}">근접</c:when>
                <c:when test="${equip.effect_type == 8}">폭발</c:when>
                <c:otherwise>기타</c:otherwise>
            </c:choose>
        </p>

        <p><strong>속성 데미지:</strong> ${equip.effect_dmg}</p>
        <p><strong>속성 내구 데미지:</strong> ${equip.effect_durable_dmg}</p>
        <p><strong>속성 관통력:</strong> ${equip.eap}</p>

        <c:if test="${not empty equip.note}">
            <p><strong>비고:</strong> ${equip.note}</p>
        </c:if>
    </c:forEach>

    <br/>
    <a href="list">← 목록으로 돌아가기</a>
</div>

</body>
</html>
