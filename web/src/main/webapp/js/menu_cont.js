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
                "spice": $scope.menuItem.vegan,
                "price": $scope.menuItem.price,
                "course": $scope.data.multipleSelect3
                };

                item["allergies"] = [];

                if ($scope.Cereals == true) {
                    item["allergies"].push({"ID":1,"NAME":"Cereals containing gluten"});
                }

                console.log($scope.Cereals);

        /*for (index = 0; index < $scope.selection.ids.length; ++index) {

            for (index2 = 0; index2 < $scope.allergies.length; ++index2) {

                if ($scope.selection.ids[index] == $scope.allergies[index2].ID) {

                    console.log("match " + $scope.selection.ids[index]);
                }
            }
        }*/



        $scope.menu_items.push(item);
    }
});