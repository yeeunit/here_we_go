
$(document).ready(function () {
		 
		 // 로그아웃 
		      const urlParams = new URLSearchParams(window.location.search);
            if (urlParams.get('logout') === 'true') {
                alert('로그아웃 성공');
                // 파라미터 제거 후 URL 갱신
                urlParams.delete('logout');
                const newUrl = window.location.origin + window.location.pathname + '?' + urlParams.toString();
                window.history.replaceState({}, document.title, newUrl);
            }
		 // 검색
		 
		  $(".search_bar").on('focus', function(){
			   if ($(this).val() === '숙소를 검색해보세요' || 
	            $(this).val() === '6.12 수 - 6.14 금 (2박)' || 
	            $(this).val() === '인원 2') {
	            $(this).val('');
                }
		  });
		  
		 $('.search_bar').on('blur', function() {
        if ($(this).val() === '') {
            if ($(this).attr('id') === 'search_hotel') {
                $(this).val('숙소를 검색해보세요');
            } else if ($(this).attr('id') === 'input_date') {
                $(this).val('6.12 수 - 6.14 금 (2박)');
            } else if ($(this).attr('id') === 'input_number') {
                $(this).val('인원 2');
            }
        }
    });
		 
		  // 이벤트
		  let startIndex = 0;
		  let boxesPerPage = 4;
		  
		  let eventItemsDiv = $(".event_items");
		  let eventItems = $(".event_item");
		
		  let eventImagePaths = eventItems.map(function () {
		        return $(this).data("image-url");
		  }).get();
		    
		  let eventNames = eventItems.map(function () {
		        return $(this).data("name");
		  }).get();
		    
		  let eventInfos = eventItems.map(function () {
		        return $(this).data("info");
		  }).get();
		
		  let totalPages = Math.ceil(eventImagePaths.length / boxesPerPage);
		
		  showEventImages();
		  
		        
		  $(".prev_btn").on("click", function () {
		    if (startIndex > 0) {
		      startIndex -= 1;
		      showEventImages();
		    }
		  });
		
		  $(".next_btn").on("click", function () {
		    if (startIndex + 1 < totalPages) {
		      startIndex += 1;
		      showEventImages();
		    }
		  });
		  
		  
		  function showEventImages() {
		       eventItems.hide(); // 모든 항목을 숨김
		
		        let startIdx = startIndex * boxesPerPage;
		        let endIdx = startIdx + boxesPerPage;
		
		        // 해당 페이지의 항목을 표시
		        for (let i = startIdx; i < endIdx && i < eventItems.length; i++) {
		            $(eventItems[i]).show();
		        }
		  }
		  
		  
		  
		  // 인기 여행지 
		  
		   let itemsPerPage = 5;
    let currentPage = 0;

    let travelItemWrap = $(".travel_item_wrap");
    let travelItems = $(".travel_item");
    let pagination = $(".pagination");

    let totalTravelPages = Math.ceil(travelItems.length / itemsPerPage);

    function showTravelImages(page) {
        travelItems.hide(); // 모든 항목을 숨김

        let start = page * itemsPerPage;
        let end = Math.min(start + itemsPerPage, travelItems.length);

        for (let i = start; i < end; i++) {
            $(travelItems[i]).show();
        }
    }

    function createPagination() {
        pagination.empty(); // 기존 페이지네이션 초기화

        for (let i = 0; i < totalTravelPages; i++) {
            let circleDiv = $("<div>").addClass("circle");

            if (i === currentPage) {
                circleDiv.addClass("active");
            }

            circleDiv.on("click", function () {
                currentPage = i;
                showTravelImages(currentPage);

                $(".circle").removeClass("active");
                $(this).addClass("active");
            });

            pagination.append(circleDiv);
        }
    }

    // 초기 표시
    showTravelImages(currentPage);
    createPagination();
		  
		  
  // 기획전 모음 캐러셀
  
   const $specialItemWrap = $(".special_item_wrap");
    const $specialItems = $(".special_item");
    const totalItems = $specialItems.length;
    let currentSpecialIndex = 0;
    const itemWidth = 440;

    const $firstItemClone = $specialItems.eq(0).clone(true);
    const $secondItemClone = $specialItems.eq(1).clone(true);
    const $thirdItemClone = $specialItems.eq(2).clone(true);
    $specialItemWrap.append($firstItemClone);
    $specialItemWrap.append($secondItemClone);
    $specialItemWrap.append($thirdItemClone);

    function specialCarousel() {
        currentSpecialIndex++;

        if (currentSpecialIndex > totalItems) {
            $specialItemWrap.css("transition", "none");
            $specialItemWrap.css("transform", "translateX(0)");
            currentSpecialIndex = 1;
            setTimeout(() => {
                $specialItemWrap.css("transition", "transform 1s ease");
                $specialItemWrap.css("transform", `translateX(-${itemWidth}px)`);
            }, 20);
        } else {
            $specialItemWrap.css("transition", "transform 1s ease");
            $specialItemWrap.css("transform", `translateX(-${currentSpecialIndex * 440}px)`);
        }
    }

    setInterval(specialCarousel, 2000);
		  
		  
		  // 인기 추천 숙소
		  
	function filterHotels() {
	
            let activeCategories = $('.tagBtn.btnActive').map(function() {
            return $(this).data('category');
        }).get();
    
        let items = $('.hotel_item');
        items.each(function() {
        let item = $(this);
        let itemCategory = item.data('category');
        
        if (activeCategories.length === 0 || activeCategories.includes('전체') || activeCategories.includes(itemCategory)) {
            item.css('display', 'flex');
        } else {
            item.css('display', 'none');
        }
    });
}
		  // 태그 
		 $(".tagBtn").on("click", function() {
    let selectedCategory = $(this).data("category");
    console.log("selectedCategory", selectedCategory);

    if (selectedCategory === "전체") {
        $(".tagBtn").removeClass("btnActive");
        $("#allBtn").addClass("btnActive");
    } else {
        $(this).toggleClass("btnActive");
        $("#allBtn").removeClass("btnActive");

        // 활성화된 버튼이 하나도 없을 경우 "전체" 버튼을 다시 활성화
        if ($(".tagBtn.btnActive").length === 0) {
            $("#allBtn").addClass("btnActive");
        }
    }
    filterHotels();
		 
		//  $.ajax({
          //  type: "POST",
            // url: "/product/prdCtgSearch",
           // data: { category: selectedCategory },
           // success: function(response) {
             //   $(".hotel_item_wrap").html(response);
            // },
           // error: function(xhr, status, error) {
            //    console.error("Error: " + error);
            // }
       //  });
        
        
    });
        
        
		  // 국내 여행지
		  

		  $(".region").on("click", function() {
		              console.log("region click");
		          $(".regions").addClass("expanded");
		       
		        
           let trvVideo = $(this).data("video");     
            let trvTitle = $(this).data("title");
            let trvText = $(this).data("text");
            let trvRegionName = $(this).data("region");
            
           //  let embedUrl = trvVideo.replace("watch?v=", "embed/"); 
             
           // $(".rg_box_video").attr("src", trvVideo);
            $(".rg_box_text").html(`
                <div class="rg_box_text_region">${trvRegionName} 여행지 소개</div>
              
            `);
        });
        
        
		  
		  // 맨위로
  $(window).on('scroll', function () {
        toggleScrollButton();
    });


  function toggleScrollButton() {
    let $toTopBtn = $("#to_top_Btn");
     if ($(window).scrollTop() > 1600) {
            $toTopBtn.css("display", "flex");
        } else {
            $toTopBtn.css("display", "none");
        }
    }

 $("#to_top_Btn").on("click", function () {
        $("html, body").animate({ scrollTop: 0 }, "slow");
    });
		  
		

});
