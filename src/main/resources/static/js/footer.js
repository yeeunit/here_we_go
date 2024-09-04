// footer

$(document).ready(function () {
  // 패밀리 사이트
  $("#familySiteSelect").on("change", function () {
    let url = $(this).val();
    if (url) {
      window.open(url, "_blank");
    }
  });
});
