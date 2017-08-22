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
		<a href="${ctx}/system/productgroup/pgroup-list.html" class="maincolor">基础产品</a>
		<a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新"><i class="Hui-iconfont">&#xe68f;</i></a>
	</nav>
	<div class="Hui-article">
		<article class="cl pt-20">
			<div class="product-group-main">
				<div class="layui-field-box layui-form">
					<form class="form-search layui-form layui-form-pane" id="searchForm" load-action="${ctx}/system/productgroup/api/getProductGroup"  onsubmit="return false">
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
							<div class="layui-btn-group">
								<button type="submit" class="layui-btn">查询</button>
								<button class="layui-btn" onClick="return false;" data-title="添加产品组" data-modal='${ctx}/system/productgroup/pgroup-add'>添加产品组 </button>
							</div>
							</div>
					</form>
					<table class="layui-table">
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
				<td><a class="maincolor">{{item.productGroupName}}[{{item.childProductNums}}个]</a></td>
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
				<td>{{item.createTime}}</td>
				<td>
					<div class="layui-btn-group">
						<a class="layui-btn layui-btn-mini" data-modal="${ctx}/system/productgroup/pgroup-addproduct?id={{item.id}}" data-title="添加/编辑产品" >编辑产品</a>
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
layui.use('adminplugs', function(){
	$.myutil.loadProvince();
});
</script>
</body>
</html>