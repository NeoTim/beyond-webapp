var _ = require('underscore');
var $ = require('jquery'),
    Backbone = require('backbone'),
    registerTemplate = require('../../assets/templates/register.tpl');

Backbone.$ = $;

exports = module.exports = Backbone.View.extend({

	el: '#content',

	events: {
		'submit form': 'register',
		'swipeleft': 'swipeToLoginForm',
	},

	register: function(){
		$.post('/register',{
					username: $('input[name=username]').val(),
					email: $('input[name=email').val(),
					password: $('input[name=password').val()
				}, 
				function success(data){
					window.location.hash = 'login';
				})
		 .error(function(data){
					console.log(data);
				});
		return false;
	},

	swipeToLoginForm: function(){
		window.location.hash = 'login';
		return false;
	},

	render: function(){
		this.$el.html(registerTemplate());
		return this;
	},
});
