$(function() {
	$('.mat-input-outer label').click(function() {
		$(this).prev('input').focus();
	});
	$('.mat-input-outer input').focusin(function() {
		$(this).next('label').addClass('active');
	});
	$('.mat-input-outer input').focusout(function() {
		if (!$(this).val()) {
			$(this).next('label').removeClass('active');
		} else {
			$(this).next('label').addClass('active');
		}
	});
});

