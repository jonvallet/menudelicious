var restaurantApp = angular.module('menuApp', []);

restaurantApp.controller('MenuCtrl', function ($scope,$http) {

  $scope.menu_items = [];
  $scope.allergies = [];
  $scope.data = [];
  $scope.menuItem = [];
  $scope.roles = [];

  $http.get('/api/restaurant/allergies').then(function successCallback(response) {

        $scope.allergies = response.data;
  });

  $http.get('/api/restaurant/1/menu').then(function successCallback(response) {

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

            $http.get('/api/restaurant/menu/item/'+ menu_items1[index][0] +'/diets').then(function successCallback(response) {

               item["allergies"] = response.data;

                console.log(item);

                $scope.menu_items.push(item);

            });
        }
    });

    $scope.addItem = function() {

        var id = $scope.menu_items.length;

        var item = {
                "id": id,
                "name": $scope.menuItem.name,
                "description": $scope.menuItem.description,
                "gluten_free": $scope.menuItem.gf,
                "vegan": $scope.menuItem.vegan,
                "veg": $scope.menuItem.veg,
                "spice": $scope.data.multipleSelect,
                "price": $scope.menuItem.price,
                "course": $scope.data.multipleSelect3
                };

                item["allergies"] = [];

                if ($scope.Celery == true) {
                    item["allergies"].push({"ID":1,"NAME":"Celery"});
                }
                if ($scope.Cereals == true) {
                    item["allergies"].push({"ID":2,"NAME":"Cereals containing gluten"});
                }
                if ($scope.Wheat == true) {
                    item["allergies"].push({"ID":3,"NAME":"Wheat"});
                }
                if ($scope.Crustaceans == true) {
                    item["allergies"].push({"ID":4,"NAME":"Crustaceans"});
                }
                if ($scope.Eggs == true) {
                    item["allergies"].push({"ID":5,"NAME":"Eggs"});
                }
                if ($scope.Fish == true) {
                    item["allergies"].push({"ID":6,"NAME":"Fish"});
                }
                if ($scope.Lupin == true) {
                    item["allergies"].push({"ID":7,"NAME":"Lupin"});
                }
                if ($scope.Milk == true) {
                item["allergies"].push({"ID":8,"NAME":"Milk"});
                }
                if ($scope.Molluscs == true) {
                item["allergies"].push({"ID":9,"NAME":"Molluscs"});
                }
                if ($scope.Mustard == true) {
                item["allergies"].push({"ID":10,"NAME":"Mustard"});
                }
                if ($scope.Nuts == true) {
                item["allergies"].push({"ID":11,"NAME":"Nuts"});
                }
                if ($scope.Peanuts == true) {
                item["allergies"].push({"ID":12,"NAME":"Peanuts"});
                }
                if ($scope.Sesame == true) {
                item["allergies"].push({"ID":13,"NAME":"Sesame seeds"});
                }
                if ($scope.Soya == true) {
                item["allergies"].push({"ID":14,"NAME":"Soya"});
                }

        $scope.menu_items.push(item);
    }
});