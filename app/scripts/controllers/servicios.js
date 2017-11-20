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
    cabecerasservice, $state, $q, $rootScope) {
    $scope.init = function() {
        $scope.progressbar = ngProgressFactory.createInstance();
        $scope.progressbar.start();
        return $q.all([
            serviciosservice.get({id: $state.params.id}).$promise,
            cabecerasservice.getByDescripcion({descripcion: 'servicio-cabecera'}).$promise
        ]).then(function(data) {
            $scope.servicio = data[0].servicio;
            $scope.imagen = 'img/cabeceras/' + data[1].cabecera.imagen;
            $rootScope.title = $scope.servicio.titulo; 
            $scope.progressbar.complete();
        });
    };
    
    $scope.init();
});