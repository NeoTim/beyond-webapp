var _ = require('underscore');
var $ = require('jquery'),
	Backbone = require('backbone'),
    productTpl = require('../templates/_entityProductDirect.tpl'),
	loadingTpl = require('../templates/__loading.tpl');
var config = require('../conf');

Backbone.$ = $;
var ListView = require('./_ProductDirectList');

exports = module.exports = Backbone.View.extend({

	el: '#content',

	loadingTemplate: _.template(loadingTpl),

	initialize: function(options) {
		this.router = options.router;
		var page = $(productTpl);
		var indexTemplate = $('#indexTemplate', page).html();
		this.template = _.template(_.unescape(indexTemplate || ''));

		this.on('load', this.load, this);
	},

	events: {
		'scroll': 'scroll',
		'click .search': 'search',
		'click .view': 'productView',
		'click .wechat': 'wechat',
	},

	load: function() {
		var that = this;
		this.loaded = true;
		this.render();
		this.listView = new ListView({
			el: '#list',
		});
		this.listView.collection.url = config.api.host + '/channel/product/directs';
		this.listView.trigger('load');
	},

	scroll: function() {
		this.listView.scroll();
		return false;
	},

	search: function(){
		this.$('#search').show();
		return false;
	},

	productView: function(evt){
		var id = this.$(evt.currentTarget).closest('.item').attr('id');
		this.router.navigate('product/view/'+ id,{trigger: true});
		return false;
	},

	wechat: function(evt){
		var id = this.$(evt.currentTarget).closest('.item').attr('id');
		window.location.href = config.api.host + '/sale/page/data/' + config.wechat.appid + '/' + id + '/' + this.router.account.id;
		return false;
	},
	
	render: function() {
		if (!this.loaded) {
			this.$el.html(this.loadingTemplate());
		} else {
			this.$el.html(this.template());
		}
		return this;
	},
});