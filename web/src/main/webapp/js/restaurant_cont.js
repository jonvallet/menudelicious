var restaurantApp = angular.module('restaurantApp', []);

restaurantApp.controller('RestaurantCtrl', function ($scope,$http) {

  $scope.categories = [];
  $scope.restaurants = [];
  $scope.menu_items = [];
  $scope.allergies = [];
  $scope.chosenRestaurant = null;

  /*$http.get('/api/categories').then(function successCallback(response) {

      $scope.categories = response.data.records;
  });

  $http.get('/api/allergies').then(function successCallback(response) {

        $scope.allergies = response.data.records;
  });*/

  function $scope.chooseRestaurantType() {

    //var type = $scope.restaurantType;

    console.log('test');

    /*$http.get('/api/restaurant').then(function successCallback(response) {

        $scope.restaurants = response.data.records;
      });*/

  }


});