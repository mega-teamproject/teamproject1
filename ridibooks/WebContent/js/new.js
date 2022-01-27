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

$(".order a").on("click", function(e) {
    e.preventDefault();
    $(".order a.order-active").removeClass("order-active");
    $(e.target).addClass("order-active");
});

$(".view button").on("click", function(e) {
    $(".view button.view-active").removeClass("view-active");
    $(this).addClass("view-active");
    console.log($(this).attr("id"));
    if($(this).attr("id") == "view-simple") {
        $(".book-list2").css("display", "none");
        $(".book-list1").css("display", "block");
    } else {
        $(".book-list1").css("display", "none");
        $(".book-list2").css("display", "block");
    }
});

$(".pagination a").on("click", function() {
    $(".pagination .active").removeClass("active");
    $(this).parent().addClass("active");
});
$(".pagination .next").off("click")
$(".pagination .next").on("click", function() {
    let next = $(this).attr("next");
    next = parseInt(next);

    for(let i=0; i<5; i++){
        let y = i+2;
        let z = next + i;
        $(".pagination li:nth-child(" + y + ") a").text(z);

    }

    $(".pagination .active").removeClass("active");
    $(".pagination li:nth-child(2)").addClass("active");

    $(this).attr("next", next+5);
    $(".pagination .prev").attr("prev", next-1);
    $(".pagination li:first-child").css("visibility", "visible");

    if(next == 46) {
        $(".pagination li:last-child").css("visibility", "hidden");
    }
});
$(".pagination .prev").off("click")
$(".pagination .prev").on("click", function() {
    let prev = $(this).attr("prev");
    prev = parseInt(prev);

    for(let i=0; i<5; i++){
        let y = 6-i;
        let z = prev - i;
        $(".pagination li:nth-child(" + y + ") a").text(z);

    }

    $(".pagination .active").removeClass("active");
    $(".pagination li:nth-child(6)").addClass("active");

    $(this).attr("prev", prev-5);
    $(".pagination .next").attr("next", prev+1);
    $(".pagination li:last-child").css("visibility", "visible");

    if(prev == 5) {
        $(".pagination li:first-child").css("visibility", "hidden");
    }
});