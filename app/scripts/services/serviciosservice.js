'use strict';

/**
 * @ngdoc service
 * @name transnvFrontendApp.serviciosservice
 * @description
 * # serviciosservice
 * Factory in the transnvFrontendApp.
 */
angular.module('transnvFrontendApp')
.factory('serviciosservice', function($resource, envservice) {
    return $resource(envservice.getHost() + 'servicios/:id.json', {}, {
        getSome: {
            method: 'GET',
            url: envservice.getHost() + 'servicios/get_some/:amount.json',
        }
    });
});