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
    $target.addClass("main-active"); 
    // console.log($target);
    // console.log($("#main-novel"));
    // console.log($(".left-arrow"));
    // console.log($(".submenu-list"));
    $(".left-arrow").removeClass("active-arrow");
    $(".submenu-list").removeClass("active-sublist");

    // $target을 사용해서 현재 마우스를 올린 li 태그의
    // 자식의 자식들 중에서 마지막 자식을 보이도록 CSS를 설정한다.
    // find() / $('ul').find('span:eq(0)');
    let $span = $target.find("span.left-arrow");
    $span.addClass("active-arrow");

    // 현재 마우스를 올린 li 태그의 부모 태그로 올라가서
    // 부모 태그의 자식들을 가져옴 childeren()
    let $index = $target.index();
    let $submenu = $(".sub-menu").children("div:eq(" + $index + ")");
    $submenu.addClass("active-sublist");

    // 가져온 자식 중에 현재 마우스를 올린 li 태그가 몇 번째 자식인지 알려주는 메서드를 사용해서
    // 몇 번째 자식인지 파악 후 index()
    // 그 몇 번째를 활용해 sub-menu div 몇 번째를 활성화
}, function() {
    $(".main-menu ul li").removeClass("main-active");
    $(".left-arrow").removeClass("active-arrow");
    $(".submenu-list").removeClass("active-sublist");
    $(".fixed-active").addClass("main-active");
    $("#main-arrow").addClass("active-arrow");
    $("#novel").addClass("active-sublist");
});