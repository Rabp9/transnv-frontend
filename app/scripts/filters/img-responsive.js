'use strict';

/**
 * @ngdoc filter
 * @name transnvFrontendApp.filter:imgResponsive
 * @function
 * @description
 * # imgResponsive
 * Filter in the transnvFrontendApp.
 */
angular.module('transnvFrontendApp')
.filter('imgResponsive', function () {
    return function (input, size) {
        var ext = input.split('.').pop();
        input = input.replace(/\..+$/, '');
        input = input + size + '.' + ext;
        return input;
    };
});
