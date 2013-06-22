(function($) {
	$(document).ready(function() {
		if ($('#edit-field-live-und').attr('checked')) {
			$('.field-name-field-phone-numbers').css('display', 'block');
		} else {
			$('.field-name-field-phone-numbers').css('display', 'none');
		}

		$('#edit-field-live-und').mousedown(function() {
			if (!$(this).is(':checked')) {
				$('.field-name-field-phone-numbers').css('display', 'block');
			} else {
				$('.field-name-field-phone-numbers').css('display', 'none');
			}
		});

	});
})(jQuery);