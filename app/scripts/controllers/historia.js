'use strict';

/**
 * @ngdoc function
 * @name transnvFrontendApp.controller:HistoriaCtrl
 * @description
 * # HistoriaCtrl
 * Controller of the transnvFrontendApp
 */
angular.module('transnvFrontendApp')
.controller('HistoriaCtrl', function ($scope, ngProgressFactory, infosservice,
    cabecerasservice, $q) {
    var search = ['historia', 'mision', 'vision'];
    
    $scope.init = function() {
        $scope.progressbar = ngProgressFactory.createInstance();
        $scope.progressbar.start();
        return $q.all([
            infosservice.getDataMany(search).$promise,
            cabecerasservice.getByDescripcion({descripcion: 'historia-cabecera'}).$promise
        ]).then(function(data) {
            $scope.infos = data[0].info;
            $scope.imagen = 'img/cabeceras/' + data[1].cabecera.imagen;
            $scope.progressbar.complete();
        });
    };
    
    $scope.init();
});