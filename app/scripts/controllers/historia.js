'use strict';

/**
 * @ngdoc function
 * @name transnvFrontendApp.controller:HistoriaCtrl
 * @description
 * # HistoriaCtrl
 * Controller of the transnvFrontendApp
 */
angular.module('transnvFrontendApp')
.controller('HistoriaCtrl', function ($scope, ngProgressFactory) {
    
    $scope.progressbar = ngProgressFactory.createInstance();
    $scope.progressbar.start();
    
    $scope.progressbar.complete();
});