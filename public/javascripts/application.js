$(function() {
    $('img[data-hover]').hover(function() {
        $(this).attr('tmp', $(this).attr('src')).attr('src', $(this).attr('data-hover')).attr('data-hover', $(this).attr('tmp')).removeAttr('tmp');
    }).each(function() {
        $('<img />').attr('src', $(this).attr('data-hover'));
    });;
});

$(document).ready(function() {	
	$('.segmented-control a').mouseover(function() {
		
		if	($(this).attr('data-hover') == 'app-info')  {
						$('.app-info').fadeIn(1000);
						}
			else { 
						$('.app-info').hide();
						}

			if	($(this).attr('data-hover') == 'app-videos')  {
							$('.app-videos').fadeIn(1000);
							}
				else { 
							$('.app-videos').hide();
							}
	
			if	($(this).attr('data-hover') == 'app-testimonials')  {
							$('.app-testimonials').fadeIn(1000);
							}
				else { 
							$('.app-testimonials').hide();
							}
							
			if	($(this).attr('data-hover') == 'app-support')  {
							$('.app-support').fadeIn(1000);
							}
				else { 
							$('.app-support').hide();
							}
	});	// end mouseover		 
	
	$('.segmented-control a').click(function() {
		
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
	});	// end click
	
	var $body = $('body');
	
	var setFontSize = function() {
		var fontSize = 100;
	
		fontSize = $body.width() / 10;

		$('body').css('font-size', fontSize + '%');	
		$('head').css('font-size', fontSize + '%');			
	}
	
	$(window).resize(function() {
		setFontSize();
	});  // end font resize
	
	var setSideBodyHeight = function() {

		var $mainBody = $('#body_content_left');
		var $sideBody = $('#body_content_right');
				
	

		sideBodyHeight = $sideBody.innerHeight();
		equalHeight = $mainBody.innerHeight();		

		if (sideBodyHeight > equalHeight) {	equalHeight = sideBodyHeight;}
//		alert(equalHeight);		
//		$('#body_content_left').css('height', equalHeight );	
//		$('#body_content_right').css('height', equalHeight);	
//		alert($sideBody.height());
//		alert($mainBody.innerHeight());
//		alert(equalHeight);	
	}
	
	$(window).resize(function() {
		setSideBodyHeight();
		
	});  // end side body resize
	
	setFontSize();
	setSideBodyHeight();
	

}); // end ready
	
