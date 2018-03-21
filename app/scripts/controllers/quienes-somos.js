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
    cabecerasservice, $q, $sce, $rootScope, imgResponsiveFilter) {
    var search = ['quienes_somos', 'mision', 'vision'];
    
    $scope.init = function() {
        $scope.progressbar = ngProgressFactory.createInstance();
        $scope.progressbar.start();
        return $q.all([
            infosservice.getDataMany(search).$promise,
            cabecerasservice.getByDescripcion({descripcion: 'quienes-somos-cabecera'}).$promise
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