var app = angular.module('moodyGoodyMe', ['ui.router', 'oxymoron']);

app.config(['$stateProvider', function ($stateProvider) {
  $stateProvider.rails()
}])

angular.module("oxymoron.services.resources", [])
  .factory('resourceDecorator', [function () {
    return function(resource) {
      return resource;
    };
  }])

    .factory('Message', ['$resource', 'resourceDecorator', function ($resource, resourceDecorator) {
      return resourceDecorator($resource('/contacts/:id.json', { 'id' : '@id' }, { 'new': { 'method' : 'GET', 'url' : '/contacts/:id.json' }, 'create' : { 'method' : 'POST' } }));
    }])


app.config([
  "$httpProvider", function($httpProvider) {
    $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content');
  }
]);
