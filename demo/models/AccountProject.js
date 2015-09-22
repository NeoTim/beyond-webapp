module.exports = exports = function(app,mongoose){

	var schema = new mongoose.Schema({
			pid: String,//project id
			uid: String,//account id
			username: String,
			avatar: String,
			roles: [], //0:参与; 1:主持
			notification: Boolean, //通知提醒，true: 接收；false: 拒绝
			status: {
				code: Number,//0: 正常；1: 待确认；-1: 拒绝/不显示
				message: String,
			},
			lastupdatetime: Date,
		});
	schema.set('collection', 'account.projects');

	return mongoose.model('AccountProject', schema);
};