<% if(project.isOwner){ %>
	<div class="pull-right">
	<a class="btn btn-primary pull-right" href="#project/<%= project._id %>/member/add">添加成员</a>
	</div>
<% } %>
<h2>成员</h2>

<div id="list"></div>