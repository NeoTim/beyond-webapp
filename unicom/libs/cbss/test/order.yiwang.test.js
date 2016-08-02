var orderYiwang = require('../lib/order.yiwang');
var account = (require('../../../config/cbss').accounts)[9];//** 1 贵阳， 9 遵义
console.log(account);

orderYiwang({
	cwd: __dirname,//** 当前工作路径
	tempdir: './_tmp',
	release: false,//** 开发模式
	staffId: account.staffId,
	// phone: '15692740700', //** 贵阳
	// phone: '18685106847', //** 李奇
	phone: '15599220698', //** 遵义
	// phone: '18586706769',
	product: {
		name: '贵州省流量风暴杯10元流量包-次月生效【贵州】',
		price: '10',
		barcode: '89990196k51708887e8101109TD', //贵阳，贵州省风暴杯10元包立即生效
		// barcode: '89992192k51708887e8101109TD', //贵阳，贵州省风暴杯10元包次月生效
		// barcode: '89990194k51708888e8101119TD', //贵阳，贵州省风暴杯20元包立即生效
		// barcode: '89992193k51708888e8101119TD', //贵阳，贵州省风暴杯20元包次月生效
		// barcode: '89990192k51713628e8101511TD', //贵阳，贵州省风暴杯30元包立即生效
		// barcode: '89992194k51713628e8101511TD', //贵阳，贵州省风暴杯30元包次月生效
		// barcode: '89922087k51708887e8101109TD',//遵义，贵州省风暴杯10元包150M
		// barcode: '89922087k51708888e8101119TD',//遵义，贵州省风暴杯20元包包450M
		// barcode: '89922087k51713628e8101511TD',//遵义，贵州省风暴杯30元包1.5G省内流量包
		// barcode: '89738265k51633110e5991245TD|89738265k51633110e5390171TD',//遵义，4G用户10元100M国内流量-次月生效
		// barcode: '89738266k51633111e5991423TD|89738266k51633111e5390014TD',//遵义，4G用户20元300M国内流量-次月生效
		// barcode: '89738267k51633112e5991272TD|89738267k51633112e5390034TD',//遵义，4G用户30元500M国内流量-次月生效
		// barcode: '89950097k51715163e5390094TD|89950097k51715163e5991900TD',//遵义，4G用户50元1G国内流量-次月生效
		// barcode: '89950098k51715164e5390045TD|89950098k51715164e5991890TD',//遵义，4G用户70元2G国内流量-次月生效
		// barcode: '89950099k51715165e5390095TD|89950099k51715165e5991910TD',//遵义，4G用户100元3G国内流量-次月生效
		// barcode: '89738259k51633104e5991243TD|89738259k51633104e5390170TD',//遵义，4G用户10元100M国内流量-立即生效
		// barcode: '89738260k51633105e5991422TD|89738260k51633105e5390013TD',//遵义，4G用户20元300M国内流量-立即生效
		// barcode: '89738261k51633106e5991271TD|89738261k51633106e5390033TD',//遵义，4G用户30元500M国内流量-立即生效
		// barcode: '89950087k51715153e5390093TD|89950087k51715153e5991840TD',//遵义，4G用户50元1G国内流量-立即生效
		// barcode: '89950089k51715154e5390044TD|89950089k51715154e5991850TD',//遵义，4G用户70元2G国内流量-立即生效
		// barcode: '89950091k51715157e5390092TD|89950091k51715157e5991860TD',//遵义，4G用户100元3G国内流量-立即生效
	}
}, function(err, result){
	if(err) console.log(err);
	console.log(result);
});