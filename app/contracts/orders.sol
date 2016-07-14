contract Orders {

	uint public orders;
	uint public transit;

    modifier atLeast(uint amount) {
        if (amount <= orders) throw;
        _
    }

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

	function inTransit (uint amount) atLeast(amount) returns (bool success){
			orders -= amount;
			transit += amount;
			return true;
	}

	function delivered (uint amount) atLeast(amount) returns (bool success) {
			transit -= amount;
	        return true;
	}
}
