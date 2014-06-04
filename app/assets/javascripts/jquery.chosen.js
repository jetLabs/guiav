$(window).load(function(){
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
		width: '400px'
	});

});