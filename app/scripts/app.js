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
    'slick',
    'ngPicturefill'
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
    
    var directorioState = {
        name: 'directorio',
        url: '/directorio',
        templateUrl: 'views/directorio.html',
        controller: 'DirectorioCtrl',
        controllerAs: 'directorio',
        title: 'Directorio Telefónico'
    };
    
    var ubicacionState = {
        name: 'ubicacion',
        url: '/ubicacion',
        templateUrl: 'views/ubicacion.html',
        controller: 'UbicacionCtrl',
        controllerAs: 'ubicacion',
        title: 'Ubicación'
    };
    
    var noticiasState = {
        name: 'noticias',
        url: '/noticias/{id}',
        templateUrl: 'views/noticias.html',
        controller: 'NoticiasCtrl',
        controllerAs: 'noticias',
        params: {
            id: {
                value: '1'
            }
        }
    };
    
    var serviciosState = {
        name: 'servicios',
        url: '/servicios/{id}',
        templateUrl: 'views/servicios.html',
        controller: 'ServiciosCtrl',
        controllerAs: 'servicios',
        params: {
            id: {
                value: '1'
            }
        }
    };
    
    $stateProvider.state(mainState);
    $stateProvider.state(quienesSomosState);
    $stateProvider.state(historiaState);
    $stateProvider.state(serviciosState);
    $stateProvider.state(noticiasState);
    $stateProvider.state(directorioState);
    $stateProvider.state(ubicacionState);
    $urlRouterProvider.when('', '/');
})
.run(function($rootScope, $state, $window, $sce, envservice, infosservice, serviciosservice,
    noticiasservice, $q) {
    $rootScope.path_location = envservice.getHost();
    var search = ['enlace_1_link', 'enlace_2_link', 'enlace_3_link', 'enlace_1_titulo', 
        'enlace_2_titulo', 'enlace_3_titulo', 'telefono', 'direccion', 'email', 'facebook_link',
        'quienes_somos_mensaje', 'historia_mensaje', 'copyright', 'directorio_mensaje',
        'ubicacion_mensaje'];
    
    $rootScope.init = function() {
        $q.all([
             infosservice.getDataMany(search).$promise,
             serviciosservice.getSome({amount: 2}).$promise,
             noticiasservice.getSome({amount: 3}).$promise
        ]).then(function(data) {
            $rootScope.infos_index = data[0].info;
            $rootScope.servicios_index = data[1].servicios;
            $rootScope.noticias_index = data[2].noticias;
        });
    };
    
    $('#mmNav a').click(function() {
        $('.dropdown.open').removeClass('open');
    });
    
    $rootScope.$on('$stateChangeSuccess', function(event, toParams, fromState, fromParams) {
        $rootScope.title = $state.current.title; 
    });
    
    $rootScope.init();
});