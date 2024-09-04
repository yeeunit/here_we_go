/**
 *  board.js
 */

 $(document).ready(function() {
 
    $('#directBtn').click(function() {
        if (isLoggedIn) {
            // 로그인된 경우, 게시글 작성 폼으로 이동
            window.location.href = '/customer/boardWrite';
        } else {
            // 로그인되지 않은 경우, 확인 후 로그인 페이지로 이동
            if (confirm('로그인이 필요합니다. 로그인 하시겠습니까?')) {
                window.location.href = '/member/loginChoiceForm';
            }
        }
    });
 	// 검색 폼이 전송(submit) 되었을 때
 	$('#boardSearchFrm').on('submit', function() {
 		event.preventDefault();
 		
 		// 폼에 입력한 여러 개의 값을 쿼리스트링 방식의 데이터로 변환: serialize() 사용
 		// type=prdName&keyword=노트북
 		let formData = $(this).serialize();
 		
 		let keyword = $('#search-input').val();
 		let type = $('#categoryFilter').val();
 		

 		$.ajax({
 			type:"post",
 			url:"/customer/boardSearch", 
 			data : formData,
 			success:function(result) { // 컨트롤러에서 반환한 boardList를 result가 받음
 			// 반환된 결과(ArrayList<ProductVO>를 searchResultBox에 테이블 형태로 출력
 				$('#post-list').empty();
 			
 				if(result == ""){ // 검색 결과 없는 경우
 					$('#post-list').append('<tr align="center"><td colspan="4">찾는 게시글이 존재하지 않습니다.</td></tr>');
 				} else {
 				
 					result.reverse()
 					
 					for(let i=0; i<result.length; i++) {
 						let board_date = new Date(result[i].bodDate);
 						let year = board_date.getFullYear();
 						let month = (board_date.getMonth() + 1).toString().padStart(2, '0');
 						let date = (board_date.getDate().toString().padStart(2, '0'));
 						let bodDate = `${year}-${month}-${date}`;	 							
						$('#post-list').append('<tr><td>' + result[i].bodNo + '</td><td>'+
												result[i].bodTitle + '</td><td>' +
											    result[i].memId + '</td><td>' +
											    bodDate + '</td><tr>');
						
	 					}
 				}
 				
 				
 			},
 			error:function() {
 				alert("실패");
 			}
 		});
 		
 	  
 	}); // submit 끝
 
 });