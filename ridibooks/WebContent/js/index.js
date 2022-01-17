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

function printTime() {
    let clock = document.getElementById("real-time");
    console.log(clock);
    let date = new Date();
    
    clock.innerHTML = 
    date.getHours() + "시" + "  " +
    date.getMinutes() + "분";

    setTimeout("printTime()", 60000);
}
window.onload = function() {
    printTime();
}
