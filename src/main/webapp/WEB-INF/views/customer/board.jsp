<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>고객센터 게시판</title>
		<!--head 임포트  -->
  	<c:import url="/WEB-INF/views/layout/head.jsp" />
  	<link rel="stylesheet" type="text/css" href="<c:url value='/css/board.css' />" />
  	<script src="<c:url value='/js/board.js'/>"></script>
  	
  </head>
  <body>
    <div class="All">
      <!-- top 임포트 -->
    	<c:import url="/WEB-INF/views/layout/top.jsp" />

      <main>
        <section class="board">
          <h2>고객센터 게시판</h2>
          <div class="controls">
          	<form id="boardSearchFrm">
	            <select id="categoryFilter" name="type">
	              <option value="bodTitle">글 제목</option>
	              <option value="memId">작성자</option>
	            </select>
	            <input type="text" id="search-input" name="keyword" placeholder="검색어 입력" />
	            <input type="submit" id="searchBtn" value="검색">
           </form>
          </div>
          <table class="post-table" id="post-table">
            <thead>
              <tr>
                <th>번호</th>
                <th>제목</th>
                <th>아이디</th>
                <th>작성일</th>
              </tr>
            </thead>
            <tbody id="post-list">
             	<c:forEach var="board" items="${boardList }">
	         	      <tr onclick="location.href='<c:url value='/customer/detailViewBoard/${board.bodNo}'/>'" id="boardRow">
		                  <td>${board.bodNo}</td>
		                  <td>${board.bodTitle}</td>
		                  <td>${board.memId}</td>
		                  <td><fmt:formatDate value="${board.bodDate }" pattern="YYYY-MM-dd" /></td>		                  
	                </tr>
             	</c:forEach>
            </tbody>
          </table>
          <button id="directBtn">직접 문의하기</button>
        </section>

        <section class="page">
          <ul class="page-list">
            <li><a href="#" class="page-link" data-page="1">1</a></li> 
          </ul>
        </section>
      </main>
      <!-- 메인 끝 -->

      <!-- bottom 임포트 -->
    <c:import url="/WEB-INF/views/layout/bottom.jsp" />
    </div>
    <script type="text/javascript">
	    // 로그인 여부를 세션에서 가져오기
	    var isLoggedIn = <c:out value="${not empty sessionScope.sid}"/>;
  	</script>
    
  </body>
</html>
