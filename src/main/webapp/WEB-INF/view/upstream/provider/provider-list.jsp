<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="/WEB-INF/view/commons/meta.jsp" %>
<title>供应商-流量充值后台管理系统-摩尔科技</title>
</head>
<body>
<%@include file="/WEB-INF/view/commons/header.jsp" %>
<%@include file="/WEB-INF/view/commons/menu.jsp" %>

<section class="Hui-article-box">
	<nav class="breadcrumb"><i class="Hui-iconfont"></i>
		<a href="#" class="maincolor">上游管理</a>
		<span class="c-999 en">&gt;</span>
		<a href="#" class="maincolor">供应商列表</a>
		<a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新"><i class="Hui-iconfont">&#xe68f;</i></a>
	</nav>
	<div class="Hui-article">
		<article class="cl pd-20">
			<div class="product-group-main">
				<div class="layui-field-box layui-form">
					<form class="form-search layui-form layui-form-pane" id="searchForm" load-action="${ctx}/upstream/provider/api/getProviderList"  onsubmit="return false">
						<div class="layui-form-item">
							<label class="layui-form-label">供应商名称:</label>
							<div class="layui-input-inline">
								<input type="text" name="providerName" placeholder="供应商名称" class="layui-input">
							</div>
							<label class="layui-form-label">供应商编码:</label>
							<div class="layui-input-inline">
								<input type="text" name="providerCode" placeholder="供应商编码" class="layui-input">
							</div>
							<div class="layui-btn-group">
								<button type="submit" class="layui-btn">查询</button>
								<button class="layui-btn layui-btn-normal" onClick="return false;" data-title="添加供应商" modal-width="1100px" modal-offset="30px" data-modal='${ctx}/upstream/provider/provider-add'>添加供应商 </button>
							</div>
						</div>
					</form>
					<table class="layui-table">
						<thead>
							<tr>
								<th lay-data="{field:'providerName', width:220}">供应商名称</th>
								<th lay-data="{field:'providerCode', width:120}">供应商编码</th>
								<th lay-data="{field:'money', width:120}">余额/总额(元)</th>
								<th lay-data="{field:'status', width:120}">状态</th>
								<th lay-data="{field:'callTime', width:120}">回调时长(分钟)</th>
								<th lay-data="{field:'concurrentNum', width:120}">并发量(单/秒)</th>
								<th lay-data="{field:'visitUrl', width:120}">访问地址</th>
								<th lay-data="{field:'createTime', width:120}">创建时间</th>
								<th lay-data="{field:'handle', width:220}">操作</th>
							</tr>
						</thead>
						<tbody id="table-body">
						</tbody>
					</table>
				</div>
				<div style="float:right; margin:20px;">
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
				<td>{{item.providerName}}</td>
				<td>{{item.providerCode}}</td>
				<td>{{item.balance}}/{{item.totalMoney}}</td>
				<td>
				{{if item.status}}
					正常
				{{else}}
						<font color='red'>停用</font>
				{{/if}}
				</td>
				<td>{{item.callTime}}</td>
				<td>{{item.concurrentNum}}</td>
				<td>
				{{if item.visitUrl != null}}
					<a class="maincolor" target="_blank" href="{{item.visitUrl}}">打开地址</a>
				{{/if}}
				</td>
				<td>{{item.createTime}}</td>
				<td>
					<div class="layui-btn-group">
						<a class="layui-btn layui-btn-mini" modal-width="1000px" data-modal="${ctx}/system/productgroup/pgroup-productedit?pgroupId={{item.id}}" data-title="添加/编辑产品" >编辑产品</a>
						<a data-update="{{item.id}}" data-action='${ctx}/system/productgroup/pgroup-delete' data-title="确认删除该产品组吗？<br><font color='red'>警告：此操作将会删除对应的通道和通道产品以及客户产品！</font>" class="layui-btn layui-btn-danger layui-btn-mini">删除</a>	
					</div>		
				</td>
			</tr>
		{{/each}} 
	{{else}}
		<tr><td colspan="8" style="text-align: center">暂无数据</td></tr>
	{{/if}}
</script>
<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript">

</script>
</body>
</html>