'use strict';

/**
 * @ngdoc service
 * @name transnvFrontendApp.cabecerasservice
 * @description
 * # cabecerasservice
 * Factory in the transnvFrontendApp.
 */
angular.module('transnvFrontendApp')
.factory('cabecerasservice', function($resource, envservice) {
    return $resource(envservice.getHost() + 'cabeceras/:id.json', {}, {
        getByDescripcion: {
            method: 'GET',
            url: envservice.getHost() + 'cabeceras/getByDescripcion.json',
        }
    });
});