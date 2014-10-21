fetchApp.controller('UserCtrl', ['$scope', 'User', function($scope, User){

  // GET the #index of available users from API
  User.query(function(json){
    $scope.users = json;
  });

  //called inside the triggerAnimate function.  
  //reruns users index query when all users in the view have been liked or rejected.
  var i = 0;
  $scope.getMoreUsers = function(){
    i++;
    console.log(i);
    if(i == $scope.users.length){
      User.query(function(json){
        $scope.users = json;
        i = 0;
      })
    }
  }

  // Trigger Animation ... Refactor into service!
  $scope.triggerAnimate = function(type) {
    var animationEndEvent = "webkitAnimationEnd mozAnimationEnd animationend";
    var animate = (type==='like') ? 'animateYes' : 'animateNo';
    var self = this;
    if (!this.blocked) {
      this.blocked = true;
        $('.card').eq(0).addClass(animate).one(animationEndEvent, function(){
          $('.person').eq(0).remove();
          $(this).remove();
          self.blocked = false;
      });
    }

    setTimeout(function(){$scope.getMoreUsers()}, 500);
  }

  // Provides the User Modals with data
  $scope.selectUser = function(userData) {
    $scope.selectedUser = userData;
  }

}]);