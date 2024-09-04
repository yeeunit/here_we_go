<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원 정보 변경</title>

    <!-- 공통 layout: head.jsp -->
<c:import url="/WEB-INF/views/layout/head.jsp" />
<link rel="stylesheet" type="text/css"  href="<c:url value='/css/change_info.css'/>">
<script src="<c:url value='/js/jquery-3.7.1.min.js'/>"></script>
<script src="<c:url value='/js/change_info.js'/>"></script>
</head>
<body>

<div class="all">

      <!-- 공통 layout: top.jsp -->
            <c:import url="/WEB-INF/views/layout/top.jsp" />
      
    <div class="updateBox">
        <h2>회원 정보 변경</h2>
        <form id="infoBox" name="infoBox" method="post" action="/member/changeInfo">
            <div class="input">
                <label for="username">이름</label>
                <input type="text" id="memId" name="memId" placeholder="이름">
            </div>
            <div class="input">
                <label for="email">이메일</label>
                <input type="email" id="memEmail" name="memEmail" placeholder="이메일">
            </div>
            <div class="input">
                <label for="phone">휴대폰 번호</label>
                <input type="text" id="memHp" name="memHp" placeholder="휴대폰 번호">
            </div>
            <div class="input">
                <label for="password">비밀번호</label>
                <input type="password" id="memPwd" name="memPwd" placeholder="비밀번호">
            </div>
            <div class="input">
                <label for="confirmPassword">비밀번호 확인</label>
                <input type="password" id="confirmPassword" name="confirmPassword" placeholder="비밀번호 확인">
            </div>
            <button type="submit"class="changeInfoBtn" id="changeInfoBtn">정보 변경</button>
        </form>
    </div>
    
     
      <!-- 공통 layout: botton.jsp -->
	   	<c:import url="/WEB-INF/views/layout/bottom.jsp" > </c:import>
</body>
</html>