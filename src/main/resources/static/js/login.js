/**
 * login.js
 */
 $(document).ready(function() {
  	$('#normalForm').on('submit', function() {
  		event.preventDefault();
  	
	 	$.ajax({
 			type:"post",
 			url:"/member/normalLogin", 
 			data : {"id":$('#memId').val(),
 					"pwd": $('#memPwd').val()}, /* 컨트롤러에서 받는 이름 id, pwd  */
 			dataType:'text', /* 요청하는 데이터 타입 (반환 타입) */
 			success:function(result) {
 				if(result == "success") {
 					alert("로그인 성공\n즐거운 여행 되세요!");
 					location.href= "/";
 				} else {
 					alert("아이디 또는 비밀번호가 일치하지 않습니다");
 				}
 			},
 			error:function() {
 				alert("로그인 실패");
 			}
 		}); 		
 	});
});


 window.onload = function(){
	document.getElementById('normalForm').onsubmit = function() {
    event.preventDefault();
    
    let id = document.getElementById('memId');
    let pw = document.getElementById('memPwd');
    
    
    if(id.value == ""){
			alert("아이디를 입력하세요");
			id.focus(memId);
			return false;
    
    }else if(pw.value == ""){
			alert("비밀번호를 입력하세요");
			pw.focus(memPwd);
			return false;
    
    };
    
    
    
    
	//alert("로그인 성공,메인 화면으로 이동합니다.");
	//location.href="/"
					
	};
};
 
 
