// Triggers card swipe animation
fetchApp.directive('ngCardSwipe', function() {
	return {
		restrict: "A",
		link: function(scope, element, attrs) {

	  		var animationEndEvent = "webkitAnimationEnd mozAnimationEnd animationend",
	        animate = (type == 'like') ? 'animateYes' : 'animateNo',
	        self = this,
	        topCard = $('.card').eq(0),
	        topPerson = $('.person').eq(0),

	        // Google: How do you pass a parameter into an angular directive?
	        type = attrs;

				element.bind('click', function(type) {
			    if (!this.blocked) {
			    	console.log("something is being called");
			      this.blocked = true;
			        topCard.addClass(animate).one(animationEndEvent, function(){
			          topPerson.remove();
			          $(this).remove();
			          self.blocked = false;
			      });
			    }
				});
		
		}
	}
});