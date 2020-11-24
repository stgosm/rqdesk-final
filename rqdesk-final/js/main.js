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

/*$('#modalRQ').on('show.bs.modal', function (event) {
	var button = $(event.relatedTarget) // Button that triggered the modal
	var recipient = button.data('whatever') // Extract info from data-* attributes
	// If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
	// Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
	var modal = $(this)
	modal.find('.modal-title').text('New message to ' + recipient)
	modal.find('.modal-body input').val(recipient)
})*/

/*function btnEditar_Click(btn) {
	//document.getElementById("ContentPlaceHolder1_HiddenValueEditar").value = "Tajuddin";
	var str = document.getElementById("ContentPlaceHolder1_HiddenValueEditar");
	str.value = btn.id;
	console.log(str.value);
}*/

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

$(document).ready(function () {
	$('#exa').DataTable();
});
