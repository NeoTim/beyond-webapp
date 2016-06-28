/**
 * 
 * 命令行：
 * > node __filename
 * --or--
 * > node __filename 15692740700 http://130.85.50.34:7772/XMLReceiver
 * 
 */
var getBalance = require('../lib/getBalance');

//** Unit Test
if(process.argv[1] == __filename){
	//** 测试 getFluxBalance()
	getBalance({
		url: process.argv[3] || 'http://130.85.50.34:7772/XMLReceiver',
		requestId: 'ALUOP151123071351894382625439' + parseInt(Math.random()*10000),
		UserNumber: process.argv[2] || '15692740700',
	},function(err,result){
		if(err) return console.log(err);
		console.log(JSON.stringify(result));
	});
};