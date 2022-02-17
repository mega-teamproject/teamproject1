$("#id").focus(function () {
  $(".id-ph").css("display", "block");
  $(".id_ph").css("display", "none");
});
$("#id").blur(function () {
  $(".id-ph").css("display", "none");
  $(".id_ph").css("display", "block");
});
$("#pwd").focus(function () {
  $(".pw-ph").css("display", "block");
  $(".pw_ph").css("display", "none");
});
$("#pwd").blur(function () {
  $(".pw-ph").css("display", "none");
  $(".pw_ph").css("display", "block");
});
$("#pwdCheck").focus(function () {
  $(".pwc-ph").css("display", "block");
  $(".pwc_ph").css("display", "none");
});
$("#pwdCheck").blur(function () {
  $(".pwc-ph").css("display", "none");
  $(".pwc_ph").css("display", "block");
});
$("#mail").focus(function () {
  $(".email-ph").css("display", "block");
  $(".mail_ph").css("display", "none");
});
$("#mail").blur(function () {
  $(".email-ph").css("display", "none");
  $(".mail_ph").css("display", "block");
});
$("#name").focus(function () {
  $(".name-ph").css("display", "block");
  $(".name_ph").css("display", "none");
});
$("#name").blur(function () {
  $(".name-ph").css("display", "none");
  $(".name_ph").css("display", "block");
});
$("#birthday").focus(function () {
  $(".birth-ph").css("display", "block");
  $(".birth_ph").css("display", "none");
});
$("#birthday").blur(function () {
  $(".birth-ph").css("display", "none");
  $(".birth_ph").css("display", "block");
});

$("#male-la").on("click", function () {
  $("#female-la").css("background", "white");
  $("#male-la").css("background", "rgb(219, 239, 255)");
});
$("#female-la").on("click", function () {
  $("#male-la").css("background", "white");
  $("#female-la").css("background", "rgb(219, 239, 255)");
});

$("#all").on("click", function () {
  $(".checked").prop("checked", this.checked);
});
$(".checked").on("click", function () {
  if ($("input[name='check':checked").length == 3) {
    $(".checked").prop("checked", this.checked);
  } else {
    $(".checked").prop("checked", false);
  }
});

function checkAll() {
  if ($("#all").is(":checked")) {
    $(".checked").prop("checked", this.checked);
  } else {
    $(".checked").prop("checked", false);
  }
}
