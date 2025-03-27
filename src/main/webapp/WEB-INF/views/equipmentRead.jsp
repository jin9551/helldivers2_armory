<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="ko">
<head>
    <title>장비 상세 정보</title>
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

<div class="container">
    <a href="list">← 목록으로 돌아가기</a>
    <table class="read-table">
        <tbody>
        <!-- 장비 기본 정보: 첫 번째 요소로부터 출력 -->
        <c:if test="${not empty list}">
            <c:set var="main" value="${list[0]}" />
            <tr>
                <td colspan="4" style="text-align: center;">
                    <img src="<c:url value='${main.img_path}'/>" width="200" alt="장비 이미지"/>
                </td>
            </tr>
            <tr>
                <th colspan="4" style="text-align: center; font-size: 24px;">${main.name}</th>
            </tr>
            <tr>
                <td colspan="4"><strong>종류:</strong>
                    <c:choose>
                        <c:when test="${main.equip_type == 1}">주무기</c:when>
                        <c:when test="${main.equip_type == 2}">보조무기</c:when>
                        <c:when test="${main.equip_type == 3}">투척무기</c:when>
                        <c:when test="${main.equip_type == 4}">지원무기</c:when>
                        <c:when test="${main.equip_type == 5}">배낭</c:when>
                        <c:when test="${main.equip_type == 6}">차량</c:when>
                        <c:otherwise>기타</c:otherwise>
                    </c:choose>
                </td>
            </tr>
        </c:if>

        <!-- 기타 상세 정보는 반복 출력 -->
        <c:forEach var="equip" items="${list}">
            <!-- 탄종 -->
            <tr>
                <th class="tactical-highlight" rowspan="2">탄종: ${equip.proj_name}</th>
                <th class="tactical-highlight">기본 데미지</th>
                <th class="tactical-highlight">내구 데미지</th>
                <th class="tactical-highlight">장갑 관통력</th>
            </tr>
            <tr>
                <td>${equip.normal_dmg}</td>
                <td>${equip.durable_dmg}</td>
                <td>${equip.ap}</td> <%-- 관통력 강조 --%>
            </tr>

            <!-- 속성 -->
            <tr>
                <th class="tactical-highlight" rowspan="2">속성:
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
                </th>
                <th class="tactical-highlight">기본 데미지</th>
                <th class="tactical-highlight">내구 데미지</th>
                <th class="tactical-highlight">장갑 관통력</th>
            </tr>
            <tr>
                <td>${equip.effect_dmg}</td>
                <td>${equip.effect_durable_dmg}</td>
                <td>${equip.eap}</td>
            </tr>

            <!-- 비고 -->
            <c:if test="${not empty equip.note}">
                <tr>
                    <td colspan="4"><strong>비고:</strong> ${equip.note}</td>
                </tr>
            </c:if>
        </c:forEach>
        </tbody>
    </table>

    <br/>
    <a href="list">← 목록으로 돌아가기</a>
</div>

</body>
</html>
