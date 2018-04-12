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
    $state, $rootScope, $sce, imgResponsiveFilter) {
        
    $scope.init = function() {
        $scope.progressbar = ngProgressFactory.createInstance();
        $scope.progressbar.start();
        noticiasservice.get({id: $state.params.id}, function(data) {
            $scope.noticia = data.noticia;
            $rootScope.title = $scope.noticia.titulo; 
            $scope.cabecera = $scope.noticia.portada;
            $scope.progressbar.complete();
        });
    };
       
    $scope.getCabeceraSrc = function(cabecera, size) {
        var src = $rootScope.path_location + 'img/noticias/' + cabecera;
        return $sce.trustAsResourceUrl(imgResponsiveFilter(src, size));
    };
    
    $scope.init();
});