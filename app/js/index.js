$(document).ready(function() {

	$("#order").click(function () {
		var value = parseInt($("#orderAmount").val(), 10);
		Orders.acceptOrder(value);
	});

	$("#pending").click(function () {
		var value = Orders.getOrders();
		$("#pendingAmount").val(value);
	});

	$("#transit").click(function () {
		var value = Orders.getTransit();
		$("#transitAmount").val(value);
	});

	$("#gotProducts").click(function () {
		var value = parseInt($("#gotAmount").val(), 10);
		Orders.inTransit(value);
	});

	$("#received").click(function () {
		var value = parseInt($("#receivedAmount").val(), 10);
		Orders.delivered(value);
	});

});
