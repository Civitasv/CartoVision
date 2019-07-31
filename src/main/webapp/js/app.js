$(document).ready(function () {
    $('body').addClass('loaded');
    $('#loader-wrapper .load_title').remove();
    $.scrollUp({
        scrollName: "scrollUp",
        topDistance: "300",
        topSpeed: 300,
        animation: "fade",
        animationInSpeed: 200,
        animationOutSpeed: 200,
        scrollText: '<i class="fa fa-angle-double-up"></i>',
        activeOverlay: !1
    });

    // Slow scrolling
    function slowScrolling() {
        let anchors = document.querySelectorAll('a[href*="#"]')
        if (anchors == null)
            return;
        for (let anchor of anchors) {
            anchor.addEventListener('click', function (e) {
                e.preventDefault()

                let blockID = anchor.getAttribute('href')

                document.querySelector('' + blockID).scrollIntoView({
                    behavior: 'smooth',
                    block: 'start'
                });
            });
        }
        ;
    };
    slowScrolling()
    initLG();
    $(".image img").hide();
    $(".image span").hide();
    $("#qq_image").mouseover(function () {
        $(".image img").removeClass("bounceOutUp delay-1s");
        $(".image img").addClass("bounceInDown");
        $(".image img").attr("src", "${path}/image/welcome.jpg");
        $(".image img").show();
    })
    $("#qq_image").mouseout(function () {
        $(".image img").removeClass("bounceInDown");
        $(".image img").addClass("bounceOutUp delay-1s");
    })
    $("#weixin_image").mouseover(function () {
        $(".image img").removeClass("bounceOutUp delay-1s");
        $(".image img").addClass("bounceInDown");
        $(".image img").attr("src", "${path}/image/tencent.jpg");
        $(".image img").show();
    })
    $("#weixin_image").mouseout(function () {
        $(".image img").removeClass("bounceInDown");
        $(".image img").addClass("bounceOutUp delay-1s");
    })

    /*// initialize the plugin, pass in the class selector for the sections of content (blocks)
    var scrollorama = $.scrollorama({blocks: '.scroll-block'});

    scrollorama
        .animate('#presentation_text', {delay: 0, duration: 600, property:'zoom', start:8,pin:true});*/
    /*anime({
        targets: '.summary-title',
        translateY: -200,
        direction: 'alternate',
        loop: false,
        duration: 2000,
        easing: function(el, i, total) {
            return function(t) {
                return Math.pow(Math.sin(t * (i + 1)), total);
            }
        }
    });*/
});