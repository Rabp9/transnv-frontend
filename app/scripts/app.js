'use strict';

/**
 * @ngdoc overview
 * @name transnvFrontendApp
 * @description
 * # transnvFrontendApp
 *
 * Main module of the application.
 */
angular
.module('transnvFrontendApp', [
    'ngAnimate',
    'ngCookies',
    'ngResource',
    'ngSanitize',
    'ngTouch',
    'mega-menu',
    'ngProgress',
    'ui.router',
    'ui.bootstrap',
    'zumba.angular-waypoints',
    'slick'
])
.config(function($stateProvider, $urlRouterProvider) {
    var mainState = {
        name: 'main',
        url: '/',
        templateUrl: 'views/main.html',
        controller: 'MainCtrl',
        controllerAs: 'main',
        title: 'Home'
    };  
    
    var quienesSomosState = {
        name: 'quienes-somos',
        url: '/quienes-somos',
        templateUrl: 'views/quienes-somos.html',
        controller: 'QuienesSomosCtrl',
        controllerAs: 'quienes-somos',
        title: '¿Quiénes Somos?'
    };
    
    var historiaState = {
        name: 'historia',
        url: '/historia',
        templateUrl: 'views/historia.html',
        controller: 'HistoriaCtrl',
        controllerAs: 'historia',
        title: 'Historia'
    };
    
    $stateProvider.state(mainState);
    $stateProvider.state(quienesSomosState);
    $stateProvider.state(historiaState);
    $urlRouterProvider.when('', '/');
})
.run(function($rootScope, $window, $state) {
    
});
