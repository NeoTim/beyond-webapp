var _ = require('underscore');
var $ = require('jquery'),
    Backbone = require('backbone'),
    loadingTemplate = require('../../assets/templates/loading.tpl'),
    indexTemplate = require('../../assets/templates/index.tpl'),
    ProjectWidget = require('./_WidgetProject');

Backbone.$ = $;

exports = module.exports = Backbone.View.extend({

	el: '#content',

	loaded: false,

	initialize: function(options){
		this.socketEvents = options.socketEvents;
		this.on('load', this.load, this);
	},

	load: function(){
		this.loaded = true;
		this.render();
		this.projectWidget = new ProjectWidget({
			el: '#project-widget',
			socketEvents: this.socketEvents
		});
		this.projectWidget.trigger('load');
	},

	render: function(){
		if(!this.loaded){
			this.$el.html(loadingTemplate());
		}else{
			this.$el.html(indexTemplate());
		}
		return this;
	},
});