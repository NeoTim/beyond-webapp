exports = module.exports = function(app,models){

	var getMore = function(req,res){
			if(req.params.aid != 'me') 
				return res.send({code: 40100, message: 'not support.'});
			var aid = req.session.accountId;
			var page = (!req.query.page || req.query.page < 0) ? 0 : req.query.page;
			isNaN(page) ? 0 : page;
			var per = 20;
			models.AccountActivity
				.findOne({
					uid:aid
				})
				.slice('statuses',[per*page, per])
				.exec(function(err,doc){
					if(err) return res.send(err);
					if(!doc) return res.send({code: 40400, message: 'acount activity is not found.'});
					models.AccountStatus
						.find({
							_id:{
								$in: doc.statuses
							}
						})
						.exec(function(err,docs){
							if(err) return res.send(err);
							res.send(docs);
						});
				});
		};
/**
 * router outline
 */
	/**
	 * get account's activities
	 * 
	 */
	app.get('/activities/account/:aid', app.isLogined, getMore);
}