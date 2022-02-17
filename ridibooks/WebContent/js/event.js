$(".main-nav li").on("click", function(){
    $(".main-nav a.active").removeClass("active");
    console.log(this);
    $(".main-nav a").addClass("active");
});

$(".pagination a").on("click", function() {
    $(".pagination .active").removeClass("active");
    $(this).parent().addClass("active");

    if($("#first").hasClass("active")) {
        $(".pagination li:first-child").css("visibility", "hidden");
        $(".pagination li:last-child").css("visibility", "visible");
        $("#last-con").hide();
        $("#main-con").show();
    } else {
        $(".pagination li:last-child").css("visibility", "hidden");
        $(".pagination li:first-child").css("visibility", "visible");
        $("#main-con").hide();
        $("#last-con").show();
    }
});
$(".pagination .next").off("click")
$(".pagination .next").on("click", function() {
    $("#first").removeClass("active");
    $("#second").addClass("active");
    $("#main-con").hide();
    $("#last-con").show();
    $(".pagination li:last-child").css("visibility", "hidden");
    $(".pagination li:first-child").css("visibility", "visible");
});
$(".pagination .prev").off("click")
$(".pagination .prev").on("click", function() {
    $("#second").removeClass("active");
    $("#first").addClass("active");
    $("#last-con").hide();
    $("#main-con").show();
    $(".pagination li:first-child").css("visibility", "hidden");
    $(".pagination li:last-child").css("visibility", "visible");
});