/**
 * http://docs.casperjs.org/en/latest/modules/clientutils.html#sendajax
 * http://stackoverflow.com/questions/26555777/how-to-stop-casperjs-execution-and-let-the-user-input-some-value-and-then-contin/26556151#26556151
 * http://stackoverflow.com/questions/28271522/sendajax-data-parameter-in-casperjs
 * 
 * > casperjs cookie.test.casper.js --ignore-ssl-errors=true 
 */
var fs = require('fs');
var system = require('system');
var casper = require('casper').create({
	// clientScripts: ['jquery.js'],
	pageSettings: {
		webSecurityEnabled: false,
		javascriptEnabled: true,
		loadImages: true,
		loadPlugins: false
	},
	timeout: 100000,
	logLevel: "debug",
	verbose: true
});
phantom.cookiesEnabled = true;
//** load cookie
var data = fs.read('./_tmp/_cookie.txt') || "[]";

try {
	phantom.cookies = JSON.parse(data);
} catch (e) {
	console.error(e);
}
// console.log(JSON.stringify(phantom.cookies));

var account = {
	staffId: 'B90WZSLP',
};
var response = {};

casper.userAgent('Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)');

casper.start();

casper.open('https://gz.cbss.10010.com/essframe?service=page/Nav&STAFF_ID=' + account.staffId, {
	method: 'get',
	headers: {
		"Accept": "text/html, application/xhtml+xml, */*",
		"Referer": "https://gz.cbss.10010.com/essframe",
		"Accept-Language": "zh-CN",
		"User-Agent": "Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko",
		"Content-Type": "application/x-www-form-urlencoded",
		"Host": "gz.cbss.10010.com",
		"Connection": "Keep-Alive",
		"Cache-Control": "no-cache",
	},
});

casper.then(function checkLogin(){
	var homePageHtml = this.getHTML();
	fs.write('./_tmp/home_cookie.html', homePageHtml, 644);
	var homePageMeta = homePageHtml.match(/<meta.*provinceId.*?>/i);
	if(homePageMeta){
		//** 已登录
		response.meta = homePageMeta;
		response.status = '已登录';
	}else{
		//** 未登录
		response.status = '未登录';
	}
});

//** save cookies
casper.then(function saveCookie(){
	var cookies = JSON.stringify(phantom.cookies);
	// this.echo(JSON.stringify(phantom.cookies));
	fs.write('./_tmp/_cookie.txt', cookies, 644);
});

casper.run(function(){
	this.echo(JSON.stringify(response));
	casper.exit();
});
