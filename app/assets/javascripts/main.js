$(window).load(function(){

	// Dropdown activate
	$('.dropdown-toggle').dropdown();

	// hide #back-top first
	if ($(this).scrollTop() < 933){
		$("#arrow-up").hide();
	}
	
	// fade in #back-top
	$(function () {
		$(window).scroll(function () {
			if ($(this).scrollTop() > 933) {
				$('#arrow-up').fadeIn();
			} else {
				$('#arrow-up').fadeOut();
			}

			if ($(this).scrollTop() >= 1078 && $(this).scrollTop() <= 1484 )  {
				$('#arrow-up i').css("color","#015187");
			} else {
				$('#arrow-up i').css("color","#fff");
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

});