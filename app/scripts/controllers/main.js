'use strict';

/**
 * @ngdoc function
 * @name transnvFrontendApp.controller:MainCtrl
 * @description
 * # MainCtrl
 * Controller of the transnvFrontendApp
 */
angular.module('transnvFrontendApp')
.controller('MainCtrl', function ($scope) {
    $scope.myInterval = 4000;
    $scope.noWrapSlides = false;
    
    function init() {
        $scope.slides = [
            {
                id: 1,
                url: 'http://via.placeholder.com/350x150'
            },
            {
                id: 2,
                url: 'http://via.placeholder.com/550x450'
            }
        ];
    }
    
    init();
});