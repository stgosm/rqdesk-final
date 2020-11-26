(function ($) {

	"use strict";

	var fullHeight = function () {

		$('.js-fullheight').css('height', $(window).height());
		$(window).resize(function () {
			$('.js-fullheight').css('height', $(window).height());
		});

	};
	fullHeight();

	$('#sidebarCollapse').on('click', function () {
		$('#sidebar').toggleClass('active');
	});

})(jQuery);

function SaveWithParameter(parameter, btn) {
	__doPostBack(btn.id, parameter);
	console.log('Id ' + btn.id);
	console.log('Parameter ' + parameter);
}

function openModal() {
	$('#modalRQ').modal({ show: true });
}

function closeModalNewRequirement() {
	$('#newModalRQ').modal({ show: false });
	$('#newModalRQ').modal('hide');
	$('#modalRQ').modal({ show: false });
	$('#modalRQ').modal('hide');
}

function obtenerJson() {
	window.open(
		'/json/requirements.json',
		'_blank'
	);
}

$(document).ready(function () {
	$('#exa').DataTable();
});
