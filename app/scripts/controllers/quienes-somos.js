'use strict';

/**
 * @ngdoc function
 * @name transnvFrontendApp.controller:QuienesSomosCtrl
 * @description
 * # QuienesSomosCtrl
 * Controller of the transnvFrontendApp
 */
angular.module('transnvFrontendApp')
.controller('QuienesSomosCtrl', function ($scope, ngProgressFactory) {
    
    $scope.progressbar = ngProgressFactory.createInstance();
    $scope.progressbar.start();
    
    $scope.progressbar.complete();
});