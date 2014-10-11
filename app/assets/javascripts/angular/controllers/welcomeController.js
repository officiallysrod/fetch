fetchApp.controller('WelcomeCtrl', ['$scope', function($scope) {

  // Trigger Animation ... Refactor into service!
  $scope.triggerAnimate = function(type) {
    var animationEndEvent = "webkitAnimationEnd mozAnimationEnd animationend",
        animate = (type == 'like') ? 'animateYes' : 'animateNo',
        self = this,
        topCard = $('.card').eq(0),
        topPerson = $('.person').eq(0);

    if (!this.blocked) {
      this.blocked = true;
        topCard.addClass(animate).one(animationEndEvent, function(){
          topPerson.remove();
          $(this).remove();
          self.blocked = false;
      });
    }
  }
  
}]);