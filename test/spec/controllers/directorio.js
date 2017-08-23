'use strict';

describe('Controller: DirectorioCtrl', function () {

  // load the controller's module
  beforeEach(module('transnvFrontendApp'));

  var DirectorioCtrl,
    scope;

  // Initialize the controller and a mock scope
  beforeEach(inject(function ($controller, $rootScope) {
    scope = $rootScope.$new();
    DirectorioCtrl = $controller('DirectorioCtrl', {
      $scope: scope
      // place here mocked dependencies
    });
  }));

  it('should attach a list of awesomeThings to the scope', function () {
    expect(DirectorioCtrl.awesomeThings.length).toBe(3);
  });
});
