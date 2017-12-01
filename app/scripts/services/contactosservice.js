'use strict';

/**
 * @ngdoc service
 * @name transnvFrontendApp.contactosservice
 * @description
 * # contactosservice
 * Factory in the transnvFrontendApp.
 */
angular.module('transnvFrontendApp')
.factory('contactosservice', function ($resource, envservice) {
    return $resource(envservice.getHost() + 'contactos/:id.json');
});