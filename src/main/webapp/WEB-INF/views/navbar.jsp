<%--
  Created by IntelliJ IDEA.
  User: JH
  Date: 2025-03-27
  Time: 오후 8:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<nav class="navbar">
    <div class="nav-container">
        <a href="<c:url value='/'/>" class="nav-logo">
            <img class="responsive-image" src="<c:url value='/img/main_logo.png'/>" alt="Helldivers 2">
            <span>Helldiver's Arsenal</span>
        </a>
        <button class="hamburger" onclick="toggleMenu()">☰</button>
        <ul class="nav-menu" id="navMenu">
            <li><a href="<c:url value='/'/>" class="nav-link">BTK계산기</a></li>
            <li><a href="<c:url value='/equipment/list'/>" class="nav-link">장비정보</a></li>
            <li><a href="<c:url value='/enemy/list'/>" class="nav-link">적정보</a></li>
        </ul>
    </div>
</nav>
<script>
    function toggleMenu() {
        const nav = document.getElementById("navMenu");
        nav.classList.toggle("show");
    }
</script>
</html>