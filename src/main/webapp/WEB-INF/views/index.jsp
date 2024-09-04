<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>여기있댕</title>

<!-- 공통 layout: head.jsp -->
<c:import url="/WEB-INF/views/layout/head.jsp" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/index.css'/>" />
<script src="<c:url value='/js/index.js'/>"></script>
<script src="<c:url value='/js/main_chatbot.js'/>"></script>
</head>

<body>
	<div class="all">

		<!-- 공통 layout: top.jsp -->
		<c:import url="/WEB-INF/views/layout/top.jsp" />


		<!-- 메인 -->
		<div class="main">

			<!-- 메인 이미지 -->
			<div class="imgSlide">
				<div class="main_image"></div>
				<span> 반려동물과 함께 </span> <span> 여행할 수 있는 곳 </span> <span>여기있댕</span>

				<!-- 검색바 -->
				<div class="search_wrapper">
					<div class="search_title">국내 숙소 검색</div>


					<form id="searchForm" name="searchForm" method="post"
						action="<c:url value='/product/productSearch'/>">
						<div class="search_bar_wrap">
							<input class="search_bar" type="text" id="search_hotel"
								name="search_hotel" value="숙소를 검색해보세요"></input> <input
								class="search_bar" type="text" id="input_date"
								name="search_date" value="6.12 수 - 6.14 금 (2박)"></input> <input
								class="search_bar" type="text" id="input_number"
								name="input_number" value="인원 2"> </input>
							<button class="searchBtn" type="submit">검 색</button>
						</div>
					</form>

				</div>
			</div>
			<!-- 메인 이미지 끝 -->



			<!-- 이벤트 -->
			<div class="event">
				<div class="label">
					이벤트 <span> <a href="<c:url value='/event/eventMain' />">더보기</a></span>
				</div>

				<div class="prev_btn">
					<button class="next_button">
						<img src="<c:url value='/image/arrow_left.png'/>" />
					</button>
				</div>

				<div class="event_item_wrap">
					<div class="event_items">
						<c:forEach var="e" items="${eventList}">


							<div class="event_item" data-image-url="${e.evnImg}"
								data-name="${e.evnName}" data-info="${e.evnInfo}">

								<a href="<c:url value='/event/detailViewEvent/${e.evnNo}' />">
									<div class="event_text">
										<span>${e.evnName}</span> <span>${e.evnInfo}</span>
									</div>
									<div class="eventImg">
										<img src="${e.evnImg}" alt="${e.evnName}" />
									</div>
								</a>
							</div>


						</c:forEach>
					</div>
				</div>


				<div class="next_btn">
					<button class="next_button">
						<img src="<c:url value='/image/arrow_right.png'/>">
					</button>
				</div>
			</div>
			<!-- 이벤트 끝 -->


			<!-- 인기 여행지 -->
			<div class="travel">
				<div class="label">인기 여행지</div>
				<div class="travel_item_wrap">

					<c:forEach var="p" items="${popularTravelList}">
						<div class="travel_item" data-image-url="${p.popImg}"
							data-name="${p.popName}" data-info="${p.popInfo}">
							<div class="pop_text">
								<span>${p.popName}</span>
							</div>

							<img src="${p.popImg}" alt="${p.popName}" />

						</div>
					</c:forEach>

				</div>
				<div class="pagination"></div>
			</div>
			<!--인기 여행지 끝 -->

			<!-- 기획전 모음 -->
			<div class="special">
				<div class="label">기획전 모음</div>

				<div class="special_item_wrap">
					<div class="special_item">
						1 <span>전국 인기호텔 </span> <span>최대 10% 할인</span>
					</div>
					<div class="special_item">
						2 <span>전국 인기호텔 </span> <span>최대 10% 할인</span>
					</div>
					<div class="special_item">
						3 <span>전국 인기호텔 </span> <span>최대 10% 할인</span>
					</div>
					<div class="special_item">
						4 <span>전국 인기호텔 </span> <span>최대 10% 할인</span>
					</div>
				</div>
			</div>
			<!-- 기획전 끝 -->


			<!-- 인기 추천 숙소 : product -->
			<div class="hotels">
				<div class="label">인기 추천 숙소</div>

				<!-- 숙소 카테고리 태그 -->
				<div class="tags">
					<div class="tagBtn btnActive" id="allBtn" data-category="전체">전체</div>
					<c:forEach items="${prdCtgNames}" var="pc">
						<div class="tagBtn" data-category="${pc}">${pc}</div>
					</c:forEach>
				</div>

				<div class="hotel_item_wrap">

					<c:forEach items="${ productList }" var="p">

						<div class="hotel_item" data-category="${p.prdCtgName}">
							<a href="<c:url value='/product/detailViewProduct/${p.prdNo}' />">

								<div class="hotel_img">
									<img src="${p.prdImg}" />
								</div>
								<div class="hotel_text">
									<span>${p.prdCtgName}</span>
									<div>${p.prdName_kor}</div>
									<div class="rate_wrap">
										<div class="hotel_rate">★ ${p.prdRate}</div>
										<span>${p.prdRateNum}명 평가</span>
									</div>
									<div class="hotel_price">${p.prdPrice}원</div>
								</div>

							</a>
						</div>

					</c:forEach>

				</div>

			</div>
			<!-- 인기 추천 숙소 끝 -->

			<!-- 국내 여행지 -->
			<div class="regions">
				<div class="regions_text">국내 여행지</div>
				<div>
					<c:forEach items="${travelKorList}" var="t">
						<span class="region" data-video="${t.trvVideo}"
							data-title="${t.trvTitle}" data-text="${t.trvText}"
							data-region="${t.trvRegionName}">${t.trvRegionName}</span>
					</c:forEach>
				</div>

				<div class="rg_box">
					<iframe class="rg_box_video"
						src="https://www.youtube.com/embed/tLh5RrQ69s0?si=wT6RJ9kxy718Cw3w"
						title="YouTube video player" frameborder="0"
						allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
						referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
					<div class="rg_box_text"></div>
				</div>


			</div>


			<div id="to_top_Btn">Top</div>

		</div>
		<!-- 메인 끝 -->


		<!-- 공통 layout: botton.jsp -->
		<c:import url="/WEB-INF/views/layout/bottom.jsp" />


		<!-- 챗봇 이미지 -->
		<div id='chatbot'>
			<img src="<c:url value='/image/dangbot.png'/>" />
		</div>

		<!-- 챗봇 텍스트 박스 -->
		<div class='chatBox_wrap hidden'>
			<div id="chatHeader">
				<span>댕봇에게 문의하기</span>
				<button id="closeBtn">X</button>
			</div>

			<div id="chatBox">
				<div class="chat_text_box"></div>
			</div>

			<form id="chatForm" method="post">
				<div class="input_message">
					<input type="text" id="message" name="message" size="30"
						placeholder="메시지를 입력해주세요." autofocus />
				</div>

				<div class="input_msg_button">
					<input type="submit" id="submitBtn" value="전송" />
				</div>
			</form>
		</div>


	</div>
</body>
</html>