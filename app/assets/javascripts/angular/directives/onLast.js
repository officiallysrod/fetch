// Pushes the activity stream to the bottom of the container
fetchApp.directive('onLast', function() {
  var objDiv = document.getElementById("activity-stream");
      return function(scope, element, attrs) {
        if (scope.$last){
          setTimeout(function(){
          	objDiv.scrollTop = objDiv.scrollHeight + 9999;
          }, 100);
        }
    };
});