<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>회원가입</title>
<!-- 공통 layout: head.jsp -->
<c:import url="/WEB-INF/views/layout/head.jsp" />
<link rel="stylesheet" type="text/css" href="<c:url value='/css/join.css'/>">
</head>

<body>
	<div class="all">
		<!-- 공통 layout: top.jsp -->
		<c:import url="/WEB-INF/views/layout/top.jsp" />

		<div class="joinPage">
			<h1>회원가입</h1>
			<div class="joinBox">
				<form id="joinForm" name="joinForm" method="post" action="/member/normalJoin">
					
					<div class="input">
						<label for="username">아이디</label> 
						<input type="text" id="memId" name="memId" />
					</div>

					<div class="input">
						<label for="password">비밀번호</label> 
						<input type="password" id="memPwd" name="memPwd" />
					</div>

					<div class="input">
						<label for="email">이메일 주소</label> 
						<input type="email" id="memEmail"name="memEmail" placeholder="이메일을 입력하세요" />
					</div>

					<div class="input">
						<label for="name">이름</label> 
						<input type="text" id="memName" name="memName" />
					</div>

					<div class="input">
						<label for="birthdate">생년월일</label> 
						<input type="text" id="memBirth" name="memBirth" placeholder="yyyy-mm-dd" />
					</div>

					<div class="input">
						<label for="phone">통신사</label> 
						<select id="memTelcom" name="memTelcom">
							<option value="sk">SK</option>
							<option value="kt">KT</option>
							<option value="lg">LG</option>
						</select>
					</div>

					<div class="input">
						<label class="info">성별</label>
						<div class="radio">
							<label>
							<input type="radio" name="memGender" id="memGender" value="male"checked /> 남자
							</label> 
							
							<label>
							<input type="radio" name="memGender" id="memGender" value="female" /> 여자
							</label>
							
						</div>
					</div>

					<div class="input">
						<label class="info">국적</label>
						<div class="radio">
							<label>
							<input type="radio" name="memNation" id="memNation"value="domestic" checked /> 내국인
							</label> 
							
							<label>
							<input type="radio" name="memNation" id="memNation" value="foreign" /> 외국인
							</label>
							
						</div>
					</div>


					<div class="input">
						<label for="phone">휴대폰 번호</label> 
						<input type="tel" id="memHp"name="memHp" placeholder="xxx-xxxx-xxxx" />
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