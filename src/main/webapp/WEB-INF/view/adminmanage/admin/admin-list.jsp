<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="/WEB-INF/view/commons/meta.jsp" %>
<title>管理员列表-流量充值后台管理系统-摩尔科技</title>
</head>
<body>
<%@include file="/WEB-INF/view/commons/header.jsp" %>
<%@include file="/WEB-INF/view/commons/menu.jsp" %>
<%request.setCharacterEncoding("utf-8"); %>  
<section class="Hui-article-box">
	<nav class="breadcrumb"><i class="Hui-iconfont"></i>
		<a href="#" class="maincolor">管理员管理</a>
		<span class="c-999 en">&gt;</span>
		<a href="${ctx}/adminmanage/admin/admin-list.html" class="maincolor">管理员列表</a>
		<a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.reload();" title="刷新"><i class="Hui-iconfont">&#xe68f;</i></a>
	</nav>
	<div class="Hui-article">
		<article class="cl pt-20">
			<div class="admin-main">
				<div class="layui-field-box layui-form">
					<form class="form-search layui-form layui-form-pane" id="searchForm" load-action="${ctx}/adminmanage/admin/api/getAdminRoleList">
						<div class="layui-form-item">
							<label class="layui-form-label">账号:</label>
							<div class="layui-input-inline">
								<input type="text" name="loginName" value="${param.loginName}"  placeholder="根据账号过滤" class="layui-input">
							</div>
							<label class="layui-form-label">手机号:</label>
							<div class="layui-input-inline">
								<input type="text" name="mobile" value="${param.mobile}"  placeholder="根据手机号过滤" class="layui-input">
							</div>
							<div class="layui-btn-group">
								<button type="submit" class="layui-btn">查询</button>
								<button class="layui-btn" onClick="return false;" data-title="添加管理员" data-modal='${ctx}/adminmanage/admin/admin-add'>添加用户 </button>
							</div>
						</div>
					</form>
					<!-- <table lay-filter="layui-table" class="layui-table"> -->
					<table class="layui-table">
						<thead>
							<tr>
								<th lay-data="{field:'loginName', width:120}">账号</th>
								<th lay-data="{field:'mobile', width:130}">手机号</th>
								<th lay-data="{field:'realName', width:120}">姓名</th>
								<th lay-data="{field:'email', width:220}">邮箱</th>
								<th lay-data="{field:'lastLoginTime', width:160}">最后登录</th>
								<th lay-data="{field:'roleName', width:120}">角色组</th>
								<th lay-data="{field:'availableFlag', width:80}">状态</th>
								<th lay-data="{field:'handle',width:220}">操作</th>
							</tr>
						</thead>
						<tbody id="table-body">
						</tbody>
					</table>
				</div>
				<div class="admin-table-page" style="float:right; margin:20px;">
					<div id="page"></div>
				</div>
			</div>
		</article>
		<%@include file="/WEB-INF/view/commons/footer.jsp" %>
	</div>
</section>
<%@include file="/WEB-INF/view/commons/jslib.jsp" %>
<script id="main-template"  type="text/html"> 
	{{if rows.length > 0}} 
		{{each rows item}}
			<tr>
				<td>{{item.loginName}}</td>
				<td>{{item.mobile}}</td>
				<td>{{item.realName}}</td>
				<td>{{item.email}}</td>
				<td>{{item.lastLoginTime}}</td>
				<td>{{item.roleName}}</td>
				<td>
					{{if item.availableFlag}}
						可用
					{{else}}
						<font color='red'>禁用</font>
					{{/if}}
				</td>
				<td>
					<div class="layui-btn-group">
					<a class="layui-btn layui-btn-mini" data-modal="${ctx}/adminmanage/admin/admin-edit?id={{item.adminId}}" data-title="编辑管理员" >修改</a>
					<a class="layui-btn layui-btn-mini" data-modal="${ctx}/adminmanage/admin/admin-pass?id={{item.adminId}}" data-title="修改密码" >密码</a>
					{{if item.loginName != 'admin'}}	
						{{if item.availableFlag}}		
							<a data-update="{{item.adminId}}" data-action='${ctx}/adminmanage/admin/admin-forbid' data-title="确认禁用用户吗？" class="layui-btn layui-btn-danger layui-btn-mini">禁用</a>
						{{else}}
							<a data-update="{{item.adminId}}" data-action='${ctx}/adminmanage/admin/admin-resume' data-title="确认启用用户吗？" class="layui-btn layui-btn-mini">启用</a>
						{{/if}}
						<a data-update="{{item.adminId}}" data-action='${ctx}/adminmanage/admin/admin-delete' data-title="确认删除用户吗？" class="layui-btn layui-btn-danger layui-btn-mini">删除</a>
					{{/if}}
					</div>			
				</td>
			</tr>
		{{/each}} 
	{{else}}
		<tr><td colspan="8" style="text-align: center">暂无数据</td></tr>
	{{/if}}
</script>
</body>
</html>