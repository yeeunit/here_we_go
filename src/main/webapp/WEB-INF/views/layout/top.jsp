<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
      <header>
      
      <div class="header"> 
		      <h1 class="hd_logo"><a href="<c:url value='/'/>"><img src="<c:url value='/image/logo.png'/>"/></a></h1>
		        
		        <nav class="nav_tab">
			          <div><a href="<c:url value='/product/listAllProduct'/>">숙소</a></div>
			          <div>할인쿠폰 & 특가상품</div>
			          <div><a href="<c:url value='/event/eventMain'/>">이벤트</a></div>
			          <div>여행 정보</div>
			          <div><a href="<c:url value='/customer/customerMain'/>">고객센터</a></div>
		        </nav>
		        
	 <!-- 로그인 안 한 경우 / 기존 스타일 적용 --> 
            <c:if test="${empty sessionScope.sid }">
                  <div class="hd_loginBtn">     
                        <a href="<c:url value='/member/loginChoiceForm'/>">로그인 / 회원가입</a>  
                  </div>
            </c:if>
                                    
            <!-- 로그인 성공한 경우  -->
            <c:if test="${not empty sessionScope.sid }">
                 <div class="hd_loggedin">     
                  ${sessionScope.sid}님 환영합니다! &nbsp;&nbsp;
                  <a href="<c:url value='/member/logout'/>">로그아웃</a>&nbsp;ㅣ&nbsp;
                  <a href="<c:url value='/member/changeInfoForm'/>">정보변경</a>&nbsp;ㅣ&nbsp;
                  <a href="<c:url value='/member/couponBoxForm'/>">쿠폰함</a>&nbsp;&nbsp;
                  </div>
            </c:if>
            
          
                          
                <%-- <div class="hd_loginBtn">
                    <a href="<c:url value='/member/loginChoice'/>">로그인 / 회원가입</a>
                    </div>  --%>
            
            
      </div>
      
    </header>                 