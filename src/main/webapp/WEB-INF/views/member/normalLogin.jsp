<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>일반회원 로그인</title>
<!-- 공통 layout: head.jsp -->
<c:import url="/WEB-INF/views/layout/head.jsp" />
<link rel="stylesheet" type="text/css"  href="<c:url value='/css/normal_login.css'/>">
<script src="<c:url value='/js/jquery-3.7.1.min.js'/>"></script>
<script src="<c:url value='/js/login.js'/>"></script>
  </head>

  <body>
    <div class="all">
      <!-- 공통 layout: top.jsp -->
            <c:import url="/WEB-INF/views/layout/top.jsp" />

      <div class="NormalLoginPage">
        <h1 id="NLinfo">일반 회원 로그인</h1>
        <div class="NLBox">
          <form id="normalForm">
          
            <div class="input">
              <label for="username">아이디</label>
              <input type="text" id="memId" name="memId" placeholder="아이디" />
            </div>

            <div class="input">
              <label for="password">비밀번호</label>
              <input type="password" id="memPwd" name="memPwd" placeholder="비밀번호"/>
            </div>
            
            <button type="submit" class="normalLoginButton" id="normalLoginButton">
              로그인
            </button>
            
          </form>
        </div>
      </div>

      <!-- 공통 layout: botton.jsp -->
	   	<c:import url="/WEB-INF/views/layout/bottom.jsp" > </c:import>
    </div>
  </body>
</html>