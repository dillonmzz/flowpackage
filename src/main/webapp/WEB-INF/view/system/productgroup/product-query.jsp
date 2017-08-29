<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="/WEB-INF/view/commons/meta.jsp" %>
<title>产品查询-流量充值后台管理系统-摩尔科技</title>
</head>
<body>
<%@include file="/WEB-INF/view/commons/header.jsp" %>
<%@include file="/WEB-INF/view/commons/menu.jsp" %>

<section class="Hui-article-box">
	<nav class="breadcrumb"><i class="Hui-iconfont"></i>
		<a href="/" class="maincolor">系统配置</a>
		<span class="c-999 en">&gt;</span>
		<a href="${ctx}/system/productgroup/product-query.html" class="maincolor">产品查询</a>
		<a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新"><i class="Hui-iconfont">&#xe68f;</i></a>
	</nav>
	<div class="Hui-article">
		<article class="cl pt-20">
			<div class="layui-field-box layui-form">
				<form class="form-search layui-form layui-form-pane" id="searchForm" load-action="${ctx}/system/productgroup/api/productquery"  onsubmit="return false">
					<div class="layui-form-item">
						<label class="layui-form-label">运营商:</label>
						<div class="layui-input-inline" style="width: 120px">
							<select name="operatorCode">
								<option value="0">--请选择--</option>
							  	<option value="1">移动</option>
							  	<option value="2">联通</option>
							  	<option value="3">电信</option>
						     </select>
						</div>
						<label class="layui-form-label">省份:</label>
						<div class="layui-input-inline" style="width: 160px">
							<select name="provinceCode" lay-verify="" lay-search>
								<option value="0">--请选择--</option>
						    </select>
						</div>
						<label class="layui-form-label">产品类型:</label>
						<div class="layui-input-inline"  style="width: 130px">
							<select name="productType">
								<option value="0">--请选择--</option>
							  	<option value="1">全国包可漫游</option>
							  	<option value="2">省包不可漫游</option>
						    </select>
						</div>
						<label class="layui-form-label">产品编码:</label>
						<div class="layui-input-inline"  style="width: 160px">
							<input type="text" name="productCode" placeholder="请输入产品编号" class="layui-input">
						</div>
						<div class="layui-btn-group">
							<button type="submit" class="layui-btn">查询</button>
						</div>
					</div>
				</form>
				<table class="layui-table">
					<thead>
						<tr>
							<th lay-data="{field:'productGroupName', width:220}">产品编码</th>
							<th lay-data="{field:'operatorCode', width:120}">运营商</th>
							<th lay-data="{field:'provinceName', width:120}">省份</th>
							<th lay-data="{field:'productType', width:120}">产品类型</th>
							<th lay-data="{field:'flowValue', width:120}">流量值(M)</th>
							<th lay-data="{field:'handle', width:220}">流量类型</th>
							<th lay-data="{field:'handle', width:220}">备注</th>
							<th lay-data="{field:'handle', width:220}">市场价(元)</th>
						</tr>
					</thead>
					<tbody id="table-body">
					</tbody>
				</table>
			</div>
			<div style="float:right; margin:20px;">
				<div id="page"></div>
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
				<td>{{item.productCode}}</td>
				<td>
				{{if item.operatorCode == 1}}
					移动
				{{else if item.operatorCode == 2}}
					联通
				{{else if item.operatorCode == 3}}
					电信
				{{/if}}
				</td>
				<td>{{item.provinceName}}</td>
				<td>
				{{if item.productType == 1}}
					全国包可漫游
				{{else item.productType == 2}}
					省包不可漫游
				{{/if}}
				</td>
				<td>{{item.flowValue}}</td>
				<td>
				{{if item.flowType == 1}}
					普通包
				{{else item.flowType == 2}}
					特殊包
				{{/if}}
				</td>
				<td>{{item.flowDesc}}</td>
				<td>{{item.marketPrice}}</td>
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