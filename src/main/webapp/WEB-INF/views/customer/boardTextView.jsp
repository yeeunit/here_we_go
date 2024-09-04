<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>게시글 보기</title>
		<!-- head 임포트 -->
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/boardTextView.css' />" />
	</head>
	<body>
		<div class="All">
			<!-- top 임포트 -->
			<c:import url="/WEB-INF/views/layout/top.jsp" />
			<a href="<c:url value='/customer/board'/>"><h1>고객센터 게시판</h1></a>
			
			<main>
				<section class="board">
					<h2>게시글</h2>
					<hr>	
					<div class="form-group">
						<label for="title">제목</label>
						<span id="bodTitle">${board.bodTitle}</span>
					</div>
					<div class="form-group">
						<label for="author">작성자</label>
						<span id="bodMemId">${board.memId}</span>
					</div>
					<div class="form-group">
						<label for="content">내용</label>
						<pre id="bodText">${board.bodText}</pre>
					</div>
					<div class="buttons">
						<a href="<c:url value='/customer/updateBoardForm/${board.bodNo }'/>" class="btn">수정</a>
						<a href="<c:url value='/customer/deleteBoard/${board.bodNo}'/>" class="btn" onclick="return confirm('정말 삭제하시겠습니까?');">삭제</a>
					</div>
				</section>
				<section class="board">
					<h2>답변</h2>
					<hr>
					<div class="form-group">
						<label for="answer">답변자</label>
						<span id="admin">여기있댕 관리자</span>
					</div>
					<div class="form-group">
						<label for="content">답변</label>
						<span id="answerText"></span>
					</div>
				</section>
				
			</main>
			
			<!-- bottom 임포트 -->
			<c:import url="/WEB-INF/views/layout/bottom.jsp" />
		</div>
	</body>
</html>