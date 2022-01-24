$(".footer-info a").on("click", function () {
  let show = $(".footer-info p.invisible");
  if (show.css("display") == "none") {
    show.css("display", "block");
  } else {
    show.css("display", "none");
  }
});

$(".footer-wrapper2 a.a-invisible").on("click", function () {
  $(".footer-wrapper2 a.a-invisible").css("display", "none");
  $(".footer-wrapper2 a p.invisible").css("display", "block");
});

$(".full-input input").on("click", function () {
  $(".search-list").css("display", "block");
});

$(".search-input i").on("click", function () {
  $(".search-list").css("display", "none");
});
$(".bg-black").on("click", function () {
  $(".search-list").css("display", "none");
});
$(".response input").on("click", function () {
  $(".recent-search").css("display", "block");
});

$("html").on("click", function (e) {
  let $tgPoint = $(e.target);
  let $input = $tgPoint.attr("id");
  let $search = $tgPoint.hasClass(".recent-search");
  if (!$input && !$search) {
    $(".recent-search").css("display", "none");
  }
});

$("#unroll1").on("click", function () {
  $("#unroll1").addClass("invisible");
  $(".intro-detail").removeClass("invisible");
  $("#roll1").removeClass("invisible");
});
$("#unroll2").on("click", function () {
  $("#unroll2").addClass("invisible");
  $(".navlist-detail").removeClass("invisible");
  $("#roll2").removeClass("invisible");
});
$("#roll1").on("click", function () {
  $("#roll1").addClass("invisible");
  $(".intro-detail").addClass("invisible");
  $("#unroll1").removeClass("invisible");
});
$("#roll2").on("click", function () {
  $("#roll2").addClass("invisible");
  $(".navlist-detail").addClass("invisible");
  $("#unroll2").removeClass("invisible");
});
