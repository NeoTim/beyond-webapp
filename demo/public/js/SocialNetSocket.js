define(['Sockets','views/ChatUsers','views/Projects','models/ContactCollection'], function(sio,ChatUsersView,ProjectsView,ContactCollection){

	var SocialNetSocket = function(options){
		var eventDispatcher = options.eventDispatcher;
		var currentChatView = options.currentChatView;
		var chatSessions = options.chatSessions;
		var socket = null;
		var accountId = null;

		var initialize = function(){
			eventDispatcher.bind('app:logined', connectSocket);
		}

		var connectSocket = function(socketAccount){
			accountId = socketAccount && socketAccount.accountId;
			socket = sio.connect();
			socket
				.on('connect_failed', function(reason){
					console.error('Unable to connect',reason);
				})
				.on('connect', function(){
					// console.info('established a connection successfully.');
					//in --> out
					eventDispatcher.on('socket:chat',handleSendChat);
					eventDispatcher.on('socket:project:chat', handleSendPorject);

					//in <-- out
					socket.on('contactEvent', handleContactEvent);
					socket.on('chatserver',handleChatEvent);
					socket.on('projectEvent', handleProjectEvent);

					renderChatView();
					renderProjectsView();
				});
		};

		var handleSendChat = function(payload){
			if(null != socket){
				socket.emit('chatclient',payload);
			}
		};

		var handleSendPorject = function(payload){
			if(null != socket){
				socket.emit('projectclient', payload);
			}
		};

		var handleContactEvent = function(eventObj){
			var eventName = eventObj.action + ':' + eventObj.from;
			if(eventObj.from == accountId){
				eventName = eventObj.action + ':me';
			}
			eventDispatcher.trigger(eventName,eventObj);
		};

		var handleChatEvent = function(data){
			eventDispatcher.trigger('socket:chat:start:' + data.from);
			eventDispatcher.trigger('socket:chat:in:' + data.from, data);
		};

		var handleProjectEvent = function(data){
			eventDispatcher.trigger('socket:project:chat:in:' + data.from, data);
		}

		var renderChatView = function(){
			var contactCollection = new ContactCollection();
			contactCollection.url = '/accounts/me/contacts';
			new ChatUsersView({
					collection:contactCollection,
					socketEvents: eventDispatcher,
					currentChatView: currentChatView,
					chatSessions: chatSessions,
				}).render();
			contactCollection.fetch({reset:true});
		};

		var renderProjectsView = function(){
			var projectsView = new ProjectsView({
				socketEvents: eventDispatcher,
			});
			projectsView.collection.url = 'accounts/me/projects';
			projectsView.trigger('load');
		};

		return {
			initialize: initialize
		}
	};

	return SocialNetSocket;
});