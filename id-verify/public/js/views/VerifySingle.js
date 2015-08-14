define(['text!templates/verifySingle.tpl','text!templates/_itemVerify.tpl'], function(verifySingleTemplate,itemVerifyTemplate){
	var VerifySingleView = Backbone.View.extend({
		el: '#content',
		template: _.template(verifySingleTemplate),
		templateResult: _.template(itemVerifyTemplate),
		events: {
			'submit form': 'verify',
		},

		initialize: function(options){
			this.id = options.id;
			this.account = options.account;
			this.on('load', this.load,this);
		},

		load: function(){
			this.render();
		},

		verify: function(){
			var that = this;
			var card_id = this.$('input[name=card_id]').val();
			var card_name = this.$('input[name=card_name]').val();

			var pairs = [{card_id: '610125197004201212',card_name: '白卫'},{card_id: 1,card_name: 'test1'},{card_id:11,card_name: 'test11'}];

			$.ajax('/persons/check', {
				method: 'POST',
				dataType: 'json',
				// data: {
				// 	type: 'base',
				// 	persons: {
				// 		card_id: card_id,
				// 		card_name: card_name
				// 	}
				// },
				data: {
					type: 'base',
					persons: pairs
				},
				success: function(data){
					var person = data[0] || {};
					that.$('#result').html(that.templateResult({person: person}));
				},
				error: function(){
					that.$('#result').html('<p>服务器错误</p>');
				}
			});
			this.$('input[name=card_id]').val('');
			this.$('input[name=card_name]').val('');
			return false;
		},

		render: function(){
			this.$el.html(this.template());
			return this;
		}

	});

	return VerifySingleView;
})