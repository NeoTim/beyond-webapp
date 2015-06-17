define(['text!templates/index.html','views/ProjectItem','models/ProjectCollection'],
	function(indexTemplate,ProjectItemView,ProjectCollection){
	var IndexView = Backbone.View.extend({
		el: '#content',

		loaded: false,
		events: {
			'click .editor-toggle': 'editorToggle',
			'submit form': 'updateStatus'
		},
		
		initialize: function(options){
			this.socketEvents = options.socketEvents;
			this.collection = new ProjectCollection();
			this.collection.url = '/accounts/me/projects';
			this.collection.on('add', this.onProjectAdded, this);
			this.collection.on('reset', this.onProjectCollectionReset, this);
			this.on('load', this.load,this);
		},

		load: function(){
			loaded = true;
			this.render();
			this.collection.fetch({reset: true});
		},

		onProjectAdded: function(project){
			var projectItemView = new ProjectItemView({model: project,socketEvents: this.socketEvents});
			var projectItemHtml = projectItemView.render().el;
			console.log()
			if(project.get('type') == 1){
				this.$('.my-projects-none').remove();
				$(projectItemHtml).appendTo('.my-projects');
			}else{
				this.$('.other-projects-none').remove();
				$(projectItemHtml).appendTo('.other-projects');
			}
		},

		onProjectCollectionReset: function(collection){
			var that = this;
			collection.each(function(project){
				that.onProjectAdded(project);
			});
		},

		render: function(){
			this.$el.html(indexTemplate);
			return this;
		},
	});
	return IndexView;
});