<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>회원가입</title>
    <c:import url="/WEB-INF/views/layout/head.jsp" />
    <link rel="stylesheet" type="text/css"  href="<c:url value='/css/business_login.css'/>">
    <script src="<c:url value='/js/jquery-3.7.1.min.js'/>"></script>
    <script src="<c:url value='/js/business_login.js'/>"></script>
  </head>

  <body>
    <div class="all">
      <!-- 공통 layout: top.jsp -->
            <c:import url="/WEB-INF/views/layout/top.jsp" />

      <div class="BusinessLoginPage">
        <h1 id="BSinfo">사업자 회원 로그인</h1>
        <div class="BSBox">
          <form id="businessForm">
          
            <div class="input">
              <label for="username">아이디</label>
              <input type="text" id="comId" name="comId" placeholder="아이디"/>
            </div>

            <div class="input">
              <label for="password">비밀번호</label>
              <input type="password" id="comPwd" name="comPwd" placeholder="비밀번호"/>
            </div>

            <div class="input">
              <label for="BusinessNum">사업자 번호</label>
              <input type="text" id="comNo" name="comNo" placeholder="xxx-xx-xxxxx"/>
            </div>
            
            <button type="submit" class="BusinessLoginBtn" id="BusinessLoginBtn">
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