var menu = {
		button:[
			{
				type: 'click',
				name: '菜单1',
			},
			{
				name: '菜单2',
				sub_button:[
					{
						type: 'view',
						name: '子菜单1',
						url: 'http://www.baidu.com'
					},
					{
						type: 'click',
						name: '子菜单',
						key: ''
					}
				]
			},
			{
				name: "发图", 
				sub_button: [
					{
						"type": "pic_sysphoto", 
						"name": "系统拍照发图", 
						"key": "rselfmenu_1_0", 
						"sub_button": [ ]
					}, 
					{
						"type": "pic_photo_or_album", 
						"name": "拍照或者相册发图", 
						"key": "rselfmenu_1_1", 
						"sub_button": [ ]
					}, 
					{
						"type": "pic_weixin", 
						"name": "微信相册发图", 
						"key": "rselfmenu_1_2", 
						"sub_button": [ ]
					}
				]
			},
        ]
	};
exports = module.exports = menu;