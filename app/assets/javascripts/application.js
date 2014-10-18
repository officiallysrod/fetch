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
//= require angular
//= require angular-resource
// require angular-rails-templates
//= require bootstrap
//= require_tree .


ready = function() {
	// Prevent links with href="#" from doing their default action
	$('a[href*=#]').click(function(e){ e.preventDefault(); });

	// Clicking the email button reveals the signup/login form .. Refactor into WelcomeCTRL
	$('.modal-dialog').on('click', '.btn-email', function(e) {
		e.preventDefault();
		$('.email-hidden').show();
	});
}
$(document).ready(ready);
$(document).on('page:load', ready);

