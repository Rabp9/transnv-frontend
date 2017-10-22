'use strict';

/**
 * @ngdoc service
 * @name transnvFrontendApp.infosserivce
 * @description
 * # infosserivce
 * Factory in the transnvFrontendApp.
 */
angular.module('transnvFrontendApp')
.factory('infosserivce', function($resource, envservice) {
    return $resource(envservice.getHost() + 'infos/:id.json', {}, {
        saveMany: {
            method: 'POST',
            url: envservice.getHost() + 'infos/saveMany.json',
        },
        getDataMany: {
            method: 'POST',
            url: envservice.getHost() + 'infos/getDataMany.json',
        },
        getDataByData: {
            method: 'POST',
            url: envservice.getHost() + 'infos/getDataByData.json',
        },
        getData: {
            method: 'GET',
            url: envservice.getHost() + 'infos/getData/:data.json',
        }
    });
});