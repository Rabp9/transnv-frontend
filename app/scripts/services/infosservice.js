'use strict';

/**
 * @ngdoc service
 * @name transnvFrontendApp.infosservice
 * @description
 * # infosservice
 * Factory in the transnvFrontendApp.
 */
angular.module('transnvFrontendApp')
.factory('infosservice', function($resource, envservice) {
    return $resource(envservice.getHost() + 'infos/:id.json', {}, {
        getDataMany: {
            method: 'POST',
            url: envservice.getHost() + 'infos/getDataMany.json',
        }
    });
});