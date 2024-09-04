/**
 * event.js
 */

$(document).ready(function() {

    function filterEvents(topic) {
        if (topic === 'all') {
            $('.event-item-link').show();
        } else {
            $('.event-item-link').each(function() {
                const eventTopic = $(this).find('.event-item').data('topic');
                if (eventTopic === topic) {
                    $(this).show();
                } else {
                    $(this).hide();
                }
            });
        }

        // 모든 주제 버튼의 색상 초기화
        $('.topicBtn').css('color', '').css('border-color', '');

        // 클릭된 버튼의 색상 변경
        $(`.topicBtn[data-topic="${topic}"]`).css('color', 'blue').css('border-color', 'blue');
    }

    $('.topicBtn').on('click', function() {
        const topic = $(this).data('topic');
        filterEvents(topic);
    });

    // 페이지 로드 시 '전체' 버튼을 클릭한 것처럼 초기 설정
    filterEvents('all');
});