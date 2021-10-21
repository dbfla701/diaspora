/* scrollTop */
$(function () {
    $(window).scroll(function () {
        if ($(this).scrollTop() > 100) {
            $('.scroll_top').fadeIn();
        } else {
            $('.scroll_top').fadeOut();
        }
    });

    $(".scroll_top").click(function () {
        $('html, body').animate({
            scrollTop: 0
        }, 400);
        return false;
    });
});

$(document).ready(function () {
    var idx = 0;
    $('.tab_wrap li').click(function (e) {
        e.preventDefault();
        idx = $(this).index();
        $(".tab_wrap li").removeClass("on");
        $(".tab_wrap li").eq(idx).addClass("on");
        $(".tab_cont_wrap > div").hide();
        $(".tab_cont_wrap > div").eq(idx).show();
    });

    /*$('.slick_wrap').slick({
        slidesToShow: 3,
        slidesToScroll: 1,
        arrows: true,
        dots: true,
        prevArrow: $('.left_prev'),
        nextArrow: $('.right_next'),

        responsive: [ // 반응형 웹 구현 옵션
            {
                breakpoint: 768,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 1
                }
                    },
            {
                breakpoint: 576,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1
                }
                    }
                ]
    });*/
});