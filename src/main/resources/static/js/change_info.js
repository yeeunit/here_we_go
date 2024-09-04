/**
 * changeInfo.js
 * 
 */

 window.onload = function(){
	document.getElementById('infoBox').onsubmit = function() {
    event.preventDefault();
		alert("로그인이 필요합니다.");
		location.href="../html/login_choice.html"
		};
 };
 