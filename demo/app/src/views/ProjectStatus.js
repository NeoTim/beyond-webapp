var _ = require('underscore');
var $ = require('jquery'),
    Backbone = require('backbone'),
    projectStatusTemplate = require('../../assets/templates/projectStatus.tpl'),
    bottomBarTemplate = require('../../assets/templates/_barProjectBottom.tpl'),
    ScrollableView = require('./__ScrollableView'),
    StatusView = require('./_ItemProjectStatus'),
    Project = require('../models/Project'),
    Status = require('../models/Status'),
    StatusCollection = require('../models/StatusCollection');

Backbone.$ = $;

exports = module.exports = ScrollableView.extend({

	el: '#content',

	events: {
		'click .editor-toggle': 'editorToggle',
		'submit form': 'updateStatus',
		'scroll': 'scroll',
	},
	
	initialize: function(options){
		this.pid = options.pid;
		// options.socketEvents.bind('status:me',this.onSocketStatusAdded, this);
		this.collection = new StatusCollection();
		this.collection.url = '/messages/project/status/'+ this.pid;
		this.collectionUrl = this.collection.url;
		this.collection.on('add', this.onStatusAdded, this);
		this.collection.on('reset', this.onStatusCollectonReset, this);
		this.on('load', this.load, this);
	},

	load: function(){
		this.collection.fetch();
	},

	onSocketStatusAdded: function(data){
		var newStatus = data.data;
		this.collection.add(new Status({status: newStatus.status, name: newStatus.name}));
	},

	onStatusCollectonReset: function(collection){
		var that = this;
		collection.each(function(model){
			that.onStatusAdded(model);
		});
	},

	onStatusAdded: function(status){
		var statusHtml = (new StatusView({model: status})).render().el;
		$(statusHtml).appendTo('.status_list').hide().fadeIn('slow');
	},

	editorToggle: function(){
		if(this.$('.status-editor').hasClass('hidden')){
			this.$('.status-editor').removeClass('hidden').hide().fadeIn('slow');
		}else{
			this.$('.status-editor').addClass('hidden').hide().fadeOut('slow');
		}
	},

	updateStatus: function(){
		var statusCollection = this.collection;
		var statusText = $('textarea[name=text]').val();
		$.post('/messages/project/'+ this.pid,{text: statusText},function(data){
			// statusCollection.add(new Status({status: statusText,name:{first:'我'}}));
		});
		// var statusModel = new Status({status:statusText,name: {first:'我'}});
		// this.onStatusAdded(statusModel);
		$('textarea[name=text]').val('');
		this.$('.status-editor').addClass('hidden').hide().fadeOut('slow');
		return false;
	},

	render: function(){
		//增加 bottom Bar
		if($('.navbar-absolute-bottom').length == 0){
			var bottomBarHtml = bottomBarTemplate({id:this.pid});
			$('.app').prepend('<div class="bottom-bar">' +bottomBarHtml + '</div>');
			if(!$('body').hasClass('has-navbar-bottom')){
				$('body').addClass('has-navbar-bottom');
			}
		}
		this.$el.html(projectStatusTemplate({model:{_id: this.pid, name: '动态'}}));
		return this;
	},
});