<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
	<head>
	     <meta charset="UTF-8">
	     <title>여기있댕</title>
		        
	  	<!-- 공통 layout: head.jsp -->
	  	<c:import url="/WEB-INF/views/layout/head.jsp" />
	  	<link rel="stylesheet" type="text/css" href="<c:url value='/css/list.css'/>" />
 		<script src="<c:url value='/js/list.js'/>"></script>
 		
	</head>
	<body>
	<div class="all">

            <!-- 공통 layout: top.jsp -->
            <c:import url="/WEB-INF/views/layout/top.jsp" />
	     
            <!-- 메인 -->
            <div class="filter-container">
		<div class="filter">
			<div class='title'>필터</div>
			<hr />

			<p class='category'>숙소 유형</p>
				<input type='checkbox' id='hotel' name='hotel'></input>호텔<br /> 
				<input type='checkbox' id='motel' name='motel'></input>모텔<br />
				<input type='checkbox' id='resort' name='resort'></input>리조트<br /> 
				<input type='checkbox' id='pension' name='pension'></input>펜션<br />
				<input type='checkbox' id='poolvilla' name='poolvilla'></input>풀빌라<br />
				<input type='checkbox' id='camping' name='camping'></input>캠핑<br />
				<input type='checkbox' id='glamping' name='glamping'></input>글램핑<br />
				<input type='checkbox' id='guesthouse' name='guesthouse'></input>게스트하우스<br />
			<hr />

			<p class='category'>동반 금지 반려동물</p>
			<input type='checkbox' id='s_dog' name='s_dog'></input>소형견<br /> <input
				type='checkbox' id='b_dog' name='b_dog'></input>대형견<br /> <input
				type='checkbox' id='cat' name='cat'></input>고양이<br /> <input
				type='checkbox' id='bird' name='bird'></input>조류<br /> <input
				type='checkbox' id='reptile' name='reptile'></input>파충류<br /> <input
				type='checkbox' id='etc' name='etc'></input>기타
			<hr />

			<p class='category'>가격대</p>
			<input type='checkbox' id='0' name='0'></input>~100,000원<br /> <input
				type='checkbox' id='1' name='1'></input>100,001~200,000원<br /> <input
				type='checkbox' id='2' name='2'></input>200,001~300,000원<br /> <input
				type='checkbox' id='3' name='3'></input>300,001~400,000원<br /> <input
				type='checkbox' id='4' name='4'></input>400,001~500,000원<br /> <input
				type='checkbox' id='5' name='5'></input>500,001원~<br />
			<hr />
		</div>


		<div class="list-container">
					<div class="sort">
				<button id="sort-button">정렬 옵션</button>
				<div id="sort-menu" class="sort-menu">
					<button id="sort-name">이름순</button>
					<button id="sort-rating">평점순</button>
					<button id="sort-price">가격순</button>
				</div>
			</div>
		
				
				<c:forEach items="${ prdList }" var="prd">
				<div class="list" data-type="${prd.prdCtgId}" data-price = "${prd.prdPrice}" data-pet = "${prd.petctgId}">
					<div>
						<img src="<c:url value='${prd.prdImg}'/>" width='100' height='120' />
					</div>
					<div>
					<div class='category'>${prd.prdCtgId}</div>
					<br />
					<div class='name'><a href="<c:url value='/product/detailViewProduct/${prd.prdNo}'/>" />${prd.prdName_kor}</a></div>
					<br />
					<div class='address'>${prd.prdAddress}</div>
					<br />
					<div class='mark'>★${prd.prdRate}</div>
					<br />
					<div class='number'>${prd.prdRateNum}</div>
					<br />
					<div class="price">
			           <fmt:formatNumber value= "${prd.prdPrice}" pattern="#,###" />원
			        </div>
					</div>
				</div>
				</c:forEach>	
		</div>
	</div>
	    <!-- 메인 끝 -->
	<script>
	$(document).ready(function(){
		
	    $(".list .category").each(function() {
	        var category = $(this).text().trim();
	        var categoryText;
	        
	        switch(category) {
	        case "1":
	            categoryText = "호텔";
	            break;
	        case "2":
	            categoryText = "모텔";
	            break;
	        case "3":
	            categoryText = "리조트";
	            break;
	        case "4":
	            categoryText = "펜션";
	            break;
	        case "5":
	            categoryText = "풀빌라";
	            break;
	        case "6":
	            categoryText = "캠핑";
	            break;
	        case "7":
	            categoryText = "글램핑";
	            break;
	        case "8":
	            categoryText = "게스트하우스";
	            break;
	        default:
	            categoryText = category;
	    }
	        
	        $(this).text(categoryText);
	    });
	});
</script>
	
	    <!-- 공통 layout: botton.jsp -->
	   	<c:import url="/WEB-INF/views/layout/bottom.jsp" > </c:import>
	
	  
	
	  </div>
	</body>
</html>