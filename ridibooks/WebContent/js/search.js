$(".img").on("click", function click() {
	var bookvalue = $("#bookList").attr("value")
	
	location.href="/infomation?num="+bookvalue;
});