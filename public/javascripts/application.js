$(function() {
    $('img[data-hover]').hover(function() {
        $(this).attr('tmp', $(this).attr('src')).attr('src', $(this).attr('data-hover')).attr('data-hover', $(this).attr('tmp')).removeAttr('tmp');
    }).each(function() {
        $('<img />').attr('src', $(this).attr('data-hover'));
    });;
});

$(document).ready(function() {	
	$('.segmented-control a').mouseover(function() {
		
		if	($(this).attr('data-hover') == 'meo-info')  {
						$('.meo-info').fadeIn(1000);
						}
			else { 
						$('.meo-info').hide();
						}

			if	($(this).attr('data-hover') == 'meo-videos')  {
							$('.meo-videos').fadeIn(1000);
							}
				else { 
							$('.meo-videos').hide();
							}
	
			if	($(this).attr('data-hover') == 'meo-testimonials')  {
							$('.meo-testimonials').fadeIn(1000);
							}
				else { 
							$('.meo-testimonials').hide();
							}
							
			if	($(this).attr('data-hover') == 'meo-support')  {
							$('.meo-support').fadeIn(1000);
							}
				else { 
							$('.meo-support').hide();
							}
	});	// end mouseover		 
}); // end ready
	
