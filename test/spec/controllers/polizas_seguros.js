'use strict';

describe('Controller: PolizasSegurosCtrl', function () {

  // load the controller's module
  beforeEach(module('transnvFrontendApp'));

  var PolizasSegurosCtrl,
    scope;

  // Initialize the controller and a mock scope
  beforeEach(inject(function ($controller, $rootScope) {
    scope = $rootScope.$new();
    PolizasSegurosCtrl = $controller('PolizasSegurosCtrl', {
      $scope: scope
      // place here mocked dependencies
    });
  }));

  it('should attach a list of awesomeThings to the scope', function () {
    expect(PolizasSegurosCtrl.awesomeThings.length).toBe(3);
  });
});
