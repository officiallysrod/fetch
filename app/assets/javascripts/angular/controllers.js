fetchApp.controller('UserCtrl', ['$scope', 'User', function($scope, User){

  $scope.test = "This is totally working, beeyatch!";

  User.query(function(users){
    $scope.users = users;
  });

}]);