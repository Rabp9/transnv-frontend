'use strict';

/**
 * @ngdoc function
 * @name transnvFrontendApp.controller:ServiciosCtrl
 * @description
 * # ServiciosCtrl
 * Controller of the transnvFrontendApp
 */
angular.module('transnvFrontendApp')
.controller('ServiciosCtrl', function ($scope, serviciosservice, ngProgressFactory, 
    $state, $q, $rootScope) {
    $scope.init = function() {
        $scope.progressbar = ngProgressFactory.createInstance();
        $scope.progressbar.start();
        serviciosservice.get({id: $state.params.id}, function(data) {
            $scope.servicio = data.servicio;
            var imagen = 'img/servicios/' + $scope.servicio.portada;
            $rootScope.title = $scope.servicio.titulo; 
            $scope.progressbar.complete();
            $scope.style = {
                backgroundImage: 'url("' + $rootScope.path_location + imagen + '")'
            };
        });
    };
    
    $scope.init();
});