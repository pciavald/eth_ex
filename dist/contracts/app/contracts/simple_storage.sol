contract Orders {

	uint public orders;
	uint public transit;

	function Orders() {
		orders = 0;
		transit = 0;
	}

	function acceptOrder (uint amount) {
		orders += amount;
	}

	function getOrders() constant returns (uint) {
		return (orders);
	}

	function getTransit() constant returns (uint) {
		return (transit);
	}

	function inTransit (uint amount) {
		if (amount <= orders) {
			orders -= amount;
			transit += amount;
		}
		else
			throw ;
	}

	function delivered (uint amount) {
		if (amount <= transit) {
			transit -= amount;
		}
		else
			throw ;
	}
}
