'use strict';

/**
 * @ngdoc service
 * @name transnvFrontendApp.slidesservice
 * @description
 * # slidesservice
 * Factory in the transnvFrontendApp.
 */
angular.module('transnvFrontendApp')
.factory('slidesservice', function ($resource, envservice) {
    return $resource(envservice.getHost() + 'slides/:id.json');
});