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
    cabecerasservice, $q, $sce, $rootScope, imgResponsiveFilter) {
    var search = ['certificaciones'];
    
    $scope.init = function() {
        $scope.progressbar = ngProgressFactory.createInstance();
        $scope.progressbar.start();
        return $q.all([
            infosservice.getDataMany(search).$promise,
            cabecerasservice.getByDescripcion({descripcion: 'certificaciones-cabecera'}).$promise
        ]).then(function(data) {
            $scope.infos = data[0].info;
            $scope.cabecera = data[1].cabecera.imagen;
            $scope.progressbar.complete();
        });
    };
    
    $scope.getCabeceraSrc = function(cabecera, size) {
        var src = $rootScope.path_location + 'img/cabeceras/' + cabecera;
        return $sce.trustAsResourceUrl(imgResponsiveFilter(src, size));
    };
    
    $scope.init();
});