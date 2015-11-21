var restaurantApp = angular.module('restaurantApp', []);

restaurantApp.controller('RestaurantCtrl', function ($scope, $http) {

    $scope.categories = [];
    $scope.restaurants = [];
    $scope.menu_items = [];
    $scope.allergies = [];
    $scope.chosenRestaurant = null;
    $scope.restaurantType = 0;
    $scope.data = [];
    $scope.menuSearchResult = null;
    $scope.data.search_term = '';

    $scope.names = [
        "Fine dining",
        "Fish",
        "French",
        "Frogs legs"
    ];


    $http.get('api/restaurant/categories').then(function successCallback(response) {

        $scope.categories = response.data;
    });

    $http.get('api/restaurant/allergies').then(function successCallback(response) {

        $scope.allergies = response.data;
    });

    $scope.chooseRestaurantType = function (search_value) {

        $scope.search_term = search_value;

        if ($scope.search_term == 'Goat' || $scope.search_term == 'goat') {

            $scope.menuSearchResult = {

                "name": 'Goats Cheese',
                "description": 'Grilled Honey Glazed Goats Cheese, Pear Ketchup',
                "gluten_free": true,
                "vegan": false,
                "veg": true,
                "spice": 0,
                "price": 6.95,
                "course": 'Starter',
                "allergies": 'Cereals containing gluten, Crustaceans, Lupin',
                "rest_name": 'The Ship Inn',
                "rest_address": 'King Street Norwich Norfolk NR1 1PH',
                "rest_url": 'ship_inn.png'
            };

            $scope.menuSearchResult2 = {

                "name": 'Bruschetta',
                "description": "Roasted red pepper & goat's cheese with toasted pine nuts, basil, pesto and rocket",
                "gluten_free": false,
                "vegan": false,
                "veg": true,
                "spice": 0,
                "price": 6.95,
                "course": 'Starter',
                "allergies": 'Crustaceans, Molluscs, Peanuts, Peanuts',
                "rest_name": 'The Library',
                "rest_address": '4A Guildhall Hill Norwich Norfolk NR2 1JH',
                "rest_url": 'library.png'

            };

        } else {

            $scope.search_term = null;
            $scope.menuSearchResult = null;
        }


        var type = 1;

        $http.get('/api/restaurant/filter/category/' + type).then(function successCallback(response) {

            $scope.restaurants = response.data.records;

        });

    };

    $scope.chooseRestaurant = function (restaurant_id) {

        $scope.search_term = null;
        $scope.menuSearchResult = null;

        $scope.choose_allergies = false;
        $scope.choose_price = false;
        $scope.choose_diet = false;

        $scope.show_location = false;
        $scope.show_book = false;

        for (index = 0; index < $scope.restaurants.length; ++index) {
            if ($scope.restaurants[index][0] == restaurant_id) {
                $scope.chosenRestaurant = {
                    "name": $scope.restaurants[index][1],
                    "description": $scope.restaurants[index][2],
                    "address": $scope.restaurants[index][3] + " " +
                    $scope.restaurants[index][4] + " " +
                    $scope.restaurants[index][5] + " " +
                    $scope.restaurants[index][6] + " " +
                    $scope.restaurants[index][7] + " ",
                    "url": $scope.restaurants[index][10]
                };
            }
        }

        $http.get('api/restaurant/' + restaurant_id + '/menu').then(function successCallback(response) {

            $scope.menu_items = response.data;

        });
    };

    $('button[data-toggle="tooltip"]').tooltip({
        animated: 'fade',
        placement: 'top',
    });

    $scope.alert = function (text) {

        document.getElementById("modal").style.display = 'block';
        document.getElementById("shade").style.display = 'block';

    };

    $scope.close = function (text) {

        document.getElementById("modal").style.display = 'none';
        document.getElementById("shade").style.display = 'none';

    };


    $scope.home = function () {

        $scope.restaurantType = 0;
        $scope.restaurants = [];
        $scope.menu_items = [];
        $scope.chosenRestaurant = null;
        $scope.search_term = null;
        $scope.menuSearchResult = null;

        $scope.choose_allergies = false;
        $scope.choose_price = false;
        $scope.choose_diet = false;

        $scope.show_location = false;
        $scope.show_book = false;
    };

    $scope.restaurantsPage = function () {
        $scope.menu_items = [];
        $scope.chosenRestaurant = null;
    };

    $scope.choose_allergies = false;
    $scope.choose_price = false;
    $scope.choose_diet = false;

    $scope.chooseAllergies = function () {
        $scope.choose_allergies = true;
        $scope.choose_price = false;
        $scope.choose_diet = false;
    };

    $scope.filter = function () {
        $scope.choose_allergies = false;
        $scope.choose_price = false;
        $scope.choose_diet = false;

        $scope.restaurants.splice(0, 1);
        $scope.restaurants.splice(1, 1);
        $scope.restaurants.splice(1, 1);
        $scope.restaurants.splice(1, 1);
        $scope.restaurants.splice(1, 1);

    };

    $scope.choosePrice = function () {
        $scope.choose_price = true;
        $scope.choose_allergies = false;
        $scope.choose_diet = false;

    };

    $scope.chooseDiet = function () {

        $scope.choose_diet = true;
        $scope.choose_price = false;
        $scope.choose_allergies = false;

    };

    $scope.show_location = false;
    $scope.show_book = false;

    $scope.showBook = function () {
        console.log("test");
        $scope.show_location = false;
        $scope.show_book = true;
    };

    $scope.showLocation = function () {
        $scope.show_location = true;
        $scope.show_book = false;
    }

});