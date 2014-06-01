$(window).load(function(){

	// Dropdown activate
	$('.dropdown-toggle').dropdown();

	// hide #back-top first
	if ($(this).scrollTop() < ($("body").height() - ($("#footer").outerHeight(true)*2))) {
		$("#arrow-up").hide();
	}
	
	// fade in #back-top
	$(function () {
		$(window).scroll(function () {
			if ($(this).scrollTop() >  ($("body").height() - ($("#footer").outerHeight(true)*2))) {
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

	// Chosen configuration
	$('.chosen-select').chosen({
		allow_single_deselect: true,
		no_results_text: 'No se encontraron resultados',
		placeholder_text_multiple: "Seleccione una opcion",
		width: '750px'
	});

	$('.chz-select-departamento').chosen({
		allow_single_deselect: true,
		no_results_text: 'No se encontraron resultados',
		placeholder_text: "Seleccione un departamento",
		width: '250px'
	});

});