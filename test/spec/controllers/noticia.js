'use strict';

describe('Controller: NoticiaCtrl', function () {

  // load the controller's module
  beforeEach(module('transnvFrontendApp'));

  var NoticiaCtrl,
    scope;

  // Initialize the controller and a mock scope
  beforeEach(inject(function ($controller, $rootScope) {
    scope = $rootScope.$new();
    NoticiaCtrl = $controller('NoticiaCtrl', {
      $scope: scope
      // place here mocked dependencies
    });
  }));

  it('should attach a list of awesomeThings to the scope', function () {
    expect(NoticiaCtrl.awesomeThings.length).toBe(3);
  });
});
