<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/view/commons/taglib.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<form class="layui-form layui-box" style='padding:10px 10px 10px 10px' action="${ctx}/system/productgroup/api/product-update" data-auto="true" method="post">
	<div class="layui-fluid">
		<div class="layui-row">
			<div class="layui-col-md7">
				<b>产品组名称: ${resp.productGroupName}</b>
			</div>
			<div class="layui-col-md5">
				<font color="red">警告：删除产品会同时删除关联的通道产品和客户产品!</font>
			</div>
		</div>
	</div>
	<table class="layui-table" lay-filter="eventFilter" id="showTable">
		<thead>
			<tr>
				<th lay-data="{field:'flowValue', width:150}">流量值(M)</th>
				<th lay-data="{field:'marketPrice', width:160}">市场价(元)</th>
				<th lay-data="{field:'flowType', width:160}">流量类型</th>
				<th lay-data="{field:'flowDesc', width:220}">备注</th>
				<th lay-data="{field:'createTime', width:160}">创建时间</th>
				<th lay-data="{field:'handel', width:100}">操作</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="item" items="${resp.productList}" varStatus="s">
				<tr>
					<td>
						${item.flowValue}
						<input type="hidden"  name="flowValue" value="${item.flowValue}">
						<input type="hidden"  name="id" value="${item.id}">
					</td>
					<td>
						<input muxform="true" type="text" name="marketPrice" required="required" pattern="^[1-9]\d*(\.\d+)?$" title="市场价必须是数字" value="${item.marketPrice}" placeholder="请输入市场价" autocomplete="off" class="layui-input">
					</td>
					<td>
						<input type="hidden"  name="flowType" value="${item.flowType}">
						<c:choose>
							<c:when test="${item.flowType == 2}">
								特殊包
							</c:when>
							<c:otherwise>
								普通包
							</c:otherwise>
						</c:choose>
					</td>
					<td>
						<input type="text" name="flowDesc" value="${item.flowDesc}" placeholder="请输入备注" autocomplete="off" class="layui-input">
					</td>
					<td>
						<fmt:formatDate value="${item.createTime}" type="date" pattern="yyyy-MM-dd HH:mm:ss" />
					</td>
					<td>
						<div class="layui-btn-group">
							<button class="layui-btn layui-btn-small productDel">
								<i class="layui-icon">&#xe640;</i>
							</button>
							<!-- <button class="layui-btn layui-btn-small productAdd">
								<i class="layui-icon">&#xe654;</i>
							</button> -->
						</div>
					</td>
				</tr>
			</c:forEach>
			<tr data-class="clone">
				<td>
				<input type="hidden"  name="id" value="">
				<input type="text" muxform="true" name="flowValue" placeholder="请输入流量" pattern="^\d+$" title="流量必须是正整数" autocomplete="off" class="layui-input">
				</td>
				<td>
				<input type="text" muxform="true" name="marketPrice" placeholder="请输入市场价" pattern="^[1-9]\d*(\.\d+)?$" title="市场价必须是数字" autocomplete="off" class="layui-input">
				</td>
				<td>
					<select name="flowType" id="flowType">
						<option value="1">普通包</option>
						<option value="2">特殊包</option>
					</select>
				</td>
				<td><input type="text" name="flowDesc" placeholder="请输入备注" autocomplete="off" class="layui-input"></td>
				<td></td>
				<td>
					<div class="layui-btn-group">
						<button class="layui-btn layui-btn-small productDel">
							<i class="layui-icon">&#xe640;</i>
						</button>
						<button class="layui-btn layui-btn-small productAdd">
							<i class="layui-icon">&#xe654;</i>
						</button>
					</div>
				</td>
			</tr>
		</tbody>
	</table>
	<div class="layui-form-item text-c">
		<br><br>
		<input type="hidden" name="productGroupId" value="${resp.productGroupId}">
		<button class="layui-btn" type='submit'>保存数据</button>
		<button class="layui-btn layui-btn-danger" type='button' data-close>取消</button>
	</div>
</form>
<script type="text/javascript">
layui.use(['adminplugs'], function() {
	var form = layui.form,table = layui.table;
	table.init('eventFilter', {
		height: 288 //设置高度
	});
	$("#showTable").remove();
	form.render();
	
	function addParam(dom) {
		var tempTr = $(dom).closest("tr");
		tempTr.attr("class", "clone");
		var cloneTr = tempTr.clone();
		cloneTr.attr("class", "clone");
		cloneTr.find("input").each(function() {
			if($(this).attr("name")!="param_allow_null") {
				$(this).val("");
			}
		});
		tempTr.after(cloneTr);
	}
	function delParam(dom) {
		var tempTr = $(dom).closest("tr");
		var tb = tempTr.parent();
		var last = tb.children("tr:last");
		if(tb.children(".clone").length <= 1 && last.is(tempTr)) {
			layer.msg("留一个做模板吧");
		} else {
			tempTr.remove();
		}
	}
	
	$('table').on('click', 'button.productAdd', function () {
		addParam(this);
		form.render();
		return false;
	});
	$('table').on('click', 'button.productDel', function () {
		delParam(this);
		return false;
	});
});
</script>
