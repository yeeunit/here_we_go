<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>게시글 수정</title>
		<!--head 임포트  -->
  	<c:import url="/WEB-INF/views/layout/head.jsp" />
  	<link rel="stylesheet" type="text/css" href="<c:url value='/css/updateBoardForm.css' />" />
  	<script src="<c:url value='/js/updateBoardForm.js'/>"></script>
	</head>
	<body>
		<div class="All">
      <!-- top 임포트 -->
    	<c:import url="/WEB-INF/views/layout/top.jsp" />
		    <a href="<c:url value='/customer/board'/>"><h1>고객센터 게시판</h1></a>
		    
		    <main>
		        <section class="board">
		            <h2>고객을 먼저 생각하는 고객지원 서비스</h2>
		            <p>원하는 내용이 없다면 직접 문의해보세요.<br>
		            더욱 궁금하신 사항은 고객센터 게시판을 통해 질문해 주시면 신속하게 답변해 드리겠습니다.<br>
		            감사합니다.</p>
		            <hr>
		            <form id="updateForm" method="post" action="<c:url value='/customer/updateBoard'/>">
		            		<input type="hidden" id="bodNo" name="bodNo" value="${board.bodNo}" />

                    <div class="form-group">
                        <label for="title">제목</label>
                        <input type="text" id="bodTitle" name="bodTitle" value="${board.bodTitle}" />
                    </div>
                    <div class="form-group">
                        <label for="author">작성자</label>
                        <input type="text" id="memId" name="memId" value="${board.memId}" readonly />
                    </div>           
                    <div class="form-group">
                        <label for="content">내용</label>
                        <textarea id="bodText" name="bodText">${board.bodText}</textarea>
                    </div>
                    <div class="form-group">
                         <label for="password">비밀번호</label>
                         <input type="password" id="memPwd" name="memPwd" required />
                    </div>
		                <button type="submit">수정</button>
		            </form>        
		        </section>
		   </main>
			<!-- bottom 임포트 -->
	    <c:import url="/WEB-INF/views/layout/bottom.jsp" />
    </div>

</body>
</html>