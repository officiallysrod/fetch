fetchApp.controller('LikeCtrl', ['$scope', 'Like', function($scope, Like){

  $scope.newLike = new Like();

  // POST #create a Like via API
  this.add = function(likee_id){
    $scope.newLike.likee_id = likee_id;
    $scope.newLike.$save();
  }

}]);