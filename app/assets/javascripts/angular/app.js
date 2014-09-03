var fetchApp = angular.module('fetchApp', ['ngResource']).config(
     ['$httpProvider', function($httpProvider) {
     var authToken = angular.element("meta[name=\"csrf-token\"]").attr("content");
     var defaults = $httpProvider.defaults.headers;
     defaults.common["X-CSRF-TOKEN"] = authToken;
     defaults.patch = defaults.patch || {};
     defaults.patch['Content-Type'] = 'application/json';
}]);