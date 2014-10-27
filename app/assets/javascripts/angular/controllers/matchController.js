fetchApp.controller('MatchCtrl', ['$scope', 'Match', 'Message',function($scope, Match, Message){

  var objDiv = document.getElementById("activity-stream");

  // GET the #index of friends (matches) from API
  Match.query(function(json){
    $scope.friends = json;

    //sets an initial value for friend so the friendshow partial has something to render on load
    $scope.friend = $scope.friends[0];
    
    if ($scope.friend) {
      $scope.messages = $scope.friend.conversation;      
    }
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

  source = new EventSource('api/messages/events');
  source.addEventListener('messages.create', function(e){
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
