<p></p>
<p></p>
<div class="">
    <div class="">
        <div class="">
            <div class="panel panel-default" id="strategyForm">
            	<div class="pull-left">
					<button class="btn btn-primary" id="back">返回</button>
            	</div>
            	<div class="pull-right">
					<button class="btn btn-primary" id="edit">编辑</button>
            	</div>
                <div class="panel-heading">
                    <h3 class="panel-title text-center">交易品种</h3>
                </div>
                <div class="panel-body">
                    <div id="error"></div>
                    <form role="form">
                        <div class="form-group" id="symbol">
                        	<label>品种编号：</label>
                            <input type="text" name="symbol" value="<%= model.symbol %>" class="form-control input-sm" placeholder="">
                            <span class="help-block"></span>
                        </div>
                        <div class="form-group" id="stock_name">
                        	<label>股票名称：</label>
                            <input type="text" name="stock_name" value="<%= model.stock.name %>" class="form-control input-sm" placeholder="">
                            <span class="help-block"></span>
                        </div>
                        <div class="form-group" id="stock_code">
                        	<label>股票代码：</label>
                            <input type="text" name="stock_code" class="form-control input-sm" placeholder="">
                            <span class="help-block"></span>
                        </div>
                        <fiedset>
                        	<legend>参数设置</legend>
	                        <div class="form-group" id="name">
	                        	<label>交易策略名称：</label>
	                            <input type="text" name="name" class="form-control input-sm" placeholder="">
	                            <span class="help-block"></span>
	                        </div>
	                        <div class="form-group" id="description">
	                        	<label>交易策略描述：</label>
	                            <input type="text" name="description" class="form-control input-sm" placeholder="">
	                            <span class="help-block"></span>
	                        </div>
	                        <div class="form-group" id="risk_h">
	                        	<label>风险上限：</label>
	                            <input type="text" name="risk_h" class="form-control input-sm" placeholder="">
	                            <span class="help-block"></span>
	                        </div>
	                        <div class="form-group" id="risk_l">
	                        	<label>风险下限：</label>
	                            <input type="text" name="risk_l" class="form-control input-sm" placeholder="">
	                            <span class="help-block"></span>
	                        </div>
	                        <div class="form-group" id="init_p">
	                        	<label>起始交易价格：</label>
	                            <input type="text" name="init_p" class="form-control input-sm" placeholder="">
	                            <span class="help-block"></span>
	                        </div>
	                        <div class="form-group" id="init_v">
	                        	<label>首次交易量：</label>
	                            <input type="text" name="init_v" class="form-control input-sm" placeholder="">
	                            <span class="help-block"></span>
	                        </div>
	                        <div class="form-group" id="buy_lt">
	                        	<label>下跌买入(%)：</label>
	                            <input type="text" name="buy_lt" class="form-control input-sm" placeholder="">
	                            <span class="help-block"></span>
	                        </div>
	                        <div class="form-group" id="sell_gt">
	                        	<label>上涨卖出(%)：</label>
	                            <input type="text" name="sell_gt" class="form-control input-sm" placeholder="">
	                            <span class="help-block"></span>
	                        </div>
	                        <div class="form-group" id="quantity">
	                        	<label>单次交易量：</label>
	                            <input type="text" name="quantity" class="form-control input-sm" placeholder="">
	                            <span class="help-block"></span>
	                        </div>
	                        <div class="form-group" id="times_max">
	                        	<label>最大交易次数：</label>
	                            <input type="text" name="times_max" class="form-control input-sm" placeholder="">
	                            <span class="help-block"></span>
	                        </div>
	                        <div class="form-group" id="depth">
	                        	<label>最大交易深度：</label>
	                            <input type="text" name="depth" class="form-control input-sm" placeholder="">
	                            <span class="help-block"></span>
	                        </div>
	                        <div class="form-group" id="method">
	                        	<label>交易方法：</label>
	                            <input type="text" name="method" class="form-control input-sm" placeholder="">
	                            <span class="help-block"></span>
	                        </div>
                        </fiedset>
                        <div class="form-group" id="status">
                        	<label>交易状态：</label>
                            <input type="radio" name="status" value="1">&nbsp;&nbsp;开启
                            <input type="radio" name="status" value="0" checked>&nbsp;&nbsp;停止
                            <span class="help-block"></span>
                        </div>
                        <div class="form-group" id="submit">
	                        <input type="submit" value="提&nbsp;&nbsp;交" class="btn btn-danger btn-block">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>