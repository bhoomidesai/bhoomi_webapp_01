
var app = angular.module('myApp', []);
app.controller('myCtrl', function($scope, $http) {
    $http.get("/bhoomi_webapp_01/v/get")
    .then(function(response) {
        $scope.names = response.data;
    });
    $scope.orderByMe = function(x) {
        $scope.myOrderBy = x;
    }
});
app.controller("cartCtrl", function($scope, $http) {

	$scope.refreshCart = function() {
		$http.get('/bhoomi_webapp_01/customer/rest/cart/' + $scope.cartId).success(
				function(data) {
					$scope.cart = data;
				});
	};

	/*
	 * $scope.clearCart = function(){ $http.delete('/rest/cart/' +
	 * $scope.cartId).success($scope.refreshCart()); };
	 */

	$scope.initCartId = function(cartId) {
		$scope.cartId = cartId;
		$scope.refreshCart(cartId);
	};

	$scope.addToCart = function(id) {
		alert(id);
		$http.put('/bhoomi_webapp_01/customer/rest/cart/add/' + id).success(
				function() {
					//quantity=quantity-1;
					alert('Product successfully added to the cart!');
				});
	};

	$scope.removeFromCart = function(id) {
		$http.put('/bhoomi_webapp_01/customer/rest/cart/remove/' + id).success(
				function(data) {
					$scope.refreshCart();
				});
	};

	$scope.calGrandTotal = function() {
		var grandTotal = 0;

		for (var i = 0; i < $scope.cart.cartItems.length; i++) {
			grandTotal += $scope.cart.cartItems[i].totalPrice;
		}

		return grandTotal;
	}
});