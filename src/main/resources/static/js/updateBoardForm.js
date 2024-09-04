/**
 * updateBoardForm
 */
 window.onload = function() {
	document.getElementById('updateForm').onsubmit = function() {
    event.preventDefault();
    
		let bodTitle = document.getElementById('bodTitle');
		let memId = document.getElementById('memId');
		let bodText = document.getElementById('bodText');
		
	
		if(bodTitle.value == ""){
			alert("제목을 입력하세요");
			bodTitle.focus(bodTitle);
			return false;
			
		}else if(memId.value == ""){
			alert("작성자를 입력하세요");
			memId.focus(memId);
			return false;
			
		}else if(bodText.value == ""){
			alert("내용을 입력하세요");
			bodText.focus(bodText);
			return false;
		};
		
		this.submit();
		
	}; // onsubmit 끝
	
	
};  // window.onload 끝
 
 ///////////////////////////////////////////////////////////////////
 
 $(document).ready(function() {
    $('#updateForm').on('submit', function(event) {
        event.preventDefault();

        var formData = $(this).serialize(); // 폼 데이터 직렬화
        var bodNo = $('#bodNo').val();

        $.ajax({
            type: "POST",
            url: "/customer/updateBoard", 
            data: formData,
            dataType: 'text',
            success: function(result) {
                if (result == "success") {
                    alert("수정이 완료되었습니다.");
                    location.href = "/customer/detailViewBoard/" + bodNo; // 해당 게시글 상세 페이지로 이동
                } else if (result == "fail") {
                    alert("비밀번호가 일치하지 않습니다");
                    location.reload(); // 현재 페이지 새로고침
                } else {
                    alert("수정 실패");
                }
            },
            error: function() {
                alert("오류가 발생했습니다");
            }
        });
    });
});