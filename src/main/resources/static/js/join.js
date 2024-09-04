/**
 * join.js
 * 
 */

  /*window.onload = function(){
	let joinbutton = document.getElementById("joinbutton");
	joinbutton.addEventListener("click", () => {
		alert("회원가입 성공,로그인 화면으로 이동합니다.");
		location.href="../html/login_choice.html"
		location.href = "../index.html";
				});
 };*/
 
 window.onload = function() {
	// id가 joinForm인 폼의 submit 버튼 눌렀을 때 이벤트 처리 : submit 이벤트 발생 
	document.getElementById('joinForm').onsubmit = function() {
    event.preventDefault();
    
		// 아이디를 입력하지 않은 경우 '아이디를 입력하세요' 알림창 출력하고
		// 아이디 입력란에 포커스
		let id = document.getElementById('username');
		let password = document.getElementById('password');
		let email = document.getElementById('email');
		
		
		
		// id를 입력하지 않은 경우
		if(id.value == ""){
			alert("아이디를 입력하세요");
			id.focus(username);
			return false;
			
		}else if(password.value == ""){
			alert("비밀번호를 입력하세요");
			password.focus(password);
			return false;
			
		}else if(email.value == ""){
			alert("이메일을 입력하세요");
			email.focus(email);
			return false;
		};
		
	alert("회원가입이 완료되었습니다 로그인 페이지로 이동합니다.");
	location.href="../html/login_choice.html"
	}; // form의 onsubmit 끝
	
	
};  // window.onload 끝
 