$(window).load(function(){

	// Dropdown activate
	$('.dropdown-toggle').dropdown();

	// hide #back-top first
	if ($(this).scrollTop() < 400) {
		$("#arrow-up").hide();
	}
	
	// fade in #back-top
	$(function () {
		$(window).scroll(function () {
			if ($(this).scrollTop() >  500) {
				$('#arrow-up').fadeIn();
			} else {
				$('#arrow-up').fadeOut();
			}
		});

		// scroll body to 0px on click
		$('#arrow-up i').click(function () {
			$('body,html').animate({
				scrollTop: 0
			}, 800);
			return false;
		});
	});

   $(document).ready(function(){
          $("ul.youtube-videogallery").youtubeVideoGallery( );
      });

	

});
