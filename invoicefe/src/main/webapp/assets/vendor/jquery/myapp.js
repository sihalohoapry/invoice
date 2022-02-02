$(function () {
	
	switch (menu) {
	case 'List Invoice':
		$('#listInvoice').addClass("active");
		break;

	default:
		$('#dashboard').addClass("active");
		break;
	}
	
});