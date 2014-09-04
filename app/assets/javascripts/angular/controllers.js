fetchApp.controller('UserCtrl', ['$scope', 'User', function($scope, User){

  $scope.test = "This is totally working, beeyatch!";

  User.query(function(json){
    $scope.users = json;
  });

}]);

fetchApp.controller('MatchCtrl', ['$scope', 'Match', function($scope, Match){

  $scope.test = "This is totally working, beeyatch!";

  Match.query(function(json){
    $scope.friends = json;
  });

}]);

fetchApp.controller('LikeCtrl', ['$scope', 'Like', function($scope, Like){

  $scope.newLike = new Like();

  this.add = function(likee_id){
    $scope.newLike.likee_id = likee_id;
    $scope.newLike.$save();
  }

}]);

fetchApp.controller('RejectionCtrl', ['$scope', 'Rejection', function($scope, Rejection){

  $scope.newRejection = new Rejection();
  // $scope.newLike.liker_id = 11;
  // $scope.newLike.likee_id = 6;

  this.add = function(rejectee_id){
    $scope.newRejection.rejectee_id = rejectee_id;
    console.log($scope.newRejection.rejector_id);
    console.log($scope.newRejection.rejectee_id);
    $scope.newRejection.$save();
  }

}]);