fetchApp.factory('User', ['$resource', function($resource){
  return $resource('api/users/:id',
    { id: '@id' },
    { update: { method: 'PATCH' } }
    );
}]);

fetchApp.factory('Match', ['$resource', function($resource){
  return $resource('api/matches/:id',
    { id: '@id' },
    { update: { method: 'PATCH' } }
    );
}]);

fetchApp.factory('Message', ['$resource', function($resource){
  return $resource('api/messages/:id',
    { id: '@id' },
    { update: { method: 'PATCH' } }
    );
}]);

fetchApp.factory('Like', ['$resource', function($resource){
  return $resource('api/likes/:id',
    { id: '@id' },
    { update: { method: 'PATCH' } }
    );
}]);

fetchApp.factory('Rejection', ['$resource', function($resource){
  return $resource('api/rejections/:id',
    { id: '@id' },
    { update: { method: 'PATCH' } }
    );
}]);