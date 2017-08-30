<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/view/commons/taglib.jsp"%>
<form class="layui-form layui-box" style='padding:30px 0px 20px 20px' action="${ctx}/adminmanage/admin/api/update" data-auto="true" method="post">
    <div class="layui-fluid">  
	    <div class="layui-form-item">
	    	<div class="layui-row">
	    		<div class="layui-col-md8">
	    			<label class="layui-form-label"><font color="red">*</font>供应商编码</label>
	    			<div class="layui-input-block">
		        		<input type="text" name=loginName value='' pattern="\w{4,20}$" required="required" title="账号必须是4-20个字母或数字或下划线" placeholder="账号必须是4-20个字母或数字或下划线" class="layui-input">
			        </div>
	    		</div>
	    		<div class="layui-col-md4">
	    			<div class="layui-form-mid layui-word-aux"></div>
	    		</div>
	    	</div>
	    </div>
		
		<div class="layui-form-item">
			<div class="layui-row">
				<div class="layui-col-md8">
			        <label class="layui-form-label"><font color="red">*</font>供应商名称</label>
			        <div class="layui-input-block">
			            <input type="text" name="realName" value='${resp.admin.realName}' title="请输入姓名" placeholder="请输入姓名" class="layui-input">
			        </div>
		        </div>
		        <div class="layui-col-md4">
	    			<div class="layui-form-mid layui-word-aux"></div>
	    		</div>
    		</div>
	    </div>
	    
	    <div class="layui-form-item">
	    	<div class="layui-row">
	    		<div class="layui-col-md8">
		        	<label class="layui-form-label" style="width:90px"><font color="red">*</font>状态接收方式</label>
			        <div class="layui-input-block">
				        <input type="radio" checked name="receiveType" value="1" title="推送接收">
				        <input type="radio" name="receiveType" value="2" title="主动查询">
			        </div>
		        </div>
		        <div class="layui-col-md4">
	    			<div class="layui-form-mid layui-word-aux">&nbsp;&nbsp;回调地址: http://112.74.31.52/callback/api/</div>
	    		</div>
	        </div>
	    </div>
	    
	    <div class="layui-form-item">
	    	<div class="layui-row">
	    		<div class="layui-col-md8">
	    			<label class="layui-form-label">供应商IP</label>
			        <div class="layui-input-block">
			            <input type="text" name="realName" value='${resp.admin.realName}' title="请输入姓名" placeholder="请输入姓名" class="layui-input">
			        </div>
	    		</div>
	    		<div class="layui-col-md4">
	    			<div class="layui-form-mid layui-word-aux">&nbsp;&nbsp;供应商IP，多个以英文逗号分隔.</div>
	    		</div>
	    	</div>
	    </div>
	    
	    <div class="layui-form-item">
	    	<div class="layui-row">
	    		<div class="layui-col-md8">
		    		<label class="layui-form-label"><font color="red">*</font>并发量</label>
			        <div class="layui-input-block">
			            <input type="text" name="realName" value='${resp.admin.realName}' title="请输入姓名" placeholder="请输入姓名" class="layui-input">
			        </div>
			    </div>
			    <div class="layui-col-md4">
			    	<div class="layui-form-mid layui-word-aux">&nbsp;&nbsp;每秒发送量，为0则表示不做限制</div>
			    </div>
	    	</div>
	    </div>
	    
	    <div class="layui-form-item">
	    	<div class="layui-row">
	    		<div class="layui-col-md8">
		    		<label class="layui-form-label"><font color="red">*</font>回调时长</label>
			        <div class="layui-input-block">
			            <input type="text" name="realName" value='${resp.admin.realName}' title="请输入姓名" placeholder="请输入姓名" class="layui-input">
			        </div>
		        </div>
		        <div class="layui-col-md4">
		        	<div class="layui-form-mid layui-word-aux">&nbsp;&nbsp;提交成功的任务，超过此时间未完成将被标记为卡单（单位分钟）</div>
		        </div>
	    	</div>
	    </div>
	    
	    <div class="layui-form-item">
	    	<div class="layui-row">
	    		<div class="layui-col-md8">
		    		<label class="layui-form-label">访问地址</label>
			        <div class="layui-input-block">
			            <input type="text" name="realName" value='${resp.admin.realName}' title="请输入姓名" placeholder="请输入姓名" class="layui-input">
			        </div>
		        </div>
	    	</div>
	    </div>
	    
	    <div class="layui-form-item">
	    	<div class="layui-row">
	    		<div class="layui-col-md8">
		    		<label class="layui-form-label">供应商说明</label>
			        <div class="layui-input-block">
			        	<textarea placeholder="请输入供应商说明" title="请输入供应商说明" class="layui-textarea" name="adminDesc">${resp.admin.adminDesc}</textarea>
			        </div>
		        </div>	
	    	</div>
	    </div>
		
	    <div class="layui-form-item text-c">
	    	<br>
	    	<input type='hidden' value='${resp.admin.adminId}' name='adminId'/>
	        <button class="layui-btn" type='submit'>保存数据</button>
	        <button class="layui-btn layui-btn-danger" type='button' data-close>取消编辑</button>
	    </div>
	 </div>

    <script type="text/javascript">
	    layui.use('form', function(){
	    	var form = layui.form;
	    	form.render();
	    });
    </script>
</form>
