// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require turbolinks
//= require_tree .


/* Angular! */
angular.module('fetchApp', []).controller('appCtrl', ['$scope', function($scope) {
	
	// Prevent links with href="#" from doing their default action
	$('a[href*=#]').click(function(){ preventDefault(); });

	// Clicking the email button reveals the signup/login form
	$('.modal-dialog').on('click', '.btn-email', function(e) {
		e.preventDefault();
		$('.email-hidden').show();
	});

	/* Trigger Animations */
	var animationEndEvent = "webkitAnimationEnd mozAnimationEnd animationend";
	var App = {
		yesButton: $('.button.yes .trigger'),
		noButton: $('.button.no .trigger'),
		blocked: false,
		like: function(liked){
			var animate = liked ? 'animateYes' : 'animateNo';
			var self = this;
			if (!this.blocked) {
			  this.blocked = true;
			  	$('.card').eq(0).addClass(animate).one(animationEndEvent, function(){
		   			$('.person').eq(0).remove();
		   			$(this).remove();
					// Person.add();
					self.blocked = false;
				});
			}
		}
	};
	  
	App.yesButton.on('mousedown', function(){
		App.like(true);
	});

	App.noButton.on('mousedown', function(){
		App.like(false);
	});


	$scope.conversation = ["fasdfasdfasd", "dasdasdsad", "dsadsadsads"];
	$scope.sendMessage() = function() {
		if ($scope.messageContent) {
			$scope.conversation.push(this.messageContent);
			$scope.messageContent = '';
		}
	}
}]);

// For welcome page
	// var Person = {
	// 	wrap: $('#people'),
	// 	people: [ 
	// 		{name: 'Linda', age: 25, img: "http://24.media.tumblr.com/4ed64ee93e836eb35815005a2dad1dcd/tumblr_moq7byid9X1sveqd0o1_500.jpg"},
	// 		{name: 'Lisa', age: 20, img: "http://static.tumblr.com/0a7257e93a9805cc312b3279d47be567/50rw3ru/ExMmijhcr/tumblr_static_hooter-girls-instagram-39.jpg"},
	// 		{name: 'Sandra', age: 18, img: "http://www.lovethispic.com/uploaded_images/25946-Girl-With-Purple-Hair-And-Tats.jpg"},
	// 		{name: 'Susan', age: 21, img: "http://trendshaircut.com/wp-content/uploads/2014/04/pretty-girl-with-brown-hair-tumblr-89r0wxmn.jpg"},
	// 		{name: 'Alexa', age: 23, img: "http://1.bp.blogspot.com/-jDUiTWRqlS0/UulDkOUDsdI/AAAAAAAC6N8/pdkc_Itr8Nw/s1600/tumblr_mt7ym5TOOh1suwnr1o1_500.png"},
	// 		{name: 'Maria', age: 21, img: "http://33.media.tumblr.com/57bf666478f6bfc6082a8c7a7d272746/tumblr_n1045z6XTf1qzkyono1_500.jpg"},
	// 		{name: 'Clara', age: 18, img: "http://snickeriggles.files.wordpress.com/2013/11/tumblr_m8k01pdshn1rntry2o1_500_large.jpg"},
	// 		{name: 'Sara', age: 18, img: "http://i40.tinypic.com/ofxe21.jpg"},
	// 		{name: 'Lara', age: 22, img: "http://38.media.tumblr.com/84d982c883aa3ff654e6fa7ee7011fba/tumblr_mu00wgk2zN1rz6rffo1_1280.jpg"}
	// 	],
	// 	add: function(){
	// 		var random = this.people[Math.floor(Math.random() * this.people.length)];
	// 		this.wrap.append("<div class='person'><img alt='" + random.name + "' src='" + random.img + "' /><span><strong>" + random.name + "</strong>, " + random.age + "</span></div>");
	// 	}
	// };

	

  // Person.add();
  // Person.add();
  // Person.add();
  // Person.add();	