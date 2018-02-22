'use strict';

/**
 * @ngdoc function
 * @name transnvFrontendApp.controller:MainCtrl
 * @description
 * # MainCtrl
 * Controller of the transnvFrontendApp
 */
angular.module('transnvFrontendApp')
.controller('MainCtrl', function ($scope, $q, $rootScope, slidesservice, $sce, 
    infosservice, imgResponsiveFilter, serviciosservice, noticiasservice, clientesservice, NgMap) {
        
    $scope.myInterval = 4000;
    $scope.noWrapSlides = false;
    $scope.path_location = $rootScope.path_location;
    var search = ['transnv_resumen', 'ubicacion_lat_lang'];
    $scope.googleMapsUrl = 'https://maps.googleapis.com/maps/api/js?key=AIzaSyBN3iXCosOm01j8X97QyrYYGfGRRRuyMFY';

    NgMap.getMap().then(function(map) {
        $scope.map = map;
        google.maps.event.trigger(map, 'resize'); 
    });
    
    $scope.init = function() {
        return $q.all([
            slidesservice.get().$promise,
            infosservice.getDataMany(search).$promise,
            serviciosservice.getSome({amount: 2}).$promise,
            noticiasservice.get().$promise,
            clientesservice.get().$promise
        ]).then(function(data) {
            $scope.slides = data[0].slides;
            $scope.infos = data[1].info;
            $scope.servicios = data[2].servicios;
            $scope.noticias = data[3].noticias;
            $scope.clientes = data[4].clientes;
        });
    };
    
    $scope.getSlideSrc = function(slide, size) {
        var src = $rootScope.path_location + 'img/slides/' + slide.imagen;
        return $sce.trustAsResourceUrl(imgResponsiveFilter(src, size));
    };
    
    $scope.showInfo = function(event) {
        $scope.map.showInfoWindow('myInfoWindow', this);
    };
    
    $scope.init();
});