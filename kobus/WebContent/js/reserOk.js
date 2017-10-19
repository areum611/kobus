function showPassword() {

	var key_attr = $('#key').attr('type');

	if (key_attr != 'text') {

		$('.checkbox').addClass('show');
		$('#key').attr('type', 'text');

	} else {

		$('.checkbox').removeClass('show');
		$('#key').attr('type', 'password');

	}

}

$(document).ready(function() {
	$('#cancelbtn').click(function() {
		var cancelbtn = confirm('취소하시겠습니까?');
		if (cancelbtn) {
			$(this).parents('form').submit();
//			location.replace('/kobus/pay?cmd=cancelSubmit');
		} else {
			return;
		}
	});
});
