<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/view/commons/taglib.jsp"%>
<form class="layui-form layui-box" id="inputForm" style='padding:0px 10px 10px 10px' action="${ctx}/system/productgroup/api/pgroup-update" data-auto="true" method="post">
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
    <div class="layui-form-item text-c">
    	<br><br><br><br>
        <button class="layui-btn" type='submit'>保存数据</button>
        <button class="layui-btn layui-btn-danger" type='button' data-close>取消</button>
    </div>

    <script  type="text/javascript">
    
    layui.use(['adminplugs', 'form'], function(){
    	var form = layui.form(); 
    	
    });
    </script>
</form>
