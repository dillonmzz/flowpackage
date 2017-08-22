<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/view/commons/taglib.jsp"%>
<form class="layui-form layui-box" id="inputForm" style='padding:10px 10px 10px 10px' action="${ctx}/system/productgroup/api/pgroup-update" data-auto="true" method="post">
	<b>引用区域的文字</b>
	<table class="layui-table">
		<thead>
			<tr>
				<th>流量值(M)</th>
				<th>市场价(元)</th>
				<th>流量类型</th>
				<th>备注</th>
				<th>创建时间</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody id="table-body">
			<tr>
				<td><input type="text" name="title" placeholder="请输入流量" autocomplete="off" class="layui-input"></td>
				<td><input type="text" name="title" placeholder="请输入市场" autocomplete="off" class="layui-input"></td>
				<td>
					<select name="flowType" id="flowType">
						<option value="1">普通包</option>
						<option value="2">特殊包</option>
					</select>
					<td><input type="text" name="title" placeholder="请输入备注" autocomplete="off" class="layui-input"></td>
					<td>2017-08-22 08:03:57</td>
					<td><button class="layui-btn layui-btn-small">
	    <i class="layui-icon">&#xe654;</i>
	  </button></td>
			</tr>
		</tbody>
	</table>
	<div class="layui-form-item text-c">
		<br><br><br><br><br><br>
		<button class="layui-btn" type='submit'>保存数据</button>
		<button class="layui-btn layui-btn-danger" type='button' data-close>取消</button>
	</div>
</form>


<script type="text/javascript">
	layui.use(['adminplugs', 'form'], function() {
		var form = layui.form;
		form.render();
	});
</script>
