//navbar slide-2-fixed
var $navbar = $('.navbar');
var $navOffset = $navbar.offset().top;
$navbar.wrap('<div class="nav-placeholder"></div>');
$('.nav-placeholder').height($navbar.outerHeight());

$(window).scroll(function() {
    var $scrollPos = $(window).scrollTop();
    if($scrollPos >= $navOffset) {
        $navbar.addClass("navbar-fixed-top");
    }
    else{
        $navbar.removeClass("navbar-fixed-top");
    };
});  
