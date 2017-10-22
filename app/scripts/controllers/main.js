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
    /*infosservice*/ imgResponsiveFilter) {
        
    $scope.myInterval = 4000;
    $scope.noWrapSlides = false;
    
    $scope.init = function() {
        return $q.all([
            slidesservice.get().$promise/*,
            infosservice.getDataMany(search).$promise*/
        ]).then(function(data) {
            // Slides
            $scope.slides = data[0].slides;
        });
    };
    
    $scope.getSlideSrc = function(slide, size) {
        var src = $rootScope.path_location + 'img/slides/' + slide.imagen;
        return $sce.trustAsResourceUrl(imgResponsiveFilter(src, size));
    };
    
    $scope.init();
});