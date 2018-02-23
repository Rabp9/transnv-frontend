'use strict';

/**
 * @ngdoc function
 * @name transnvFrontendApp.controller:NuestroPersonalCtrl
 * @description
 * # NuestroPersonalCtrl
 * Controller of the transnvFrontendApp
 */
angular.module('transnvFrontendApp')
.controller('NuestroPersonalCtrl', function ($scope, ngProgressFactory, infosservice,
    cabecerasservice, $q) {
    var search = ['nuestro_personal'];
    
    $scope.init = function() {
        $scope.progressbar = ngProgressFactory.createInstance();
        $scope.progressbar.start();
        return $q.all([
            infosservice.getDataMany(search).$promise,
            cabecerasservice.getByDescripcion({descripcion: 'nuestro-personal-cabecera'}).$promise
        ]).then(function(data) {
            $scope.infos = data[0].info;
            $scope.imagen = 'img/cabeceras/' + data[1].cabecera.imagen;
            $scope.progressbar.complete();
        });
    };
    
    $scope.init();
});