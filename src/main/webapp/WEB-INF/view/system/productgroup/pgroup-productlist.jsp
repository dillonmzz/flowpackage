<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/view/commons/taglib.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<div style='padding:10px 10px 10px 10px' >
	<div class="layui-fluid">
		<div class="layui-row">
			<div class="layui-col-md7">
				<b>产品组名称: ${resp.productGroupName}</b>
			</div>
		</div>
	</div>
	<table class="layui-table">
		<thead>
			<tr>
				<th>产品编码</th>
				<th>流量值(M)</th>
				<th>市场价(元)</th>
				<th>流量类型</th>
				<th>备注</th>
				<th>创建时间</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="item" items="${resp.productList}" varStatus="s">
				<tr>
					<td>
						${item.productCode}
					</td>
					<td>
						${item.flowValue}
					</td>
					<td>
						${item.marketPrice}
					</td>
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
					<td>
						${item.flowDesc}
					</td>
					<td>
						<fmt:formatDate value="${item.createTime}" type="date" pattern="yyyy-MM-dd HH:mm:ss" />
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
<script type="text/javascript">
layui.use(['adminplugs'], function() {
	var form = layui.form,table = layui.table;
	form.render();
});
</script>
