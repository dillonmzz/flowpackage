<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="/WEB-INF/view/commons/meta.jsp" %>
<title>基础产品-流量充值后台管理系统-摩尔科技</title>
</head>
<body>
<%@include file="/WEB-INF/view/commons/header.jsp" %>
<%@include file="/WEB-INF/view/commons/menu.jsp" %>

<section class="Hui-article-box">
	<nav class="breadcrumb"><i class="Hui-iconfont"></i>
		<a href="/" class="maincolor">系统配置</a>
		<span class="c-999 en">&gt;</span>
		<span class="c-666">基础产品</span>
		<a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新"><i class="Hui-iconfont">&#xe68f;</i></a>
	</nav>
	<div class="Hui-article">
		<article class="cl pd-20">
			<div class="product-group-main">
				<div class="layui-field-box layui-form">
					<form class="form-search layui-form layui-form-pane" id="searchForm" load-action="${ctx}/system/api/getProductGroup">
						<div class="layui-form-item">
							<label class="layui-form-label">运营商:</label>
							<div class="layui-input-inline">
								<select name="operatorCode">
							        <option value="0">--请选择--</option>
								  	<option value="1">移动</option>
								  	<option value="2">联通</option>
								  	<option value="3">电信</option>
							     </select>
							</div>
							<label class="layui-form-label">省份:</label>
							<div class="layui-input-inline">
								<select name="provinceCode" lay-verify="" lay-search>
									<option value="">--请选择--</option>
									<option value="0">--请选择--</option>
							    </select>
							</div>
							<label class="layui-form-label">产品类型:</label>
							<div class="layui-input-inline">
								<select name="productType">
									<option value="0">--请选择--</option>
								  	<option value="1">全国包可漫游</option>
								  	<option value="2">省包不可漫游</option>
							    </select>
							</div>
							<button type="submit" class="layui-btn">查询</button>
							<button class="layui-btn" onClick="return false;" data-title="添加产品组" data-modal='${ctx}/system/chanelGroupAdd'>添加产品组 </button>
						</div>
					</form>
					<table class="layui-table" lay-skin="line">
						<thead>
							<tr>
								<th>产品组名称</th>
								<th>运营商</th>
								<th>省份</th>
								<th>产品类型</th>
								<th>创建时间</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody id="table-body">
						</tbody>
					</table>
				</div>
				<div class="admin-table-page" style="float:right; bottom:20;">
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
				<td>{{item.adminId}}</td>
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
					<a class="layui-btn layui-btn-mini" data-modal="${ctx}/admin/admin-edit?id={{item.adminId}}" data-title="编辑管理员" >修改</a>
					<a class="layui-btn layui-btn-mini" data-modal="${ctx}/admin/admin-pass?id={{item.adminId}}" data-title="修改密码" >密码</a>
					{{if item.loginName != 'admin'}}	
						{{if item.availableFlag}}		
							<a data-update="{{item.adminId}}" data-action='${ctx}/admin/admin-forbid' data-title="确认禁用用户吗？" class="layui-btn layui-btn-danger layui-btn-mini">禁用</a>
						{{else}}
							<a data-update="{{item.adminId}}" data-action='${ctx}/admin/admin-resume' data-title="确认启用用户吗？" class="layui-btn layui-btn-mini">启用</a>
						{{/if}}
						<a data-update="{{item.adminId}}" data-action='${ctx}/admin/admin-delete' data-title="确认删除用户吗？" class="layui-btn layui-btn-danger layui-btn-mini">删除</a>
					{{/if}}
				</td>
			</tr>
		{{/each}} 
	{{else}}
		<tr><td colspan="8" style="text-align: center">暂无数据</td></tr>
	{{/if}}
</script>
<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript">
layui.use('adminplugs', function(){
	$.myutil.loadProvince();
});
</script>
</body>
</html>