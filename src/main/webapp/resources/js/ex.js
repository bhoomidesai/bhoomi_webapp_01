
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