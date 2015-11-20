var restaurantApp = angular.module('restaurantApp', []);

restaurantApp.controller('RestaurantCtrl', function ($scope,$http) {

  $scope.categories = [];
  $scope.restaurants = [];
  $scope.menu_items = [];
  $scope.allergies = [];
  $scope.chosenRestaurant = null;
  $scope.restaurantType = null;

  $http.get('/api/restaurant/categories').then(function successCallback(response) {

      $scope.categories = response.data;
  });

  /*$http.get('/api/allergies').then(function successCallback(response) {

        $scope.allergies = response.data.records;
  });*/


  $scope.chooseRestaurantType = function() {

    //var type = $scope.restaurantType;

    //console.log(type);

    $http.get('/api/restaurant').then(function successCallback(response) {

        $scope.restaurants = response.data.records;
      });

  }

  $scope.chooseRestaurant = function(restaurant_id) {

      console.log(restaurant_id);

      $http.get('/api/restaurant/'+ restaurant_id +'/menu').then(function successCallback(response) {

          $scope.menu_items = response.data.records;

          console.log($scope.menu_items);
        });

  }

  $scope.home = function() {

    $scope.restaurants = [];
    $scope.menu_items = [];
    $scope.chosenRestaurant = null;
  }

});