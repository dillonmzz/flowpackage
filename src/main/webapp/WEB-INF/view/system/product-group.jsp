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
					<form class="form-search layui-form layui-form-pane" id="searchForm" <%-- load-action="${ctx}/system/api/product-group" --%>>
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
							<button type="submit" class="layui-btn">查询</button>
							<button class="layui-btn" onClick="return false;" data-title="添加管理员" data-modal='${ctx}/admin/admin-add'>添加用户 </button>
						</div>
					</form>
					<table class="layui-table" lay-skin="line">
						<thead>
							<tr>
								<th>序号</th>
								<th>账号</th>
								<th>手机号</th>
								<th>姓名</th>
								<th>邮箱</th>
								<th>最后登录</th>
								<th>角色组</th>
								<th>状态</th>
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
<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript">
layui.use('adminplugs', function(){
	$.myutil.loadProvince();
});
</script>
</body>
</html>