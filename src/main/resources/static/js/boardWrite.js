/**
 *  boardWrite.js
 */
 window.onload = function() {
	document.getElementById('boardSubmitFrm').onsubmit = function() {
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
