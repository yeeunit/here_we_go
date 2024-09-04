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

				<!-- 메인 -->
		<form action="${pageContext.request.contextPath}/product/insertOrder" method="post">
    <div class='container'>
        <div class="left-container">
            <div class="left">
                <p class='main'>예약확인 및 결제</p>
            </div>
            <div class="left">
                <p class='title'>예약자 정보 기입</p>
                성명 : <input type="text" id="ordReceiver" name="ordReceiver" size="20"><br />
                휴대전화 : <input type="text" id="ordRcvPhone" name="ordRcvPhone" size="20"><br />
                주차장 이용 :
                <input type='checkbox' id='y' name='ordPark' value="Y">Y&nbsp;
                <input type='checkbox' id='N' name='ordPark' value="N">N<br />
                동반 반려동물 :
                <input type='checkbox' id='s_dog' name='petctgId' value="1">소형견&nbsp;
                <input type='checkbox' id='b_dog' name='petctgId' value="2">대형견&nbsp;
                <input type='checkbox' id='cat' name='petctgId' value="3">고양이&nbsp;
                <input type='checkbox' id='bird' name='petctgId' value="4">조류&nbsp;
                <input type='checkbox' id='reptile' name='petctgId' value="5">파충류&nbsp;
                <input type='checkbox' id='etc' name='petctgId' value="6">기타
            </div>

            <div class="left">
                <p class='title'>쿠폰 사용</p>
                <input type='checkbox' id='coupon' name='coupon'>쿠폰사용
                <button id="check_coupon" onClick="openCuponWindow()">쿠폰조회</button>
                <br />
                <p class='title'>결제 수단</p>
                <input type='checkbox' id='kakao' name='payctgId' value="1">
                    <img src="<c:url value='/image/kakao.png'/>" width='80' height='50' />&nbsp;
                
                <input type='checkbox'  id='Toss' name='payctgId' value="2">
                    <img src="<c:url value='/image/Toss.png'/>" width='80' height='50' />&nbsp;
                
                <input type='checkbox'  id='naverpay' name='payctgId' value="4">
                    <img src="<c:url value='/image/naverpay.png'/>" width='80' height='50' />
                <br />
                <input type='checkbox'  id='payco' name='payctgId' value="5">
                    <img src="<c:url value='/image/PAYCO.png'/>" width='80' height='50' />&nbsp;
                
                <input type='checkbox'  id='phone' name='payctgId' value="6">휴대폰결제&nbsp;
                <input type='checkbox'  id='credit' name='payctgId' value="3">신용/체크 카드
            </div>
            <input type="hidden" name="memId" value="${memVo.memId}">
            <input type="hidden" name="prdNo" value="${prdVo.prdNo}">
            <input type="hidden" name="ordPrice" value="${prdVo.prdPrice}">
            <input type="hidden" name="ordStart" value="2024.06.14">
            <input type="hidden" name="ordEnd" value="2024.06.15">
            <input type="hidden" name="ordNo" value="2"><br />
        </div>

        <div class="right-container">
            <img src="<c:url value='${prdVo.prdImg}'/>" width='200' height='230' />
            <div class="right">
                <div class='title'>${prdVo.prdName_kor}</div>
                <div class='title'>객실</div>
                <h1 class='info'>일반 객실</h1>
                <h1 class='title'>일정</h1>
                <h1 class='info'>06.14금-06.15토 (1박) | 인원2</h1>
                <hr />
                <div class='title'>결제 정보</div>
                <div class='info'>1박 당 <fmt:formatNumber value= "${prdVo.prdPrice}" pattern="#,###" />원</div>
                <h1 class='title'>총 결제 금액</h1>
                <h1 class='info'><fmt:formatNumber value= "${prdVo.prdPrice}" pattern="#,###" />원</h1>
                <input type='checkbox' id='clause' name='clause'>약관 동의</input>
                <button class="clause_details" id="clause_details" onClick="openClauseWindow()">전문확인</button>
            </div>
            <button class="payment" id="payment" type="submit">결제하기</button>
        </div>
    </div>
</form>

				<script>
					document.getElementById('payment').addEventListener('click',
						function () {
							var clauseCheckbox = document.getElementById('clause');
							if (!clauseCheckbox.checked) {
								alert('약관에 동의하셔야 예약이 진행됩니다');
							} else {
								alert('예약 성공');
							}
						});
					function openCuponWindow() {
						window.open("/product/cuponWindow", "newWin", "width=800, height=600, left=300, top=50");
					}

					function openClauseWindow() {
						let createdWin = window.open("/product/clauseWindow", "newWin", "width=800, height=600, left=300, top=50");
					}
				</script>
			</div>
			<!-- 메인 끝 -->


			<!-- 공통 layout: botton.jsp -->
			<c:import url="/WEB-INF/views/layout/bottom.jsp"> </c:import>



			</div>
		</body>

		</html>