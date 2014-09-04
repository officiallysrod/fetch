fetchApp.controller('UserCtrl', ['$scope', 'User', function($scope, User){

  $scope.test = "This is totally working, beeyatch!";

  // GET the #index of available users from API
  User.query(function(json){
    $scope.users = json;
  });

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
  }

}]);

fetchApp.controller('MatchCtrl', ['$scope', 'Match', function($scope, Match){

  $scope.test = "This is totally working, beeyatch!";

  // GET the #index of friends (matches) from API
  Match.query(function(json){
    $scope.friends = json;
    $scope.friendIndex = 0; //will need to be refactored when polling is added
  });

  $scope.showFriend = function(index){
    $scope.friend = $scope.friends[index];
    $scope.friendIndex = index;
  }

}]);

fetchApp.controller('LikeCtrl', ['$scope', 'Like', function($scope, Like){

  $scope.newLike = new Like();

  // POST #create a Like via API
  this.add = function(likee_id){
    $scope.newLike.likee_id = likee_id;
    $scope.newLike.$save();
  }

}]);

fetchApp.controller('RejectionCtrl', ['$scope', 'Rejection', function($scope, Rejection){

  // POST #create a Rejection via API
  $scope.newRejection = new Rejection();

  this.add = function(rejectee_id){
    $scope.newRejection.rejectee_id = rejectee_id;
    console.log($scope.newRejection.rejector_id);
    console.log($scope.newRejection.rejectee_id);
    $scope.newRejection.$save();
  }

}]);

fetchApp.controller('WelcomeCtrl', ['$scope', function($scope) {

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
  }
  
}]);