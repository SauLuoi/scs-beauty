
// scroll
// ==================================================
// スムーズスクロール - smoothScrolling
$(function() {
    $('a[href^="#"]').click(function() {
        var target = $(this.hash);
        var speed = 500;
        var body = target.offset().top;
        $("html, body").animate({
            scrollTop: body
        }, speed, "swing");
        return false;
    });
});

// page up //
$(document).ready(function() {
    var flag = false;
    var page_up = $('.page_up');
    $(window).scroll(function() {
        if ($(this).scrollTop() > 50) {
            if (flag == false) {
                flag = true;
                page_up.stop().animate({
                    'right': '3%'
                }, 500);
            }
        } else {
            if (flag) {
                flag = false;
                page_up.stop().animate({
                    'right': '-500px'
                }, 500);
            }
        }
    });
    page_up.click(function() {
        $('body, html').animate({
            scrollTop: 0
        }, 500);
        return false;
    });

});

$(window).on("resize load",function () {
    let mql = window.matchMedia("(max-width: 1000px)");
    $("#header .navbar .subnavbtn i").unbind( "click");
    if(mql.matches==true){
        $("#header .navbar .subnavbtn i").on("click",function(e) {
            e.preventDefault()
            $(this).parent().parent().toggleClass("open-nav").find('.subnav-content').slideToggle()
            $("body").toggleClass("is-nav")
        })
    }
})

/**hamburger */
$(".hamburger,.subnav-content a").click(function() {
    $(this).toggleClass("open").find(".menu").toggleClass("active")
    $("body").toggleClass("is-nav")
    $("#gnav").slideToggle()
})



$(".btn-language").click(function() {
    $("body").toggleClass("is-language")
    $(".language").slideToggle()
})


$(".button-menu").click(function() {
    $("body").toggleClass("is-sideBar")
})


// detect height mobile
const windowHeight = () => {
    const doc = document.documentElement
    doc.style.setProperty('--wh', `${window.innerHeight}px`)
}
window.addEventListener('resize', windowHeight);
windowHeight();

$(document).ready(function() {
    var toggle=$(".toggle")
    if(toggle){
        toggle.find(".toggle-main").css({
            display: 'none'
        })
        toggle.find(".toggle-link").click(function () {
            $(this).parent().toggleClass('active')
            $(this).next().slideToggle()
        })
    }
});

//FIX HEIGHT ELEMENT
//use element.tile(columns)
;(function($) {
    $.fn.tile = function(columns) {
        var tiles, max, c, h, last = this.length - 1,
            s;
        if (!columns) columns = this.length;
        this.each(function() {
            s = this.style;
            if (s.removeProperty) s.removeProperty("height");
            if (s.removeAttribute) s.removeAttribute("height");
        });
        return this.each(function(i) {
            c = i % columns;
            if (c == 0) tiles = [];
            tiles[c] = $(this);
            h = tiles[c].height();
            if (c == 0 || h > max) max = h;
            if (i == last || c == columns - 1)
                $.each(tiles, function() {
                    this.height(max);
                });
        });
    };
})(jQuery);
//END FIX HEIGHT ELEMENT


function setColorText() {
    const reg = /^c_(?:[0-9a-fA-F]{3,4}){1,2}$/gm;
    this.className = "c_";
    objCN = new Array();
    var objAll = document.getElementsByTagName ? document.getElementsByTagName("*") : document.all;
    for (var i = 0; i < objAll.length; i++) {
        if (typeof objAll[i].className == "string") {
            var eltClass = objAll[i].className.split(/\s+/);
            for (var j = 0; j < eltClass.length; j++) {
                if (eltClass[j] == this.className) {
                    if (!objCN["main CN"]) objCN["main CN"] = new Array();
                    objCN["main CN"].push(objAll[i]);
                    break;
                } else if (eltClass[j].match(reg)) {
                    var OCN = eltClass[j].match(reg)
                    if (!objCN[OCN]) objCN[OCN] = new Array();
                    objCN[OCN].push(objAll[i]);
                    break;
                }
            }
        }
    }
    for(var key in objCN){
        if(objCN.hasOwnProperty(key)){
            for (var i = 0; i < objCN[key].length; i++) {
                objCN[key][i].style.color= "#"+key.slice(2);
            }
        }
    }
}
function setColorbackground() {
    const reg = /^bg_(?:[0-9a-fA-F]{3,4}){1,2}$/gm;
    this.className = "bg_";
    objCN = new Array();
    var objAll = document.getElementsByTagName ? document.getElementsByTagName("*") : document.all;
    for (var i = 0; i < objAll.length; i++) {
        if (typeof objAll[i].className == "string") {
            var eltClass = objAll[i].className.split(/\s+/);
            for (var j = 0; j < eltClass.length; j++) {
                if (eltClass[j] == this.className) {
                    if (!objCN["main CN"]) objCN["main CN"] = new Array();
                    objCN["main CN"].push(objAll[i]);
                    break;
                } else if (eltClass[j].match(reg)) {
                    var OCN = eltClass[j].match(reg)
                    if (!objCN[OCN]) objCN[OCN] = new Array();
                    objCN[OCN].push(objAll[i]);
                    break;
                }
            }
        }
    }
    for(var key in objCN){
        if(objCN.hasOwnProperty(key)){
            for (var i = 0; i < objCN[key].length; i++) {
                objCN[key][i].style.backgroundColor = "#"+key.slice(3);
            }
        }
    }
}
setColorbackground()
setColorText()