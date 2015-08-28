var $ = require('jquery');
var Backbone = require('backbone');

var router = new (require('./Router_wechat'))();

Backbone.$ = $;

exports = module.exports = function(){
	
	var checkLogin = function(callback){
		$.ajax('/account/authenticated',{
			mathod: 'GET',
			success: function(data){
				router.appEvents.trigger('logined',data);
				return callback(true);
			},
			error: function(){
				return callback(false);
			}
		});
	};

	var checkOpenId = function(originid,callback){
		$.ajax('/wechat/check/openid?originid=' + originid,{
			mathod: 'GET',
			success: function(data){
				callback();
			},
			error: function(){
				window.location.href = '/wechat/oauth2?originid=' + originid;
			}
		});
	};

	router.originid = originid;

	checkOpenId(originid,function(){
		checkLogin(function(authenticated){
			if(!authenticated){
				window.location.hash = 'login';
			}else{
				// window.location.hash = 'index';
			}
			Backbone.history.start();
		});
	});
};