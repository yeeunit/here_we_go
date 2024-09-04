<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>이벤트 정보</title>
		<!--head 임포트  -->
  	<c:import url="/WEB-INF/views/layout/head.jsp" />
  	<link rel="stylesheet" type="text/css" href="<c:url value='/css/eventDetailView.css' />" />
	</head>
	<body>
		<div class="All">
	    <!-- top 임포트 -->
	    <c:import url="/WEB-INF/views/layout/top.jsp" />
	    
	    
	    
	    <div class="event-detail_wrap">

	
	     <h2> 이벤트 상세보기 ${event.evnName}</h2>
	<div class="img_wrap">
          <img class="event-image" src="${event.evnImg}" alt="${event.evnName}" />
          </div>
          <p class="event-info">${event.evnInfo}</p>
          
          <a href="<c:url value='/event/eventMain' />" class="event-back">
          <br/>  <br/>  <br/>  <br/>
      <h3>← 목록으로</h2>
      </a>
      </div>
        
        
        
	   	<!-- bottom 임포트 -->
    	<c:import url="/WEB-INF/views/layout/bottom.jsp" />
    </div>
		
	</body>
</html>