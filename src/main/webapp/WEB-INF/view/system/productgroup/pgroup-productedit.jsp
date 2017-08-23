<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/view/commons/taglib.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<form class="layui-form layui-box" id="inputForm" style='padding:10px 10px 10px 10px' <%-- action="${ctx}/system/productgroup/api/pgroup-update" --%> data-auto="true" method="post">
	<b>产品组名称: ${resp.productGroupName}</b>
	<table class="layui-table" lay-filter="eventFilter">
		<thead>
			<tr>
				<th lay-data="{field:'flowValue', width:130}">流量值(M)</th>
				<th lay-data="{field:'marketPrice', width:160}">市场价(元)</th>
				<th lay-data="{field:'flowType', width:160}">流量类型</th>
				<th lay-data="{field:'flowDesc', width:220}">备注</th>
				<th lay-data="{field:'createTime', width:170}">创建时间</th>
				<th lay-data="{field:'handel', width:100}">操作</th>
			</tr>
		</thead>
		<tbody id="table-body">
			<c:choose>
        		<c:when test="${empty resp.productList}">
        			<tr>
						<td><input type="text" name="flowValue" placeholder="请输入流量" autocomplete="off" class="layui-input"></td>
						<td><input type="text" name="marketPrice" placeholder="请输入市场" autocomplete="off" class="layui-input"></td>
						<td>
							<select name="flowType" id="flowType">
								<option value="1">普通包</option>
								<option value="2">特殊包</option>
							</select>
							<td><input type="text" name="flowDesc" placeholder="请输入备注" autocomplete="off" class="layui-input"></td>
							<td></td>
							<td><button class="layui-btn layui-btn-small">
							    <i class="layui-icon">&#xe654;</i>
							  </button>
							</td>
					</tr>
        		</c:when>
        		<c:otherwise>
        			<c:forEach var="item" items="${resp.productList}" varStatus="s">
        				<tr>
							<td>${item.flowValue}</td>
							<td><input type="text" name="marketPrice" value="${item.marketPrice}" placeholder="请输入市场价" autocomplete="off" class="layui-input"></td>
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
							<td><fmt:formatDate value="${item.createTime}" type="date" pattern="yyyy-MM-dd HH:mm:ss"/></td>
							<td>
								<c:choose>
       								<c:when  test="${s['last']}">
       									<button class="layui-btn layui-btn-small product-add" lay-event="add">
										    <i class="layui-icon">&#xe654;</i>
										  </button>
       								</c:when>
       								<c:otherwise>
       									<button class="layui-btn layui-btn-small product-del" lay-event="del">
       									 	<i class="layui-icon">&#xe640;</i>
       									</button>
       								</c:otherwise>
       							</c:choose>
							</td>
						</tr>
        			</c:forEach>
        		</c:otherwise>
        	</c:choose>
		</tbody>
	</table>
	<div class="layui-form-item text-c">
		<br><br>
		<button class="layui-btn" type='submit'>保存数据</button>
		<button class="layui-btn layui-btn-danger" type='button' data-close>取消</button>
	</div>
</form>

<script type="text/javascript">
	layui.use(['adminplugs', 'form', 'table'], function() {
		var form = layui.form;
		var table = layui.table;
		table.init('eventFilter', {
  		  height: 288 //设置高度
  		});
		form.render();
		//监听工具条
		table.on('tool(eventFilter)', function(obj){
		    var data = obj.data;
		    if(obj.event === 'add'){
		    	alert("add");
		    	layer.alert('编辑行：<br>'+ JSON.stringify(data))
		    }else if(obj.event === 'del'){
		    	alert("del");
		        obj.del();
		    }else {
		    	alert("yyyy");
		    }
		});
	});
</script>
