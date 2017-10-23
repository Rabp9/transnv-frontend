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
    infosservice, imgResponsiveFilter, serviciosservice) {
        
    $scope.myInterval = 4000;
    $scope.noWrapSlides = false;
    $scope.path_location = $rootScope.path_location;
    var search = ['transnv_resumen'];
    
    $scope.init = function() {
        return $q.all([
            slidesservice.get().$promise,
            infosservice.getDataMany(search).$promise,
            serviciosservice.getSome({amount: 2}).$promise
        ]).then(function(data) {
            $scope.slides = data[0].slides;
            $scope.infos = data[1].info;
            $scope.servicios = data[2].servicios;
        });
    };
    
    $scope.getSlideSrc = function(slide, size) {
        var src = $rootScope.path_location + 'img/slides/' + slide.imagen;
        return $sce.trustAsResourceUrl(imgResponsiveFilter(src, size));
    };
    
    $scope.init();
});