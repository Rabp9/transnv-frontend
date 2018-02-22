'use strict';

describe('Controller: NuestraFlotaCtrl', function () {

  // load the controller's module
  beforeEach(module('transnvFrontendApp'));

  var NuestraFlotaCtrl,
    scope;

  // Initialize the controller and a mock scope
  beforeEach(inject(function ($controller, $rootScope) {
    scope = $rootScope.$new();
    NuestraFlotaCtrl = $controller('NuestraFlotaCtrl', {
      $scope: scope
      // place here mocked dependencies
    });
  }));

  it('should attach a list of awesomeThings to the scope', function () {
    expect(NuestraFlotaCtrl.awesomeThings.length).toBe(3);
  });
});
