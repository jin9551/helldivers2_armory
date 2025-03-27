<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <title>적 상세 정보</title>
    <link rel="stylesheet" href="<c:url value='/css/main_theme.css'/>">
    <link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@500;700&display=swap" rel="stylesheet">
</head>
<body>

<!-- 네비게이션 바 -->
<%@ include file="/WEB-INF/views/navbar.jsp" %>


<!-- 적 상세 정보 -->
<div class="container">
    <div style="text-align: right">
        <a href="list" class="btn-small">📋 목록</a>
    </div>
    <c:if test="${not empty list}">
        <c:set var="main" value="${list[0]}"/>
        <table class="read-table">
            <tr>
                <td colspan="4" style="text-align: center;">
                    <img src="<c:url value='${main.img_path}'/>" width="200" alt="적 이미지"/>
                </td>
            </tr>
            <tr>
                <th colspan="4" style="text-align: center; font-size: 24px;">${main.name}</th>
            </tr>
            <tr>
                <td colspan="4">
                    <strong>종족:</strong> ${main.e_race} &nbsp;&nbsp;
                    <strong>타입:</strong>
                    <c:choose>
                        <c:when test="${main.e_type == 1}">소형</c:when>
                        <c:when test="${main.e_type == 2}">중형</c:when>
                        <c:when test="${main.e_type == 3}">대형</c:when>
                        <c:otherwise>기타</c:otherwise>
                    </c:choose>
                </td>
            </tr>
        </table>
    </c:if>

    <br/>

    <!-- 파츠 정보 반복 -->
    <c:forEach var="enemy" items="${list}">
        <table class="read-table">
            <tr class="tactical-highlight">
                <th class="tactical-highlight" colspan="4">${enemy.part_name}</th>
            </tr>
            <tr>
                <c:if test="${not empty enemy.img_1 && not empty enemy.img_2}">
                    <td colspan="2"><img src="<c:url value='${enemy.img_1}'/>" width="200" alt="적 이미지"/></td>
                    <td colspan="2"><img src="<c:url value='${enemy.img_2}'/>" width="200" alt="적 이미지"/></td>
                </c:if>
                <c:if test="${not empty enemy.img_1 && empty enemy.img_2}">
                    <td colspan="4"><img src="<c:url value='${enemy.img_1}'/>" width="200" alt="적 이미지"/></td>
                </c:if>
            </tr>
            <tr class="tactical-highlight">
                <th class="tactical-highlight" >체력</th>
                <th class="tactical-highlight">장갑</th>
                <th class="tactical-highlight">내구력</th>
                <th class="tactical-highlight">총체력 영향력</th>
            </tr>
            <tr>
                <td>${enemy.health}</td>
                <td>${enemy.ap}</td>
                <td>${enemy.durable}%</td>
                <c:choose>
                    <c:when test="${enemy.part_name == '총체력'}">
                        <td>--</td>
                    </c:when>
                    <c:when test="${enemy.part_name != '총체력'}">
                         <td>${enemy.main_per}%</td>
                    </c:when>
                </c:choose>
            </tr>
            <tr class="tactical-highlight">
                <th class="tactical-highlight">출혈 여부</th>
                <th class="tactical-highlight">치명 여부</th>
                <th class="tactical-highlight">폭발 저항력</th>
                <th class="tactical-highlight"></th>
            </tr>
            <tr>
                <td>
                <span class="status-icon ${enemy.bleed == '1' ? 'yes' : 'no'}">
                        ${enemy.bleed == '1' ? '✔' : '✖'}
                </span>
                </td>
                <td>
                <span class="status-icon ${enemy.fatal == '1' ? 'yes' : 'no'}">
                        ${enemy.fatal == '1' ? '✔' : '✖'}
                </span>
                </td>
                <td>${enemy.ex_dr}%</td>
                <td></td>
            </tr>
        </table>
        <br/>
    </c:forEach>
    <br/>
    <div style="text-align: right">
        <a href="list" class="btn-small">📋 목록</a>
    </div>
</div>

</body>
</html>
