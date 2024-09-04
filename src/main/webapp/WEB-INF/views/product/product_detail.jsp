<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   

<!DOCTYPE html>
<html>

	<head>
	     <meta charset="UTF-8">
	     <title>여기있댕</title>
		        
	  	<!-- 공통 layout: head.jsp -->
	  	<c:import url="/WEB-INF/views/layout/head.jsp" />
 		<link rel="stylesheet" type="text/css" href="<c:url value='/css/product_detail.css'/>" />
	</head>
	
	<body>
	<div class="all">

      <!-- 공통 layout: top.jsp -->
      <c:import url="/WEB-INF/views/layout/top.jsp" />
	     
	     
            <!-- 메인 -->
	     <div class="prd_wrap">
	     
		    <h1>${prd.prdName_kor}</h1>
		    <div class="prd_image"><img src="<c:url value='${prd.prdImg}'/>" /></div>
		     <div>${prd.prdCtgName}<div>
		    <h3>${prd.prdPrice}원</h3>
		    <h3><span>★ </span>${prd.prdRate}</h3>
		    <div>${prd.prdRateNum} 명 평가</div>

	    
	    <div class="rsv_btn"> 예약하기 </div>
       
             <%--    <a  href="<c:url value='/product/order'/>" />예약하기</a> --%>
              
       </div>
	    <!-- 메인 끝 -->
	    
	
	    <!-- 공통 layout: botton.jsp -->
	   <c:import url="/WEB-INF/views/layout/bottom.jsp" />
	
	</div>
	</body>
</html>