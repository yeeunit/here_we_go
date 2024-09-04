/**
 * businessLogin.js
 */
 $(document).ready(function() {
  	$('#businessForm').on('submit', function() {
  		event.preventDefault();
  	
	 	$.ajax({
 			type:"post",
 			url:"/member/businessLogin", 
 			data : {"id":$('#comId').val(),
 					"pwd": $('#comPwd').val()}, /* 컨트롤러에서 받는 이름 id, pwd  */
 			dataType:'text', /* 요청하는 데이터 타입 (반환 타입) */
 			success:function(result) {
 				if(result == "success") {
 					alert("로그인 성공\n홈으로 이동");
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



window.onload = function () {
  document.getElementById('businessForm').onsubmit = function() {
    event.preventDefault();
    
    let No = document.getElementById('comNo');
    let id = document.getElementById('comId');
    let pw = document.getElementById('comPwd');
    
    if(No.value == ""){
			alert("사업자 번호를 입력하세요");
			No.focus(comNo);
			return false;
    
    }else if(id.value == ""){
			alert("아이디를 입력하세요");
			id.focus(comId);
			return false;
			
    }else if(pw.value == ""){
			alert("비밀번호를 입력하세요");
			pw.focus(comPwd);
			return false;
    };
    
    
    
    //alert("로그인 성공,메인 화면으로 이동합니다.");
    //location.href = "/";
  };
};	
