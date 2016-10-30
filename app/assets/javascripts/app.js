var app = angular.module('moodyGoodyMe', ['ui.router', 'oxymoron']);

app.config(['$stateProvider', function ($stateProvider) {
  $stateProvider.rails()
}])
