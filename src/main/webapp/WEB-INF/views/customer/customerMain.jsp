<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>여기있댕 고객센터</title>
		<!--head 임포트  -->
  	<c:import url="/WEB-INF/views/layout/head.jsp" />
  	<link rel="stylesheet" type="text/css" href="<c:url value='/css/customer.css' />" />
  	<script src="<c:url value='/js/customer.js'/>"></script>
  	
	</head>
	<body>
	<div class="all">

    <!-- top 임포트 -->
    <c:import url="/WEB-INF/views/layout/top.jsp" />
		 <div class="customer">
        <main>
          <div class="contact-title">
            <h1>고객센터</h1>
            <h5>무엇이든 물어보세요</h5>
          </div>
          <section class="contact-section">
            <div class="contact-info">
              <img src="<c:url value='/image/phone.png' />" class="phone" alt="phone" />
              <h3 class="phoneNum">123-0012</h3>
              <div class="contact-details">
                <p class="contact-require">예약 및 취소 문의</p>
                <p class="contact-hours">오전 9시 ~ 새벽 3시</p>
                <button class="contact-button" onclick="location.href='<c:url value="/customer/board"/>'">문의 게시판</button>
              </div>
            </div>
          </section>

          <section class="faq-section">
            <h2>자주 묻는 질문</h2>
            <div class="faq-container">
              <div class="faq-categories" data-category="faq-categories">
                <button class="faqBtn" data-faqctgid="01">예약</button>
                <button class="faqBtn" data-faqctgid="02">결제</button>
                <button class="faqBtn" data-faqctgid="03">환불</button>
                <button class="faqBtn" data-faqctgid="04">기타</button>
              </div>
              <div class="faq-list" id="faq-list">
                <!-- 질문 리스트 -->
              </div>
              <div class="faq-answer" id="faq-answer">
                <!-- 답변 표시 영역 -->
              </div>
            </div>
            <div class="policy">
              <p class="policyName">환불 및 취소 정책</p>
              <p>
              <hr />
                예약/결제 진행 당시 안내된 취소/환불 규정에 따라 처리되며,
                취소수수료가 발생할 경우 취소수수료를 차감한 금액으로 환불
                처리됩니다. 일부 숙소에 한해 취소가 가능한 시점이나 앱/웹에서
                취소가 불가할 수 있으니 이 경우에는 고객센터로 요청해 주시길
                바랍니다.
              </p>
            </div>
          </section>
        </main>
      </div>
     </div>
    <!-- 메인 끝 -->

    <!-- bottom 임포트 -->
    <c:import url="/WEB-INF/views/layout/bottom.jsp" />
		
	</body>
</html>