
//Sticky main menu on scroll
$(window).bind('scroll', function () {
    if ($(window).scrollTop() > 155) {
        $('#main-menu').addClass('fixed');
    }
    else {
        $('#main-menu').removeClass('fixed');
    }
});

//PIN dropdown toggle
$(document).ready(function () {
    $("#pin-dropdown").click(function () {
        $(this).toggleClass("active");
    });
});

//Toggle buttons
$(document).ready(function () {
    //Hosting
    if ($('#headline:contains("WordPress")').length) {
        $(".hosting-tabs li:nth-child(1) a").addClass("active");
    }
    if ($('#headline:contains("Linux")').length) {
        $(".hosting-tabs li:nth-child(2) a").addClass("active");
    }
    if ($('#headline:contains("Windows")').length) {
        $(".hosting-tabs li:nth-child(3) a").addClass("active");
    }
    //Exchange - SmarterMail - Office
    if ($('.header-lined:contains("Exchange")').length) {
        $(".hosting-tabs li:nth-child(1) a").addClass("active");
    }
    if ($('.header-lined:contains("SmarterMail")').length) {
        $(".hosting-tabs li:nth-child(2) a").addClass("active");
    }
    if ($('.header-lined:contains("Office 365 Business")').length) {
        $(".hosting-tabs li:nth-child(3) a").addClass("active");
    }
});

//Remove type from title in package comparisons and USD in ssl template
$(document).ready(function () {
    //Hosting
    $('.top-area h4:contains("WordPress")').each(function () {
        $(this).html($(this).html().split("WordPress").join(""));
    });
    $('.top-area h4:contains("Linux")').each(function () {
        $(this).html($(this).html().split("Linux").join(""));
    });
    $('.top-area h4:contains("Windows")').each(function () {
        $(this).html($(this).html().split("Windows").join(""));
    });
    //FSD
    $('.top-area h4:contains("FSD -")').each(function () {
        $(this).html($(this).html().split("FSD -").join(""));
    });
    //SSL
    $('.standard-ct footer:contains("USD")').each(function () {
        $(this).html($(this).html().split("USD").join(""));
    });
});
