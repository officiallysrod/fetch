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