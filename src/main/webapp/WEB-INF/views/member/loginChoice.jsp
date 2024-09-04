<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>로그인 / 회원가입</title>
<!-- 공통 layout: head.jsp -->
<c:import url="/WEB-INF/views/layout/head.jsp" />
<link rel="stylesheet" type="text/css"  href="<c:url value='/css/login_choice.css'/>">

</head>

<body>
	<div class="all">
		<!-- 공통 layout: top.jsp -->
            <c:import url="/WEB-INF/views/layout/top.jsp" />
            
            
		<!-- 로그인 선택 -->

		<div class="loginPage">
			<div class="boxWrap">
				<div class="buttonBox">
					<div id="normal">
						<a href="/member/normalLoginForm">일반 회원 로그인 &nbsp;></a>
					</div>
				</div>
				<div class="buttonBox">
					<div id="business">
						<a href="/member/businessLoginForm"> 사업자 회원 로그인 &nbsp;></a>
					</div>
				</div>
			</div>

			<div class="boxWrap">
				<div class="buttonBox">
					<div id="join">
						<a href="/member/joinForm">일반 회원가입 &nbsp;></a>
					</div>
				</div>
				<div class="buttonBox">
					<div id="changeInfo">
						<a href="/member/businessJoinForm">사업자 회원가입 &nbsp;></a>
					</div>
				</div>
			</div>
		</div>

		<!-- 로그인 선택 끝 -->

		<!-- 공통 layout: botton.jsp -->
	   	<c:import url="/WEB-INF/views/layout/bottom.jsp" > </c:import>
	</div>
</body>
</html>