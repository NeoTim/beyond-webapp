var _ = require('underscore');
var Backbone = require('backbone');
var config = require('../conf');
var Model = require('./Role');

exports = module.exports = Backbone.Collection.extend({
	url: config.api.host + '/admin/roles',
	model: Model,
});