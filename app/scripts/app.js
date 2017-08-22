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
    'ui.bootstrap'
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
    
    $stateProvider.state(mainState);
    $urlRouterProvider.when('', '/');
})
.run(function($rootScope, $window, $state) {
    
});
