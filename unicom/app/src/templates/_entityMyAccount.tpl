<div>
	<div id="registerTemplate">
		<!-- <h1>注册</h1> -->
		<div class="">
			<div class="">
				<div class="">
					<div class="panel panel-default" id="registerForm">
						<div class="panel-heading">
							<h3 class="panel-title text-center">注册</h3>
						</div>
						<div class="panel-body">
							<div id="error"></div>
							<form>
								<div class="form-group">
									<label for="username">姓名：</label>
									<input type="text" name="username" value="<%= model.username %>" class="form-control input-sm" placeholder="姓名"/>
									<span class="help-block"></span>
								</div>
								<div class="form-group">
									<label>邮件：</label>
									<input type="text" name="email" value="<%= model.email %>" class="form-control input-sm" placeholder="邮件"/>
									<span class="help-block"></span>
								</div>
								<div class="form-group">
									<label>密码：</label>
									<input type="password" name="password" value="<%= model.password %>" class="form-control input-sm" placeholder="数字或字母，不少于六位"/>
									<span class="help-block"></span>
								</div>
								<div class="form-group">
									<label>密码（再来一次）：</label>
									<input type="password" name="cpassword" value="<%= model.cpassword %>" class="form-control input-sm" placeholder="请再次输入密码"/>
									<span class="help-block"></span>
								</div>
								<div class="form-group">
									<label>渠道名称：<a href="#" id="selectChannel">请选择渠道名称</a></label>
									<input type="text" name="channel[name]" class="form-control input-sm" disabled>
									<span class="help-block"></span>
								</div>
								<div class="form-group">
									<label>渠道代码：</label>
									<input type="text" name="channel[code]" class="form-control input-sm" disabled>
									<span class="help-block"></span>
								</div>
								<div class="form-group">
									<label>渠道地址：</label>
									<input type="text" name="channel[address]" class="form-control input-sm" disabled>
									<span class="help-block"></span>
								</div>
		                        <div class="form-group">
		                        	<a href="#" class="pull-right" id="login">已经有账号了，去登录！</a>
		                    	</div>
		                    	<br>
								<div class="form-group">
									<input type="submit" value="现在注册" class="btn btn-primary btn-block"/>
								</div>
							</form>					
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="text-center">
		    <hr>
		    <p>版权所有@2014~2015&nbsp;&nbsp;苏州普德邦网络技术有限公司</p>
		    <p>支持IPhone、IPad、Android等移动终端。Windows、Mac等桌面系统，请使用&nbsp;Chrome&nbsp;谷歌最新浏览器访问<a href="https://www.baidu.com/s?wd=chrome浏览器官方下载" target="_blank">下载</a>
		</div>
	</div>
	<div id="registerSuccessTemplate">
		<p></p>
		<p></p>
		<div class="">
			<div class="">
				<div class="">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title text-center">注册成功</h3>
						</div>
						<div class="panel-body">
							<p>恭喜您，注册成功!</p>
							<p>您还不能登录，请检查您的邮箱，点击邮件中的链接激活您的账号。</p>
						</div>
					</div>
				</div>
			</div>
		</div>

		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<hr>
		<div class="text-center">
		    <p>版权所有@2014~2015&nbsp;&nbsp;苏州普德邦网络技术有限公司</p>
		    <p>支持IPhone、IPad、Android等移动终端。Windows、Mac等桌面系统，请使用&nbsp;Chrome&nbsp;谷歌最新浏览器访问<a href="https://www.baidu.com/s?wd=chrome浏览器官方下载" target="_blank">下载</a>
		</div>		
	</div>
	<div id="channelSearchTemplate">
		<button class="btn btn-primary back">返回</button>
		<hr>
        <form role="form">
	        <div class="form-group">
	            <input type="text" name="search" class="form-control input-sm" placeholder="渠道名称">
	            <span class="help-block"></span>
	        </div>
        </form>
        <div id="list">渠道列表，请选择一个</div>
	</div>
	<div id="loginTemplate">
		<p></p>
		<p></p>
		<div class="">
		    <div class="">
		        <div class="">
		            <div class="panel panel-default" id="loginForm">
		                <div class="panel-heading">
		                    <h3 class="panel-title text-center">登&nbsp;&nbsp;录</h3>
		                </div>
		                <div class="panel-body">
		                    <div id="error"></div>
		                    <form role="form">
		                        <div class="form-group">
		                            <input type="text" name="email" class="form-control input-sm" placeholder="邮件/用户名">
		                            <span class="help-block"></span>
		                        </div>

		                        <div class="form-group">
		                            <input type="password" name="password" class="form-control input-sm" placeholder="密码">
		                            <span class="help-block"></span>
		                        </div>

		                        <div class="form-group">
		                        	<a href="#" class="pull-right" id="register">还没有注册，去注册吧！</a>
		                       		<a href="#" id="forgot">忘记密码？</a>
		                    	</div>

		                        <br>
		                        <input type="submit" value="登&nbsp;&nbsp;录" class="btn btn-primary btn-block">
		                    </form>
		                </div>
		            </div>
		        </div>
		    </div>
		</div>

		<div class="text-center">
		    <hr>
		    <p>版权所有@2014~2015&nbsp;&nbsp;苏州普德邦网络技术有限公司</p>
		    <p>支持IPhone、IPad、Android等移动终端。Windows、Mac等桌面系统，请使用&nbsp;Chrome&nbsp;谷歌最新浏览器访问<a href="https://www.baidu.com/s?wd=chrome浏览器官方下载" target="_blank">下载</a>
		</div>
	</div>
	<div id="forgotPasswordTemplate">
		<div class="">
			<div class="">
				<div class="">
				<div class="panel panel-default" id="forgotPasswordForm">
					<div class="panel-heading">
		                    <h3 class="panel-title text-center">找回密码</h3>
					</div>
					<div class="panel-body">
						<div id="error"></div>
						<form role="form">
							<div class="form-group" id="email">
								<label for="email">您的邮件地址：</label>
								<input type="text" name="email" class="form-control" placeholder="邮箱">
								<span class="help-block"></span>
							</div>
		                        <div class="form-group">
		                        	<a href="#" class="pull-right" id="login">换个账号，去登录！</a>
		                    	</div>
		                    	<br>
							<div class="form-group">
								<input type="submit" value="重置密码" class="btn btn-primary btn-block">
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		</div>
		<div class="text-center">
		    <hr>
		    <p>版权所有@2014~2015&nbsp;&nbsp;苏州普德邦网络技术有限公司</p>
		    <p>支持IPhone、IPad、Android等移动终端。Windows、Mac等桌面系统，请使用&nbsp;Chrome&nbsp;谷歌最新浏览器访问<a href="https://www.baidu.com/s?wd=chrome浏览器官方下载" target="_blank">下载</a>
		</div>
	</div>
	<div id="forgotPasswordSuccessTemplate">
		<p></p>
		<p></p>
		<div class="">
			<div class="">
				<div class="">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title text-center">邮件发送成功</h3>
						</div>
						<div class="panel-body">
							<p>请检查邮箱，按邮件提示重置密码。</p>
						</div>
					</div>
				</div>
			</div>
		</div>

		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>

		<div class="text-center">
		    <hr>
		    <p>版权所有@2014~2015&nbsp;&nbsp;苏州普德邦网络技术有限公司</p>
		    <p>支持IPhone、IPad、Android等移动终端。Windows、Mac等桌面系统，请使用&nbsp;Chrome&nbsp;谷歌最新浏览器访问<a href="https://www.baidu.com/s?wd=chrome浏览器官方下载" target="_blank">下载</a>
		</div>
	</div>
	<div id="editTemplate">
		<input type="file" class="hidden">
		<a id="send-file">
			<div class="form-group">
				<img id="avatar" src="/images/avatar.jpg" width="120px" height="160px">
				<br/>更换头像
			</div>
		</a>

		<div id="accountForm">
			<form>
				<div class="form-group">
					<label for="username">姓名：</label>
					<input type="text" name="username" value="<%= model.username %>" class="form-control">
					<span class="help-block"></span>
				</div>
				<div class="form-group">
					<label for="email">电子邮件：</label>
					<input type="text" name="email" value="<%= model.email %>" class="form-control" readonly>
					<span class="help-block"></span>
				</div>
				<div class="form-group">
					<label for="password">密码：</label>
					<input type="password" name="password" class="form-control"/>
					<span class="help-block"></span>
				</div>
				<div class="form-group">
					<label for="password">密码(再次)：</label>
					<input type="password" name="cpassword" class="form-control"/>
					<span class="help-block"></span>
				</div>
				<div class="form-group">
					<label for="biography">自传：</label>
					<textarea name="biography" rows="3" class="form-control"><%= model.biography %></textarea>
					<span class="help-block"></span>
				</div>
				<div class="form-group">
					<input type="submit" class="btn btn-block btn-primary"/>
				</div>
			</form>
		</div>
	</div>
	<div id="viewTemplate">
		<% if(model.me){ %>
		<div class="editor-layer">
			<a class="btn btn-primary pull-right editor-control" href="#profile/edit/me">编辑</a>
			<p>&nbsp;</p>
		</div>
		<% } %>
		<hr>

		<div class="media">
			<div class="pull-left">
				<img id="avatar" class="media-object" src="/images/avatar.jpg" width="120px" height="160px">
			</div>
			<div class="media-body">
				<h2 class="media-heading"><%= model.username %></h2>
				<h4><%= model.email %></h4>
			</div>
		</div>
		<p class="clearfix"></p>
		<hr>
		<h2>我的自传</h2>
		<%if(model.biography && model.biography.length > 0){ %>
			<p><%= model.biography %></p>
		<%}else{ %>
			<p class="small">比较懒，没写自我介绍</p>
		<% } %>

		<% if(model.me){ %>
		<hr>
		<div class="button-layer">
			<a href="#" class="btn btn-block btn-danger logout">退出</a>
		</div>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<% } %>
	</div>

	<div id="login2Template">
		<p></p>
		<p></p>
		<div class="">
		    <div class="">
		        <div class="">
		            <div class="panel panel-default" id="loginForm">
		                <div class="panel-heading">
		                    <h3 class="panel-title text-center">登&nbsp;&nbsp;录</h3>
		                </div>
		                <div class="panel-body">
		                    <div id="error"></div>
		                    <form role="form">
		                        <div class="form-group" id="email">
		                            <input type="text" name="email" class="form-control input-sm" placeholder="邮件/用户名">
		                            <span class="help-block"></span>
		                        </div>

		                        <div class="form-group" id="password">
		                            <input type="password" name="password" class="form-control input-sm" placeholder="密码">
		                            <span class="help-block"></span>
		                        </div>

		                        <br>
		                        <input type="submit" value="登&nbsp;&nbsp;录" class="btn btn-primary btn-block">
		                    </form>
		                </div>
		            </div>
		        </div>
		    </div>
		</div>
		<p>&nbsp;</p>

		<div class="text-center">
		    <hr>
		    <p>版权所有@2014~2015&nbsp;&nbsp;苏州普德邦网络技术有限公司</p>
		    <p>支持IPhone、IPad、Android等移动终端。Windows、Mac等桌面系统，请使用&nbsp;Chrome&nbsp;谷歌最新浏览器访问<a href="https://www.baidu.com/s?wd=chrome浏览器官方下载" target="_blank">下载</a>
		</div>
	</div>	
</div>