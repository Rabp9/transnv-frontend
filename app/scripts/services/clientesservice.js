'use strict';

/**
 * @ngdoc service
 * @name transnvFrontendApp.clientesservice
 * @description
 * # clientesservice
 * Factory in the transnvFrontendApp.
 */
angular.module('transnvFrontendApp')
.factory('clientesservice', function ($resource, envservice) {
    return $resource(envservice.getHost() + 'clientes/:id.json');
});