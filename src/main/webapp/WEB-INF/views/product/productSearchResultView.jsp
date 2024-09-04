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
      <link rel="stylesheet" type="text/css" href="<c:url value='/css/prdSearchResultView.css'/>" />
      <script src="<c:url value='/js/list.js'/>"></script>
</head>
      
<body>
      <div class="all">
      
      <!-- 공통 layout: top.jsp -->
      <c:import url="/WEB-INF/views/layout/top.jsp" />
      
      
      <div class="filter-container">
            <div class="filter">
                  <div class='title'>필터</div>
                  <hr />
                  <input type='checkbox' id='reser' name='reser'> </input>예약불가 제외<br />
                  <hr />

                  <p class='category'>숙소 유형</p>
                  <input type='checkbox' id='hotel' name='hotel'></input>호텔<br /> <input
                        type='checkbox' id='guest' name='guest'></input>게스트 하우스<br /> <input
                        type='checkbox' id='resort' name='resort'></input>리조트<br /> <input
                        type='checkbox' id='camping' name='camping'></input>캠핑장<br />
                  <hr />

                  <p class='category'>동반 가능 반려동물</p>
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

                  <p class='category'>보유시설</p>
                  <input type='checkbox' id='field' name='field'></input>운동장<br /> <input
                        type='checkbox' id='pool' name='pool'></input>수영장<br /> <input
                        type='checkbox' id='shower_room' name='shower_room'></input>반려동물
                  목욕시설<br /> <input type='checkbox' id='shop' name='shop'></input>반려동물
                  용품점<br />
            </div>


            <div class="list-container">
           
  <c:if test="${not empty prdList}">
  
   <h3> '${searchHotel}' 검색 결과 ${resultCount}개 </h3>
            <br/>
                  <div class="sort">
                        <button id="sort-button">정렬 옵션</button>
                        <div id="sort-menu" class="sort-menu">
                              <button id="sort-latest">최신순</button>
                              <button id="sort-name">이름순</button>
                              <button id="sort-rating">평점순</button>
                              <button id="sort-price">가격순</button>
                        </div>
                  </div>
             
  
        <c:forEach items="${prdList}" var="p" >
                          <a href="<c:url value='/product/detailViewProduct/${p.prdNo}' />">
                        <div class="list" data-type="${p.prdCtgName}" data-price = ${p.prdPrice}>
                  
                        <div class="img_wrap">
                              <img src="<c:url value='${p.prdImg}'/>" />
                        </div>
                        <div class="text_wrap">
                              <div class='category'>${p.prdCtgName}</div>
                              <br />
                              <div class='name'>${p.prdName_kor}</div>
                              <br />
                              <div class='address'>${p.prdAddress}</div>
                              <br />
                              <div class='mark'>★${p.prdRate}</div>
                              <br />
                              <div class='number'>${p.prdRateNum}명 평가</div>
                              <br />
                              <div class='price'>${p.prdPrice} 원</div>
                        </div>
                  
               
                  </div>
   </a>
                </c:forEach>
                
                
              
    </c:if>
    
    <c:if test="${empty prdList}">
    <br/>
        <h4>검색 결과가 없습니다.</h4>
    </c:if>
    
              
                   
                  </div>
                  
            </div>
      </div>
      
      
      
    
       


      
            <!-- 공통 layout: botton.jsp -->
      <c:import url="/WEB-INF/views/layout/bottom.jsp"/>
      
      
            
</div>
</body>
</html>