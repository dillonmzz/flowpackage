<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/view/commons/taglib.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<form class="layui-form layui-box" style='padding:10px 10px 10px 10px' <%-- action="${ctx}/adminmanage/admin/api/update" --%> data-auto="true" method="post">
	<div class="layui-fluid">
		<div class="layui-row">
			<div class="layui-col-md11">
				<b>产品组名称: ${resp.productGroupName}</b>
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
		<tbody id="table-body" id="productTable">
			<c:forEach var="item" items="${resp.productList}" varStatus="s">
				<tr>
					<td>${item.flowValue}</td>
					<td><input muxform="true" type="text" name="marketPrice" required="required" title="市场价必须是数字" value="${item.marketPrice}" placeholder="请输入市场价" autocomplete="off" class="layui-input"></td>
					<td>
						<c:choose>
							<c:when test="${item.flowType == 2}">
								特殊包
							</c:when>
							<c:otherwise>
								普通包
							</c:otherwise>
						</c:choose>
					</td>
					<td><input type="text" name="flowDesc" value="${item.flowDesc}" placeholder="请输入备注" autocomplete="off" class="layui-input"></td>
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
				<td><input type="text" name="flowValue" placeholder="请输入流量" autocomplete="off" class="layui-input"></td>
				<td><input type="text" name="marketPrice" placeholder="请输入市场" autocomplete="off" class="layui-input"></td>
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
