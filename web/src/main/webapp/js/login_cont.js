var restaurantApp = angular.module('loginApp', []);

restaurantApp.controller('LoginCtrl', function ($scope,$location,$window,$http) {

    $scope.enterMenuItem = function() {

        console.log("click");
        window.location.href='/menu.html';
    }

});