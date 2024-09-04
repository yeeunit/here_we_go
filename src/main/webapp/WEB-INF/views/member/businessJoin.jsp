<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>사업자 회원가입</title>
	<!-- 공통 layout: head.jsp -->
<c:import url="/WEB-INF/views/layout/head.jsp" />
<link rel="stylesheet" type="text/css" href="<c:url value='/css/businessJoin.css'/>">
</head>

<body>
	<div class="all">
		<!-- 공통 layout: top.jsp -->
		<c:import url="/WEB-INF/views/layout/top.jsp" />

		<div class="joinPage">
			<h1>사업자 회원가입</h1>
			<div class="joinBox">
				<form id="joinForm" method="post" action="/member/businessJoin">
				       
				    <div class="input">
				        <label for="businessNum">사업자 번호</label> 
				        <input type="text" id="comNo" name="comNo" placeholder="xxx-xx-xxxxx"/>
				    </div>
						
					<div class="input">
						<label for="username">아이디</label> 
						<input type="text" id="comId" name="comId" />
					</div>

					<div class="input">
						<label for="password">비밀번호</label> 
						<input type="password" id="comPwd" name="comPwd" />
					</div>

					<div class="input">
						<label for="email">이메일 주소</label> 
						<input type="email" id="comEmail" name="comEmail" placeholder="이메일을 입력하세요" />
					</div>

					<div class="input">
						<label for="name">회사명</label> 
						<input type="text" id="comName" name="comName" />
					</div>
					
					<div class="input">
						<label for="phone">통신사</label> 
						<select id="comTelcom" name="comTelcom">
							<option value="sk">SK</option>
							<option value="kt">KT</option>
							<option value="lg">LG</option>
						</select>
					</div>
			

					<div class="input">
						<label for="phone">휴대폰 번호</label> 
						<input type="tel" id="comHP" name="comHP" placeholder="xxx-xxxx-xxxx" />
					</div>

					<button type="submit" class="joinbutton" id="joinbutton">회원가입</button>
				</form>
			</div>
		</div>

		<!-- 공통 layout: botton.jsp -->
		<c:import url="/WEB-INF/views/layout/bottom.jsp">
		</c:import>
	</div>
</body>
</html>