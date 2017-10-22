'use strict';

describe('Service: infosserivce', function () {

  // load the service's module
  beforeEach(module('transnvFrontendApp'));

  // instantiate service
  var infosserivce;
  beforeEach(inject(function (_infosserivce_) {
    infosserivce = _infosserivce_;
  }));

  it('should do something', function () {
    expect(!!infosserivce).toBe(true);
  });

});
