<%@ page language="java" contentType="text/html; charset=UTF-8"
      pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>
      
<head>
      <meta charset="UTF-8">
      <title>여기있댕</title>
      
      <!-- 공통 layout: head.jsp -->
      <c:import url="/WEB-INF/views/layout/head.jsp" />
      
      <link rel="stylesheet" type="text/css" href="<c:url value='/css/prdDetailView.css'/>" />
      
</head>
      
<body>
<div class="all">
      
      <!-- 공통 layout: top.jsp -->
      <c:import url="/WEB-INF/views/layout/top.jsp" />
      
      
      <!-- 메인 -->
      <div class="prd_wrap">

             <div class="img_wrap">
                  <div class="prd_main_image"><img src="<c:url value='${prd.prdImg}'/>" /></div>
                  <div class="prd_small_img_wrap"> 
	                  <div>
	                   <img src="<c:url value='${prd.prdImg}'/>" />
	                   </div>
	                   <div>
                         <img src="<c:url value='${prd.prdImg}'/>" />
                         </div>
                           <div>
                         <img src="<c:url value='${prd.prdImg}'/>" />
                         </div>
                           <div>
                         <img src="<c:url value='${prd.prdImg}'/>" />
                         </div>
                  </div>
            
             </div>
             
            <div class="prd_info_wrap">
            <div>${prd.prdName_kor}</div>
	    <div class="prd_title">${prd.prdName_kor}</div>
	        <div>
	        <span>★${prd.prdRate}</span>
	        <span>${prd.prdRateNum} 명 평가</span>
	        </div>
		    <div class="prd_price">${prd.prdPrice}원</div>
		             
            </div>
                  
            <div class="btn_wrap">
		      <button class="reservation_btn">
		    <a  href="<c:url value='/product/orderForm/${prd.prdNo}'/>" >예약하기</a>
		      </button>
	      </div>
	      
	      <div class="info_wrap">
	    
	    <br/><br/><br/><br/>
	      숙소 이용 정보
<br/><br/><br/><br/>
기본정보
체크인: 16:00 | 체크아웃: 11:00

22시 이후 체크인 시 호텔 프론트 문의

무료 Wi-Fi

전 객실 금연

무료주차(1박 1차량 무료/초과 시 차량 박당 1만원 비용 발생)

호텔 내부주차장 만차시 외부주차장 이용
<br/><br/><br/><br/><br/><br/><br/><br/><br/>
	      </div>
      </div>
      
      
       <!-- 메인 끝 -->
      
      <!-- 공통 layout: botton.jsp -->
      <c:import url="/WEB-INF/views/layout/bottom.jsp"/>

            
</div>
</body>
</html>