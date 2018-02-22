'use strict';

describe('Controller: CertificacionesCtrl', function () {

  // load the controller's module
  beforeEach(module('transnvFrontendApp'));

  var CertificacionesCtrl,
    scope;

  // Initialize the controller and a mock scope
  beforeEach(inject(function ($controller, $rootScope) {
    scope = $rootScope.$new();
    CertificacionesCtrl = $controller('CertificacionesCtrl', {
      $scope: scope
      // place here mocked dependencies
    });
  }));

  it('should attach a list of awesomeThings to the scope', function () {
    expect(CertificacionesCtrl.awesomeThings.length).toBe(3);
  });
});
