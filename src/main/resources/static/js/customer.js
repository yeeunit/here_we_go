/**
 * customer.js
 */

$(document).ready(function() {
    let activeButton = null;

    // 초기 예약 카테고리의 FAQ 리스트 보여주기
    loadFAQList('01'); // 예약 카테고리의 faqctgId는 '01'

    // 질문 리스트를 불러오는 함수
    function loadFAQList(faqctgId) {
        $.ajax({
            type: "POST",
            url: "/customer/faqListView",
            data: { faqctgId : faqctgId },
            success: function(response) {
                renderFAQList(response);
            },
            error: function() {
                alert("FAQ 리스트를 불러오는 데 실패했습니다.");
            }
        });
    }

    // 질문 리스트를 나타내는 함수
    function renderFAQList(faqList) {
        const faqListContainer = $('#faq-list');
        faqListContainer.empty(); // 기존 리스트 초기화

        faqList.forEach(function(faq) {
            const questionElement = $('<div class="question"></div>'); // 각 질문들
            questionElement.html(`
                <br />
                Q. ${faq.faqTextf}
                <div class="faq-answer" style="display: none;">${faq.faqTexta}</div>
                <br />
                <hr />
            `);
            questionElement.on('click', function() { // 질문을 클릭할 때
                const answerElement = $(this).find('.faq-answer'); // 클릭된 질문에 해당하는 답변

                if (answerElement.is(':visible')) { // 답변이 나와있다면
                    answerElement.slideUp(); // 답변 요소를 숨김
                } else { // 답변이 나와있지 않다면
                    $('.faq-answer').slideUp(); // 다른 답변 숨기고
                    answerElement.slideDown(); // 해당 질문의 답변 출력
                }
            });
            faqListContainer.append(questionElement);
        });
    }

    // 카테고리 버튼 클릭 이벤트 처리
    $('.faqBtn').on('click', function() {
        const faqctgId = $(this).data('faqctgid'); // 클릭된 버튼(data-faqctgid)을 faqctgId에 저장

        if (activeButton) { // 다른 버튼이 눌러져 있다면. activeButton은 이전의 활성화된 다른 버튼
            activeButton.css('color', '').css('background-color', ''); // 이전 활성화된 버튼 색상 초기화
        }

        $(this).css('background-color', 'firebrick').css('color', 'white'); // 클릭된 버튼의 색상을 firebrick으로 변경
        activeButton = $(this); // 현재 클릭된 버튼을 활성화된 버튼으로 설정

        loadFAQList(faqctgId);
    });

    // 초기 예약 카테고리 FAQ 목록 렌더링
    loadFAQList('01');
    // 초기 활성화된 버튼 설정
    activeButton = $('.faqBtn[data-faqctgid="01"]');
    activeButton.css('background-color', 'firebrick').css('color', 'white');
});