'use strict';

/**
 * @ngdoc service
 * @name transnvFrontendApp.noticiasservice
 * @description
 * # noticiasservice
 * Factory in the transnvFrontendApp.
 */
angular.module('transnvFrontendApp')
.factory('noticiasservice', function ($resource, envservice) {
    return $resource(envservice.getHost() + 'noticias/:id.json');
});