var shell = require('shelljs');
var robotJS = require("robotjs");

var robot = null;
var Robot = function(options){

};

Robot.prototype.open = function(){
	shell.exec('open "/Applications/Microsoft Office 2011/Microsoft Word.app"');
};

Robot.prototype.buy = function(symbol,price,amount,done){
	done();
	this.open();
	robotJS.setMouseDelay(1000);
	// robotJS.moveMouse(300,300);
	robotJS.mouseClick();
	robotJS.keyTap('home');
	robotJS.setKeyboardDelay(1000);
	robotJS.keyTap('down');
	robotJS.setKeyboardDelay(1000);
	robotJS.typeString('buy ' + symbol + ' at: ' + price + ' by ' + amount);
};

Robot.prototype.sell = function(symbol,price,amount,done){
	done();
	this.open();
	robotJS.setMouseDelay(1000);
	// robotJS.moveMouse(300,300);
	robotJS.mouseClick();
	robotJS.keyTap('home');
	robotJS.setKeyboardDelay(1000);
	robotJS.keyTap('down');
	robotJS.setKeyboardDelay(1000);
	robotJS.typeString('sell ' + symbol + ' at: ' + price + ' by ' + amount);
};

Robot.prototype.verify = function(pic, done){
	done(null,true);
};

Robot.prototype.confirm = function(){
	this.open();
	robotJS.setMouseDelay(1000);
	// robotJS.moveMouse(300,300);
	robotJS.mouseClick();
	robotJS.typeString('confirm done.');
};

exports = module.exports = function(options){
	if(!robot)
		robot = new Robot(options);
	return robot;
};
