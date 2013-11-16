$(document).ready(function() {
    //Menu
    $("ul.topnav > li").hover(function() {
        $(this).find("ul.subnav").show();
        $(this).addClass("subhover");
        $(this).next().attr('style','border-left: 1px solid #fff');
    }, function() {
        $(this).removeClass("subhover");
        $(this).find("ul.subnav").hide();
        if($(this).hasClass('active')){
            $(this).next().attr('style','border-left: 1px solid #fff');
        }else{
            $(this).next().attr('style','border-left: 1px solid rgb(240, 239, 235)');
        }
    });
    $("ul.topnav > li.active").next().attr('style','border-left: 1px solid #fff');

    //Scroll On Top (home page)
    $("#scrollTop").carouFredSel({
        items: 5,
        mousewheel: true,
        scroll: {
            items: 3,
            easing: "swing",
            duration: 500,
            pauseOnHover: true
        }
    });
    
});

$(function(){
    if($.browser.msie && parseInt($.browser.version, 10) === 7){
        var zIndexNumber = 3000;
	$('nav,ul,li').each(function() {
		$(this).css('zIndex', zIndexNumber);
		zIndexNumber -= 10;
	});
    }
});