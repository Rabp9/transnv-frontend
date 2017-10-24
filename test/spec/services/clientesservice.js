'use strict';

describe('Service: clientesservice', function () {

  // load the service's module
  beforeEach(module('transnvFrontendApp'));

  // instantiate service
  var clientesservice;
  beforeEach(inject(function (_clientesservice_) {
    clientesservice = _clientesservice_;
  }));

  it('should do something', function () {
    expect(!!clientesservice).toBe(true);
  });

});
