var _ = require('underscore');

var config = require('../../../conf');

_.extend(config,{
	app: {
		name: '渠道销售移动客户端',
		nickname: 'channel',
		description: '',
	},
	menu: [{
		"id": 1,
		"name": "首页",
		"hash": "index",
		"features": [],
	},{
		"id": 2,
		"name": "流量产品",
		"hash": "data/index",
		"features": ["channel_product_goods"],
	},{
		"id": 3,
		"name": "传统增值",
		"hash": "sms/index",
		"features": ["channel_product_goods"],
	},{
		"id": 4,
		"name": "内容推荐",
		"hash": "push/index",
		"features": ["channel_product_goods"],
	},{
		"id": 5,
		"name": "号卡产品",
		"hash": "card/index",
		"features": ["channel_product_card"],
	},{
		"id": 6,
		"name": "终端产品",
		"hash": "phone/index",
		"features": ["channel_product_phone"],
	},{
		"id": 7,
		"name": "销售线索",
		"hash": "sale/lead/index",
		"features": [],
	},{
		"id": 8,
		"name": "我的客户",
		"hash": "customer/index",
		"features": ["channel_customer"],
	},{
		"id": 9,
		"name": "我的业绩",
		"hash": "order/index",
		"features": ["channel_order"],
	},{
		"id": 11,
		"name": "意见反馈",
		"nickname": "feedback",
		"hash": "feedback/index",
		"features": ["channel_reveue"],
	},{
		"id": 12,
		"name": "同事圈",
		"hash": "activity/index",
		"features": ["channel_account_activity"],
	},{
		"id": 13,
		"name": "我的资料",
		"hash": "profile/me",
		"features": ["my_account"],
	}]	
});

exports = module.exports = config;