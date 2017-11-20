'use strict';

/**
 * @ngdoc function
 * @name transnvFrontendApp.controller:NoticiasCtrl
 * @description
 * # NoticiasCtrl
 * Controller of the transnvFrontendApp
 */
angular.module('transnvFrontendApp')
.controller('NoticiasCtrl', function ($scope, noticiasservice, ngProgressFactory, 
    cabecerasservice, $state, $q, $rootScope) {
        
    $scope.init = function() {
        $scope.progressbar = ngProgressFactory.createInstance();
        $scope.progressbar.start();
        return $q.all([
            noticiasservice.get({id: $state.params.id}).$promise,
            cabecerasservice.getByDescripcion({descripcion: 'noticia-cabecera'}).$promise
        ]).then(function(data) {
            $scope.noticia = data[0].noticia;
            $scope.imagen = 'img/cabeceras/' + data[1].cabecera.imagen;
            $rootScope.title = $scope.noticia.titulo; 
            $scope.progressbar.complete();
        });
    };
    
    $scope.init();
});