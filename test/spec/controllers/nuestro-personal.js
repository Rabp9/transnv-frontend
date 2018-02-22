'use strict';

describe('Controller: NuestroPersonalCtrl', function () {

  // load the controller's module
  beforeEach(module('transnvFrontendApp'));

  var NuestroPersonalCtrl,
    scope;

  // Initialize the controller and a mock scope
  beforeEach(inject(function ($controller, $rootScope) {
    scope = $rootScope.$new();
    NuestroPersonalCtrl = $controller('NuestroPersonalCtrl', {
      $scope: scope
      // place here mocked dependencies
    });
  }));

  it('should attach a list of awesomeThings to the scope', function () {
    expect(NuestroPersonalCtrl.awesomeThings.length).toBe(3);
  });
});
