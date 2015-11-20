var todoApp = angular.module('restaurantApp', []);

todoApp.controller('RestaurantCtrl', function ($scope,$http) {

  $scope.restaurants = [];

  $scope.newRestaurant = {};

  $scope.new = function() {
    var newItem = {
      "name":$scope.newRestaurant.name,
      "description":$scope.newRestaurant.description,
      "username":$scope.newRestaurant.username,
      "house_name_no":$scope.newRestaurant.house_name_no,
      "street":$scope.newRestaurant.street,
      "postcode":$scope.newRestaurant.postcode
    };
    saveNew(newItem)
  };

  $http.get('/api/restaurant').then(function successCallback(response) {
    $scope.restaurants = response.data
  });

  function saveNew(restaurant) {
    $http.post('/api/restaurant', restaurant).then(function successCallback(response) {
      $scope.restaurants.push(response.data)
    })
  }


});