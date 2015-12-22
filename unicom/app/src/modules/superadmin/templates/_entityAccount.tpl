<div>
	<div id="indexTemplate">
		<div class="panel panel-default">
			<div class="pull-right">
				<button class="btn btn-primary add">新增</button>
			</div>
			<div class="panel-heading">
				<h4 class="panel-title text-center">账号列表</h4>
			</div>
			<div class="panel-body">
				<div id="search">
				</div>
				<div id="list">
				</div>
			</div>
		</div>
	</div>
	<div id="searchTemplate">
		<form id="searchForm" class="form-inline">
			<div class="form-group">
				<label>搜索：</label>
				<input type="text" name="searchStr" class="form-control" placeholder="用户名/用户账号">&nbsp;&nbsp;
			</div>
			<div class="form-group">
				<select class="form-control">
					<option>全部</option>
					<option>有效</option>
					<option>无效</option>
				</select>&nbsp;&nbsp;
			</div>
			<div class="form-group">
				<input type="submit" value="查询" class="btn btn-info btn-block">
			</div>
		</form>
		<hr/>
	</div>
	<div id="itemTemplate">
<!-- 		<div class="pull-left">
			<a href="#">
				<img class="media-object" src="" alt="" height="50px" width="50px">
			</a>
		</div>
 -->
 		<div class="pull-right" id="<%= model._id %>">
			<button class="btn btn-success edit">编辑</button>
			<button class="btn btn-danger delete">删除</button>
		</div>
		<h5 class="media-heading"><%= model.username %></h5>
		<p><%= model.email %></p>
		<hr/>
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
		                        	<a href="#login" class="pull-right">换个账号，去登录！</a>
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
		<div class="form-group">
			<% if(/\.png$/.test(model.avatar)){ %>
			<!-- <img src="<%= model.avatar %>" width="120px" height="160px"> -->
			<% }else{ %>
			<img src="" width="120px" height="160px">
			<% } %>
			<br>
			<input type="file" name="avatar"/>
		</div>

		<div id="accountForm">
			<form>
				<div class="form-group">
					<label for="username">姓名：</label>
					<input type="text" name="username" value="<%= model.username %>" class="form-control">
					<span class="help-block"></span>
				</div>
				<div class="form-group">
					<label for="email">电子邮件：</label>
					<input type="text" name="email" value="<%= model.email %>" class="form-control">
					<span class="help-block"></span>
				</div>
					<div class="form-group">
						<label>功能角色：</label>
						<div style="padding-left:30px;" id="roles">
						</div>
					</div>
				<div class="form-group">
					<label for="password">密码：</label>
					<input type="password" name="password" class="form-control">
					<span class="help-block"></span>
				</div>
				<div class="form-group">
					<label for="password">密码(再次)：</label>
					<input type="password" name="cpassword" class="form-control">
					<span class="help-block"></span>
				</div>
				<div class="form-group">
					<label for="biography">自传：</label>
					<textarea name="biography" rows="3" class="form-control"><%= model.biography %></textarea>
					<span class="help-block"></span>
				</div>
				<div class="form-group">
					<div class="btn-group btn-group-justified">
						<div class="btn-group">
							<input type="submit" value="提交" class="btn btn-danger">
						</div>
						<div class="btn-group">
							<button class="btn btn-primary back">取消</button>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
	<div id="viewTemplate">
		<% if(me){ %>
		<div class="editor-layer">
			<a class="btn btn-primary pull-right editor-control" href="#profile/me/edit">编辑</a>
			<p>&nbsp;</p>
		</div>
		<% } %>
		<hr>

		<div class="media">
			<div class="pull-left">
				<img class="media-object" src="" width="120px" height="160px">
			</div>
			<div class="media-body">
				<h2 class="media-heading"><%= account.username %></h2>
				<h4>&lt;<%= account.email %>&gt;</h4>
			</div>
		</div>
		<p class="clearfix"></p>
		<input type="file" name="avatar"/>
		<hr>
		<h2>我的自传</h2>
		<%if(account.biography && account.biography.length > 0){ %>
			<p><%= account.biography %></p>
		<%}else{ %>
			<p class="small">比较懒，没写自我介绍</p>
		<% } %>

		<% if(me){ %>
		<hr>
		<div class="button-layer">
			<a href="#" class="btn btn-block btn-danger logout">退出</a>
		</div>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<% } %>
	</div>
</div>