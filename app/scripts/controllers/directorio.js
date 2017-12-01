'use strict';

/**
 * @ngdoc function
 * @name transnvFrontendApp.controller:DirectorioCtrl
 * @description
 * # DirectorioCtrl
 * Controller of the transnvFrontendApp
 */
angular.module('transnvFrontendApp')
.controller('DirectorioCtrl', function ($scope, ngProgressFactory, infosservice,
    cabecerasservice, $q, contactosservice) {
    
    $scope.init = function() {
        $scope.progressbar = ngProgressFactory.createInstance();
        $scope.progressbar.start();
        return $q.all([
            contactosservice.get().$promise,
            cabecerasservice.getByDescripcion({descripcion: 'directorio-cabecera'}).$promise
        ]).then(function(data) {
            $scope.contactos = data[0].contactos;
            $scope.imagen = 'img/cabeceras/' + data[1].cabecera.imagen;
            $scope.progressbar.complete();
        });
    };
    
    $scope.init();
});