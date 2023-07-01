$(document).ready(function () {

    $('.mv_slider').slick({
        dots: true,
        infinite: true,
        speed: 1000,
        autoplaySpeed: 2500,
        fade: true,
        cssEase: 'linear',
        autoplay: true,
        arrows: true,
        responsive: [
            {
                breakpoint: 767,
                settings: {
                    arrows: false,
                }
            }
        ]
    });

    $('.s1_slider').slick({
        dots: false,
        infinite: true,
        speed: 3000,
        slidesToShow: 4,
        slidesToScroll: 1,
        autoplay: true,
        responsive: [
            {
                breakpoint: 767,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 1,
                }
            }
        ]
    });

    $('.s5_slider').slick({
        slidesToShow: 9,
        slidesToScroll: 1,
        autoplay: true,
        autoplaySpeed: 0,
        speed: 8000,
        pauseOnHover: false,
        cssEase: 'linear',
        arrows: false,
        responsive: [
            {
                breakpoint: 1919,
                settings: {
                    slidesToShow: 7,
                }
            },
            {
                breakpoint: 1200,
                settings: {
                    slidesToShow: 5,
                }
            },
            {
                breakpoint: 767,
                settings: "unslick"
            }
        ]
    });

    $('.slider_recommend').slick({
        dots: false,
        infinite: true,
        speed: 3000,
        slidesToShow: 3,
        slidesToScroll: 1,
        autoplay: true,
        arrows: true,
        responsive: [
            {
                breakpoint: 767,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 1,
                    arrows: false,
                }
            }
        ]
    });

    setTimeout(function () {
        $('.wdi_feed_wrapper').slick({
            slidesToShow: 9,
            slidesToScroll: 1,
            autoplay: true,
            autoplaySpeed: 0,
            speed: 8000,
            pauseOnHover: false,
            cssEase: 'linear',
            arrows: false,
            responsive: [
                {
                    breakpoint: 1919,
                    settings: {
                        slidesToShow: 7,
                    }
                },
                {
                    breakpoint: 1200,
                    settings: {
                        slidesToShow: 5,
                    }
                },
                {
                    breakpoint: 767,
                    settings: "unslick"
                }
            ]
        });
    }, 2000)

    setHeightItem();

    HidePagiSlide();

});

function setHeightItem() {
    var widthItem = $('.sec01 .inner .item figure, .sec02 .inner .item figure, .list-item-post .item figure');
    widthItem.height(widthItem.width());
}

function HidePagiSlide() {
    var item = $('.box-slider .item');
    if(item.length === 1){
        $('.box-slider .slick-dots').hide();
    }
    console.log(item.length);
}
