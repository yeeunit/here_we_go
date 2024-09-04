<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠폰함</title>
<!-- 공통 layout: head.jsp -->
<c:import url="/WEB-INF/views/layout/head.jsp" />
<link rel="stylesheet" type="text/css" href="<c:url value='/css/couponBox.css'/>" />
</head>
<body>

	<!-- 공통 layout: top.jsp -->
	<c:import url="/WEB-INF/views/layout/top.jsp" />

     <div class="couponBox">
        <div class="coupon">
            <div class="couponTitle">10% 할인 쿠폰</div>
            <button class="couponBtn" onclick="useCoupon(this)">사용하기</button>
        </div>
        <div class="coupon">
            <div class="couponTitle">5% 할인 쿠폰</div>
            <button class="couponBtn" onclick="useCoupon(this)">사용하기</button>
        </div>
        <div class="coupon">
            <div class="couponTitle">5,000원 할인 쿠폰</div>
            <button class="couponBtn" onclick="useCoupon(this)">사용하기</button>
        </div>
    </div>
    
	<!-- 공통 layout: botton.jsp -->
	<c:import url="/WEB-INF/views/layout/bottom.jsp" />
</body>
</html>