fetchApp.controller('RejectionCtrl', ['$scope', 'Rejection', function($scope, Rejection){

  // POST #create a Rejection via API
  $scope.newRejection = new Rejection();

  this.add = function(rejectee_id){
    $scope.newRejection.rejectee_id = rejectee_id;
    $scope.newRejection.$save();
  }

}]);