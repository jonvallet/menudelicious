var restaurantApp = angular.module('restaurantApp', []);

restaurantApp.controller('RestaurantCtrl', function ($scope,$http) {

  $scope.categories = [];
  $scope.restaurants = [];
  $scope.menu_items = [];
  $scope.allergies = [];
  $scope.chosenRestaurant = null;
  $scope.restaurantType = 0;
  $scope.data = [];

  $http.get('/api/restaurant/categories').then(function successCallback(response) {

      $scope.categories = response.data;
  });

  $http.get('/api/restaurant/allergies').then(function successCallback(response) {

        $scope.allergies = response.data;
  });

  $scope.chooseRestaurantType = function() {

    var type = $scope.data.multipleSelect;

    $http.get('/api/restaurant/filter/category/'+type).then(function successCallback(response) {

        $scope.restaurants = response.data.records;
    });

  }

  $scope.chooseRestaurant = function(restaurant_id) {

    $http.get('/api/restaurant/'+ restaurant_id +'/menu').then(function successCallback(response) {
            $scope.menu_items = response.data
    });
  }

  $scope.home = function() {

    $scope.restaurants = [];
    $scope.menu_items = [];
    $scope.chosenRestaurant = null;
  }

});