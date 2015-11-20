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

  for (index = 0; index < $scope.restaurants.length; ++index) {
    if ($scope.restaurants[index][0] == restaurant_id) {
        $scope.chosenRestaurant = {
            "name": $scope.restaurants[index][1],
            "description": $scope.restaurants[index][2],
            "address": $scope.restaurants[index][3] + " " +
            $scope.restaurants[index][4] + " " +
            $scope.restaurants[index][5] + " " +
            $scope.restaurants[index][6] + " " +
            $scope.restaurants[index][7] + " "
        };
    }
    }

    $http.get('/api/restaurant/'+ restaurant_id +'/menu').then(function successCallback(response) {

        var menu_items1 = response.data.records;

        for (index = 0; index < menu_items1.length; ++index) {

        var item = {
                                               "id": menu_items1[index][0],
                                               "name": menu_items1[index][2],
                                               "description": menu_items1[index][3],
                                               "gluten_free": menu_items1[index][4],
                                               "vegan": menu_items1[index][5],
                                               "veg": menu_items1[index][6],
                                               "spice": menu_items1[index][7],
                                               "price": menu_items1[index][8],
                                               "course": menu_items1[index][9]
                                               };

            $scope.menu_items.push(item);

            $http.get('/api/restaurant/menu/item/'+ menu_items1[index][0] +'/diets').then(function successCallback(response) {


               //item["allergies"] = response.data;


            });
        }
    });
  }

  $scope.home = function() {

    $scope.restaurants = [];
    $scope.menu_items = [];
    $scope.chosenRestaurant = null;
  }

});