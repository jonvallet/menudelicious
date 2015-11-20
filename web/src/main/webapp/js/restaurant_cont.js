var restaurantApp = angular.module('restaurantApp', []);

restaurantApp.controller('RestaurantCtrl', function ($scope,$http) {

  $scope.restaurants = [];
  $scope.categories = [];
  $scope.menu_items = [];
  $scope.allergies = [];

  $http.get('/api/categories').then(function successCallback(response) {

      $scope.categories = response.data.records;
  });

  function chooseRestaurantType(type) {

    /*$http.get('/api/restaurant').then(function successCallback(response) {

        $scope.restaurants = response.data.records;
      });*/

  }


});