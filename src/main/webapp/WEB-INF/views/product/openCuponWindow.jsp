<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" type="image/png" href="#" />
<link rel="stylesheet" type="text/css" href="../css/coupon.css" />
<script src="jquery-3.7.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {

	});
</script>
</head>
<body>
	<div class="container">
		<h1>사용 가능한 쿠폰</h1>
		<div class="coupon-list">
			<div class="coupon">
				<h2>신규회원 전용!</h2>
				<h2>10% 할인 쿠폰</h2>
				<p>모든 상품에 10% 할인이 적용됩니다.</p>
				<p class="expiry">유효 기간: 2024-12-31</p>
				<button class="apply-coupon" name = "new">쿠폰 적용</button>
			</div>
			<div class="coupon">
				<h2>프로모션 쿠폰</h2>
				<p>숙박기간 중 주차장 이용 비용이 무료로 적용됩니다.</p>
				<p class="expiry">유효 기간: 2024-12-30</p>
				<button class="apply-coupon" name = "promotion">쿠폰 적용</button>
			</div>
			<div class="coupon">
				<h2>100만원 이상 이용 쿠폰</h2>
				<p>100만원 이상 결제시 3% 할인이 적용됩니다.</p>
				<p class="expiry">유효 기간: 2024-09-30</p>
				<button class="apply-coupon" name = "highprice">쿠폰 적용</button>
			</div>
		</div>
	</div>
</body>
</html>