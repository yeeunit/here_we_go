// 챗봇

$(document).ready(function () {
  $("#chatForm").on("submit", function () {
    event.preventDefault();

    if ($("#message").val() != "") {
      $("#chatBox").append(
        '<div class="msgBox send"><span>' +
          $("#message").val() +
          "</span></div>"
      );
    }

    // 입력란 비우기
    $("#message").val("");

    getResponse();
  });

  $("#chatbot").on("click", function () {
    $("#chatbot").addClass("hidden").removeClass("visible");
    $(".chatBox_wrap").removeClass("hidden").addClass("visible");
  });

  $("#closeBtn").on("click", function () {
    $(".chatBox_wrap").addClass("hidden").removeClass("visible");
    $("#chatbot").removeClass("hidden").addClass("visible");
  });

  function getResponse() {
    let result = "저는 댕봇입니다. 문의하신 내용은 ...";

    $("#chatBox").append(
      '<div class="msgBox receive"><br>댕봇<br><span>' +
        result +
        "</span></div><br>"
    );

    $("#chatBox").scrollTop($("#chatBox").prop("scrollHeight"));
  }
});
