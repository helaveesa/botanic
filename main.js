var j = jQuery.noConflict();
j(document).ready(function() {
    j(".center_col .office .vts .photos img").addClass("photo_fancy");
	j(".center_col .office .vts .photos li:not('.other_alb') a").fancybox({'transitionIn': 'fade',
                                                       'transitionOut': 'fade',
                                                       'speedIn': 600,
                                                       'speedOut': 200,
                                                       'overlayShow': false,
                                                       'cyclic' : true,
                                                       'padding': 20,
                                                       'titlePosition': 'over',
                                                       'onComplete': function() {
                                                       j("#fancybox-title").css({ 'top': '100%', 'bottom': 'auto' });
						                              }
				                                });
    j(".bottom_images .bottom_photos li a").fancybox({'transitionIn': 'none',
                                                       'transitionOut': 'none',
                                                       'speedIn': 600,
                                                       'speedOut': 200,
                                                       'overlayShow': false,
                                                       'cyclic' : true,
                                                       'padding': 20,
                                                       'titlePosition': 'over',
                                                       'onComplete': function() {
                                                       j("#fancybox-title").css({ 'top': '100%', 'bottom': 'auto' });
						                              }
				                                });
	j(".center_col .catalog .main_catalog .one-tovar_img-wrap  a").fancybox({'transitionIn': 'none',
                                                       'transitionOut': 'none',
                                                       'speedIn': 600,
                                                       'speedOut': 200,
                                                       'overlayShow': false,
                                                       'cyclic' : true,
                                                       'padding': 20,
                                                       'titlePosition': 'over',
                                                       'onComplete': function() {
                                                       j("#fancybox-title").css({ 'top': '100%', 'bottom': 'auto' });
						                              }
				                                });


	var active_url = location.pathname;
	j("nav ul li a").each(function(){
	   	var a_link = j(this).attr("href");
		if (active_url == a_link){
			j(this).addClass("active");
		}

	});

	/*addEvent(window, 'load', initCorners);
        function initCorners() {
                var setting = {
                tl: { radius: 6 },
                tr: { radius: 6 },
                bl: { radius: 6 },
                br: { radius: 6 },
                antiAlias: true
        }
                curvyCorners(setting, ".photo_fancy");
    }*/



});



