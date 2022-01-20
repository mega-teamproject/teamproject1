$(".footer-info a").on("click", function() {
    let show = $(".footer-info p.invisible");
    if(show.css("display") == "none") {
        show.css("display", "block");
    } else {
        show.css("display", "none");
    }
    
});

$(".footer-wrapper2 a.a-invisible").on("click", function() {
    $(".footer-wrapper2 a.a-invisible").css("display", "none");
    $(".footer-wrapper2 a p.invisible").css("display", "block");
});

$(".full-input input").on("click", function() {
    $(".search-list").css("display", "block");
});

$(".search-input i").on("click", function() {
    $(".search-list").css("display", "none");
});
$(".bg-black").on("click", function() {
    $(".search-list").css("display", "none");
});
$(".response input").on("click", function() {
    $(".recent-search").css("display", "block");
});

$("html").on("click", function(e){ 
    let $tgPoint = $(e.target);
    let $input = $tgPoint.attr("id");
    let $search = $tgPoint.hasClass('.recent-search');
    if(!$input && !$search) {
        $(".recent-search").css("display", "none");
    }
});

$(".main-menu ul li").hover(function(e) {
    let $target = $(e.target);
    $(".main-menu ul li").removeClass("main-active");
    $($target).addClass("main-active"); 
    if($target == $("#main-novel")) {
        $(".left-arrow").removeClass("active-arrow");
        $("#main-arrow").addClass("active-arrow");
        $(".submenu-list").removeClass("active-sublist");
        $("#novel").addClass("active-sublist");
    } else if($target == $("#biz-novel")) {
        $(".left-arrow").removeClass("active-arrow");
        $("#biz-arrow").addClass("active-arrow");
        $(".submenu-list").removeClass("active-sublist");
        $("#biz").addClass("active-sublist");
    }

}, function() {
    $(".main-menu ul li").removeClass("main-active");
    $(".fixed-active").addClass("main-active");
});