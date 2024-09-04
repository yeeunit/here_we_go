<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
		<!DOCTYPE html>
		<html>

		<head>
			<meta charset="UTF-8">
			<title>여기있댕</title>

			<!-- 공통 layout: head.jsp -->
			<c:import url="/WEB-INF/views/layout/head.jsp" />
			<link rel="stylesheet" type="text/css" href="<c:url value='/css/reservation.css'/>" />

		</head>

		<body>
			<div class="all">

				<!-- 공통 layout: top.jsp -->
				<c:import url="/WEB-INF/views/layout/top.jsp" />
				    <h1>주문이 성공적으로 완료되었습니다!</h1>
    				<p>감사합니다. 곧 주문 확인 이메일을 보내드리겠습니다.</p>
				
				
			</div>
			<!-- 메인 끝 -->


			<!-- 공통 layout: botton.jsp -->
			<c:import url="/WEB-INF/views/layout/bottom.jsp"> </c:import>



			</div>
		</body>

		</html>