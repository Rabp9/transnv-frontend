'use strict';

/**
 * @ngdoc function
 * @name transnvFrontendApp.controller:CertificacionesCtrl
 * @description
 * # CertificacionesCtrl
 * Controller of the transnvFrontendApp
 */
angular.module('transnvFrontendApp')
.controller('CertificacionesCtrl', function ($scope, ngProgressFactory, infosservice,
    cabecerasservice, $q) {
    var search = ['certificaciones'];
    
    $scope.init = function() {
        $scope.progressbar = ngProgressFactory.createInstance();
        $scope.progressbar.start();
        return $q.all([
            infosservice.getDataMany(search).$promise,
            cabecerasservice.getByDescripcion({descripcion: 'certificaciones-cabecera'}).$promise
        ]).then(function(data) {
            $scope.infos = data[0].info;
            $scope.imagen = 'img/cabeceras/' + data[1].cabecera.imagen;
            $scope.progressbar.complete();
        });
    };
    
    $scope.init();
});