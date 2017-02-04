// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require underscore
//= require gmaps/google
//= require jquery.turbolinks
//= require turbolinks
//= require_tree .

// document.addEventListener("turbolinks:load", function() {
// 	$(function(){
// 		$(".log-menu").on('click', function(){
// 			$('.loginafter-menu').slideToggle('fast');
// 		});
// 			$(".log-menu").on('click', function(e){
// 			$('.loginafter2').children('ul').slideToggle('fast');
// 			e.stopPropagation();
// 		});
// 	});
// });

document.addEventListener("turbolinks:load", function() {
	$(function(){
		$(".log-menu").on('click', function(){
			$(this).next('ul').slideToggle('fast');
		});
			$('li').on('click', function(e){
			$(this).children('ul').slideToggle('fast');
			e.stopPropagation();
		});
	});
});


// document.addEventListener("turbolinks:load", function(){
// 	$(function(){
// 		$(".log-menu").on('click', function(e){
// 			$('.loginafter2').children('ul').slideToggle('fast');
// 			e.stopPropagation();
// 		});
// 	});
// });


document.addEventListener("turbolinks:load", function() {
	$(function(){
		$('.menu-icon').click(function(){
			$('.header-right').slideToggle();
		});
	});
});


document.addEventListener("DOMContentLoaded", function(){
	var options = {
		enableHighAccuracy: true,
		timeout: 60000,
		maximumAge: 0
	};
	window.navigator.geolocation.getCurrentPosition(success, error, options);
}, false);

function success(pos) {
  document.getElementById('item_latitude').value = pos.coords.latitude;
  document.getElementById('item_longitude').value = pos.coords.longitude;
}

function error(err){
	console.warn('ERROR(' + err.code + '): ' + err.message);
}

	

