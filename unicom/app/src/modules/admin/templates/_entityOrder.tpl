<div>
	<div id="indexTemplate">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h4 class="panel-title text-center">订单管理</h4>
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
				<label>&nbsp;&nbsp;</label>
				<input type="text" name="searchStr" class="form-control" placeholder="客户手机号码">&nbsp;&nbsp;
			</div>
			<div class="form-group">
				<select class="form-control">
					<option>全部</option>
					<option>新建</option>
					<option>完成</option>
				</select>&nbsp;&nbsp;
			</div>
			<div class="form-group">
				<input type="submit" value="查询" class="btn btn-info btn-block">
			</div>
		</form>
		<hr/>
	</div>
	<div id="itemTemplate">
		<div class="pull-right" id="<%= model._id %>">
			<button class="btn btn-success view">详情</button>
<!-- 			<button class="btn btn-success delete">删除</button>
 -->		</div>
		<h4><%= model.name %></h4>
		<p><%= model.description %></p>
		<p><i class="fa fa-clock-o"></i>&nbsp;<%= model.deltatime %>&nbsp;&nbsp;<i class="fa fa-calendar"></i>&nbsp;<%= new Date(model.lastupdatetime).toLocaleString() %></p>
		<hr/>
	</div>
	<div id="editTemplate">
		<form>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h5 class="panel-title text-center">编辑订单</h5>
				</div>
				<div class="panel-body">
					<div class="form-group">
						<label>订单号：</label>
						<input type="text" class="form-control" value="<%= model._id %>" readonly>
						<span class="help-block"></span>
					</div>
					<div class="form-group">
						<label>客户：</label>
							<input type="text" name="customer[id]" value="<%= model.customer.id %>&nbsp;&nbsp;<%= model.customer.name %>" class="form-control" readonly>
							<span class="help-block"></span>
					</div>
					<div class="form-group">
						<label>订单名称：</label>
						<input type="text" class="form-control" value="<%= model.name %>" readonly>
						<span class="help-block"></span>
					</div>
					<div class="form-group">
						<label>订单描述：</label>
						<textarea class="form-control" readonly><%= model.description %></textarea>
						<span class="help-block"></span>
					</div>
					<div class="form-group">
						<label>订单状态：</label>
						<div style="padding-left:30px;">
							<input type="radio" name="status" value="新建" checked>&nbsp;&nbsp;新建&nbsp;&nbsp;
							<input type="radio" name="status" value="已确认">&nbsp;&nbsp;已确认&nbsp;&nbsp;
							<input type="radio" name="status" value="已配送">&nbsp;&nbsp;已配送&nbsp;&nbsp;
							<input type="radio" name="status" value="完成">&nbsp;&nbsp;完成&nbsp;&nbsp;
							<input type="radio" name="status" value="用户取消">&nbsp;&nbsp;用户取消&nbsp;&nbsp;
							<input type="radio" name="status" value="后台取消">&nbsp;&nbsp;后台取消&nbsp;&nbsp;
							<input type="radio" name="status" value="其他原因">&nbsp;&nbsp;其他原因&nbsp;&nbsp;
						</div>
						<span class="help-block"></span>
					</div>
					<div class="form-group">
						<label>佣金总额：</label>
							<input type="text" name="bonus[income]" value="<%= model.bonus.income %>" class="form-control">
							<span class="help-block"></span>
					</div>
					<div class="form-group">
						<label>返佣分批次数：</label>
						<input type="text" name="bonus[times]" value="<%= model.bonus.times %>" class="form-control">
						<span class="help-block"></span>
					</div>
					<div class="form-group">
						<label>返佣状态：</label>
						<div style="padding-left:30px;">
							<input type="radio" name="bonus[cashStatus]" value="冻结" checked>&nbsp;&nbsp;冻结&nbsp;&nbsp;
							<input type="radio" name="bonus[cashStatus]" value="第一次解冻">&nbsp;&nbsp;第一次解冻&nbsp;&nbsp;
							<input type="radio" name="bonus[cashStatus]" value="第二次解冻">&nbsp;&nbsp;第二次解冻&nbsp;&nbsp;
							<input type="radio" name="bonus[cashStatus]" value="全部解冻">&nbsp;&nbsp;全部解冻&nbsp;&nbsp;
						</div>
						<span class="help-block"></span>
					</div>
					<div class="form-group">
						<label>已兑现佣金：</label>
							<input type="text" name="bonus[cash]" value="<%= model.bonus.cash %>" class="form-control">
							<span class="help-block"></span>
					</div>
					<div class="form-group">
						<label>积分：</label>
							<input type="text" name="bonus[points]" value="<%= model.bonus.points %>" class="form-control">
							<span class="help-block"></span>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title text-center">商品清单</h4>
						</div>
						<div class="panel-body">
							<div id="items">
							</div>
							<div>
								<h3 class="text-right">总价：<%= Number(model.total).toFixed(2) %>元</h3>
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title text-center">客户信息</h4>
						</div>
						<div class="panel-body">
							<div class="form-group">
								<label>客户姓名：</label>
									<input type="text" name="customerInfo[name]" value="<%= model.customerInfo.name %>" class="form-control">
									<span class="help-block"></span>
							</div>
							<div class="form-group">
								<label>证件类型：</label>
									<input type="text" name="customerInfo[idType]" value="<%= model.customerInfo.idType %>" class="form-control">
									<span class="help-block"></span>
							</div>
							<div class="form-group">
								<label>证件号码：</label>
									<input type="text" name="customerInfo[idNo]" value="<%= model.customerInfo.idNo %>" class="form-control">
									<span class="help-block"></span>
							</div>
							<div class="form-group">
								<label>证件地址：</label>
									<input type="text" name="customerInfo[idAddress]" value="<%= model.customerInfo.idAddress %>" class="form-control">
									<span class="help-block"></span>
							</div>
							<div class="form-group">
								<label>联系电话：</label>
									<input type="text" name="customerInfo[phone]" value="<%= model.customerInfo.phone %>" class="form-control">
									<span class="help-block"></span>
							</div>
							<div class="form-group">
								<label>联系地址：</label>
									<input type="text" name="customerInfo[address]" value="<%= model.customerInfo.address %>" class="form-control">
									<span class="help-block"></span>
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title text-center">配送信息</h4>
						</div>
						<div class="panel-body">
							<div class="form-group">
								<label>配送方式：</label>
								<div style="padding-left:30px;">
									<input type="radio" name="dispatch[method]" value="自提" checked>&nbsp;&nbsp;自提&nbsp;&nbsp;
									<input type="radio" name="dispatch[method]" value="物流">&nbsp;&nbsp;物流&nbsp;&nbsp;
								</div>
								<span class="help-block"></span>
							</div>
							<div class="form-group">
								<label>联系电话：</label>
									<input type="text" name="dispatch[phone]" value="<%= model.dispatch.phone %>" class="form-control">
									<span class="help-block"></span>
							</div>
							<div class="form-group">
								<label>收货地址：</label>
									<input type="text" name="dispatch[address]" value="<%= model.dispatch.address %>" class="form-control">
									<span class="help-block"></span>
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="btn-group btn-group-justified">
							<div class="btn-group">
								<input type="submit" value="更改订单信息" class="btn btn-danger">
							</div>
							<div class="btn-group">
								<button class="btn btn-primary back">取消</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>
	<div id="viewTemplate">
		<div class="panel panel-default">
			<div class="pull-right">
				<button class="btn btn-danger edit">编辑</button>
			</div>
			<button class="btn btn-primary back">返回</button>
			<div class="panel-heading">
				<h5 class="panel-title text-center">查看订单</h5>
			</div>
			<div class="panel-body">
				<form class="form-horizontal">
					<div class="form-group">
						<label class="col-sm-2">订单号：</label>
						<div class="col-sm-10">
							<p><%= model._id %></p>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2">客户：</label>
						<div class="col-sm-10">
							<p><%= model.customer.id %>&nbsp;&nbsp;<%= model.customer.name %></p>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2">订单名称：</label>
						<div class="col-sm-10">
							<p><%= model.name %></p>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2">订单描述：</label>
						<div class="col-sm-10">
							<p><%= model.description %></p>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2">订单状态：</label>
						<div class="col-sm-10">
							<p><%= model.status %></p>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2">佣金总额：</label>
						<div class="col-sm-10">
							<p><%= model.bonus.income %>&nbsp;&nbsp;元</p>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2">返佣方式：</label>
						<div class="col-sm-10">
							<p><%= model.bonus.times %>&nbsp;&nbsp;批</p>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2">返佣状态：</label>
						<div class="col-sm-10">
							<p><%= model.bonus.cashStatus %></p>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2">佣金兑现：</label>
						<div class="col-sm-10">
							<p><%= model.bonus.cash %>&nbsp;&nbsp;元</p>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2">积分：</label>
						<div class="col-sm-10">
							<p><%= model.bonus.points %></p>
						</div>
					</div>
<!-- 					<div class="form-group">
						<label class="col-sm-2">物料名称：</label>
						<div class="col-sm-10">
							<p><%= model.goodId %></p>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2">物料ID：</label>
						<div class="col-sm-10">
							<p><%= model.goodName %></p>
						</div>
					</div>
 -->					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title text-center">商品清单</h4>
						</div>
						<div class="panel-body">
							<div id="items">
							</div>
							<div>
								<h3 class="text-right">总价：<%= Number(model.total).toFixed(2) %>元</h3>
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title text-center">客户信息</h4>
						</div>
						<div class="panel-body">
							<table class="table table-striped">
								<tbody>
									<tr>
										<td>客户姓名：</td>
										<td><%= model.customerInfo.name %></td>
									</tr>
									<tr>
										<td>客户电话：</td>
										<td><%= model.customerInfo.phone %></td>
									</tr>
									<tr>
										<td>证件类型：</td>
										<td><%= model.customerInfo.idType %></td>
									</tr>
									<tr>
										<td>证件号码</td>
										<td><%= model.customerInfo.idNo %></td>
									</tr>
									<tr>
										<td>证件地址</td>
										<td><%= model.customerInfo.idAddress %></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title text-center">配送信息</h4>
						</div>
						<div class="panel-body">
							<table class="table table-striped">
								<tr>
									<td>配送方式：</td>
									<td><%= model.dispatch.method %></td>
								</tr>
								<tr>
									<td>联系电话</td>
									<td><%= model.dispatch.phone %></td>
								</tr>
								<tr>
									<td>收货地址</td>
									<td><%= model.dispatch.address %></td>
								</tr>
							</table>
						</div>
					</div>
					<div>
						<div class="btn-group btn-group-justified">
							<div class="btn-group">
								<button class="btn btn-danger edit">编辑</button>
							</div>
							<div class="btn-group">
								<button class="btn btn-primary back">返回</button>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>