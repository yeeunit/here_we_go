<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>여기있댕 이벤트</title>
		<!--head 임포트  -->
  	<c:import url="/WEB-INF/views/layout/head.jsp" />
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/event.css' />" />
  	<script src="<c:url value='/js/event.js'/>"></script>

  </head>
  <body>
    <div class="All">
      
    <!-- top 임포트 -->
    <c:import url="/WEB-INF/views/layout/top.jsp" />


      <div class="event-container">
        <div class="event-header">
          <h1 class="event-header-title">이벤트</h1>
          <div class="topicBtns">
            <button class="topicBtn" data-topic="all" onclick="filterEvents('all')">전체</button>
            <button class="topicBtn" data-topic="1" onclick="filterEvents('1')">쿠폰</button>
            <button class="topicBtn" data-topic="2" onclick="filterEvents('2')">할인</button>
            <button class="topicBtn" data-topic="3" onclick="filterEvents('3')">기타</button>
          </div>
        </div>
        <div class="event-list">
          <c:forEach var="event" items="${eventList}">
            <a href="<c:url value='/event/detailViewEvent/${event.evnNo}' />" class="event-item-link">
              <div class="event-item" data-topic="${event.evnctgId}">
                <img class="event-image" src="${event.evnImg}" alt="${event.evnName}" />
                <h2 class="event-title">${event.evnName}</h2>
                <button class="event-status">${event.evnStatus}</button>
                <p class="event-date">${event.evnStartDate} ~ ${event.evnEndDate}</p>
              </div>
            </a>
          </c:forEach>
        </div>
      </div>

     	<!-- bottom 임포트 -->
    	<c:import url="/WEB-INF/views/layout/bottom.jsp" />
    </div>
  </body>
</html>
