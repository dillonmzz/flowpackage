<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/view/commons/taglib.jsp"%>
<form class="layui-form layui-box" id="inputForm" style='padding:30px 70px 10px 20px' action="${ctx}/system/productgroup/api/pgroup-update" data-auto="true" method="post">
    <div class="layui-form-item">
        <label class="layui-form-label">运营商</label>
        <div class="layui-input-block">
			<select name="operatorCode" id="operatorCode">
			  	<option value="1">移动</option>
			  	<option value="2">联通</option>
			  	<option value="3">电信</option>
		     </select>
        </div>
    </div>
	
	<div class="layui-form-item">
       <label class="layui-form-label">省份</label>
        <div class="layui-input-block">
			<select name="provinceCode" id="provinceCode" lay-verify="" lay-search>
		    </select>
        </div>
    </div>
	
    <div class="layui-form-item">
        <label class="layui-form-label">产品类型</label>
        <div class="layui-input-block">
        	<input type="radio" checked name="productType" value="1" title="全国包可漫游">
        	<input type="radio" name="productType" value="2" title="省包不可漫游">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label"><font color="red">*</font>产品组名称</label>
        <div class="layui-input-block">
            <input type="text" name="productGroupName" id="productGroupName" value='全国移动全国包可漫游' readonly class="layui-input">
        </div>
    </div>
    <div class="layui-form-item text-c">
    	<br><br><br><br>
        <button class="layui-btn" type='submit'>保存数据</button>
        <button class="layui-btn layui-btn-danger" type='button' data-close>取消</button>
    </div>

    <script  type="text/javascript">
    /**
     *自动生成组名称
     */
    function autoGroupName() {
        var ispName = $("#operatorCode>option:selected", $("#inputForm")).text();
        var provinceName = $("#provinceCode>option:selected", $("#inputForm")).text();
        var productType = $("input[name='productType']:checked", $("#inputForm")).val() == "1" ? "全国包可漫游" : "省包不可漫游";
        var productGroupName = provinceName + ispName + productType;
        $("#productGroupName", $("#inputForm")).val(productGroupName);
    }
    
    layui.use(['adminplugs', 'form'], function(){
    	var form = layui.form(); 
    	$.myutil.loadProvince();
    	
    	form.on('select', function(){
    		autoGroupName();
   		});
    	
    	form.on('radio', function(data){
    		autoGroupName();
   		}); 
    });
    </script>
</form>
