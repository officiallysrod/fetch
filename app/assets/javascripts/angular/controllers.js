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

  $scope.selectUser = function(userData) {
    $scope.selectedUser = userData;
  }

}]);

fetchApp.controller('MatchCtrl', ['$scope', 'Match', 'Message',function($scope, Match, Message){

  var objDiv = document.getElementById("activity-stream");

  // GET the #index of friends (matches) from API
  Match.query(function(json){
    $scope.friends = json;

    //sets an initial value for friend so the friendshow partial has something to render on load
    $scope.friend = $scope.friends[0];
    $scope.messages = $scope.friend.conversation;
  });

  $scope.showMatch = function(index){
    $scope.indexValue = index;
    $scope.friend = $scope.friends[index];
    $scope.messages = $scope.friend.conversation;
  }

  $scope.newMessage = new Message();

  $scope.sendMessage = function(recipient_id, body){
    $scope.newMessage.recipient_id = recipient_id;
    $scope.newMessage.body = body;
    $scope.newMessage.conversation_id = $scope.friend.conversation_id;
    $scope.newMessage.$save(function(){
      $scope.messages.push($scope.newMessage);
      $scope.newMessage = new Message();
      $scope.message_body = null;
    });
  }

  source = new EventSource('/matches/events');
  source.addEventListener('message', function(e){
    Match.query(function(json){
      $scope.friends = json;
      
      if($scope.indexValue == null){
        $scope.friend = $scope.friends[0];
      }
      else {
        $scope.friend = $scope.friends[$scope.indexValue];
      };
      
      $scope.messages = $scope.friend.conversation;
    });
  });

  $scope.$on('onLast', function($scope) {
    // Push messenger to bottom when a new message is made,
    // Not the best solution
    setTimeout(function(){objDiv.scrollTop = objDiv.scrollHeight + 9999;}, 200);
  });

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