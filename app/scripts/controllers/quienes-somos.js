'use strict';

/**
 * @ngdoc function
 * @name transnvFrontendApp.controller:QuienesSomosCtrl
 * @description
 * # QuienesSomosCtrl
 * Controller of the transnvFrontendApp
 */
angular.module('transnvFrontendApp')
.controller('QuienesSomosCtrl', function ($scope, ngProgressFactory, infosservice,
    cabecerasservice, $q) {
    var search = ['quienes_somos', 'mision', 'vision'];
    
    $scope.init = function() {
        $scope.progressbar = ngProgressFactory.createInstance();
        $scope.progressbar.start();
        return $q.all([
            infosservice.getDataMany(search).$promise,
            cabecerasservice.getByDescripcion({descripcion: 'quienes-somos-cabecera'}).$promise
        ]).then(function(data) {
            $scope.infos = data[0].info;
            $scope.imagen = 'img/cabeceras/' + data[1].cabecera.imagen;
            $scope.progressbar.complete();
        });
    };
    
    $scope.init();
});