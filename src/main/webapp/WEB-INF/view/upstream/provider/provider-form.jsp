<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/view/commons/taglib.jsp"%>
<form class="layui-form layui-box" style='padding:30px 0px 20px 20px' action="${ctx}/adminmanage/admin/api/update" data-auto="true" method="post">
    <div class="layui-fluid">  
	    <div class="layui-form-item">
	    	<div class="layui-row">
	    		<div class="layui-col-md8">
	    			<label class="layui-form-label"><font color="red">*</font>供应商编码</label>
	    			<div class="layui-input-block">
		        		<input type="text" name=providerCode value='${resp.provider.providerCode}' pattern="\w{4,20}$" required="required" title="必须是4-20个字母或数字或下划线" placeholder="必须是4-20个字母或数字或下划线" class="layui-input">
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
			            <input type="text" name="providerName" value='${resp.provider.providerName}' required="required" title="请输入供应商名称" placeholder="请输入供应商名称" class="layui-input">
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
			        	<c:choose>
        					<c:when test="${resp.provider.receiveType} == 2}">
        						<input type="radio" name="receiveType" value="1" title="推送接收">
        						<input type="radio" checked name="receiveType" value="2" title="主动查询">
	        				</c:when>
		        			<c:otherwise>
		        				<input type="radio" checked name="receiveType" value="1" title="推送接收">
        						<input type="radio" name="receiveType" value="2" title="主动查询">
		        			</c:otherwise>
	        			</c:choose>
			        </div>
		        </div>
		        <div class="layui-col-md4">
	    			<div class="layui-form-mid layui-word-aux">&nbsp;&nbsp;回调地址: http://47.94.95.211/callback/api/</div>
	    		</div>
	        </div>
	    </div>
	    
	    <div class="layui-form-item">
	    	<div class="layui-row">
	    		<div class="layui-col-md8">
	    			<label class="layui-form-label">供应商IP</label>
			        <div class="layui-input-block">
			            <input type="text" name="providerIp" value='${resp.provider.providerIp}' title="请输入供应商ip" placeholder="请输入供应商ip" class="layui-input">
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
			            <input type="text" name="concurrentNum" value='${resp.provider.concurrentNum}'  pattern="^\d+$" required="required"  title="并发量必须是正整数" placeholder="请输入并发量" class="layui-input">
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
			            <input type="text" name="callTime" value='${resp.provider.callTime}'  pattern="^\d+$" required="required" title="回调时长必须是正整数" placeholder="请输入回调时长" class="layui-input">
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
			            <input type="text" name="visitUrl" value='${resp.provider.visitUrl}' title="请输入访问地址" placeholder="请输入访问地址" class="layui-input">
			        </div>
		        </div>
	    	</div>
	    </div>
	    
	    <div class="layui-form-item">
	    	<div class="layui-row">
	    		<div class="layui-col-md8">
		    		<label class="layui-form-label">供应商说明</label>
			        <div class="layui-input-block">
			        	<textarea name="providerDesc" placeholder="请输入供应商说明" title="请输入供应商说明" class="layui-textarea">${resp.provider.providerDesc}</textarea>
			        </div>
		        </div>	
	    	</div>
	    </div>
	    
	    <div class="layui-form-item">
	    	<div class="layui-row">
	    		<div class="layui-col-md8">
		    		<label class="layui-form-label"><font color="red">*</font>接口代号</label>
			        <div class="layui-input-block">
			            <input type="text" name="visitUrl" value='${resp.provider.symbolCode}' pattern="^\d+$" required="required"  title="请输入合法格式接口代号" placeholder="请输入接口代号" class="layui-input">
			        </div>
		        </div>
	    	</div>
	    </div>
	    
	    <div class="layui-form-item">
	    	<div class="layui-row">
	    		<div class="layui-col-md8">
		    		<label class="layui-form-label"></label>
			        <div class="layui-input-block">
			            请务必测试<font color="red">主动查询接口（如供应商支持）</font>和推送接口并核对接口状态、提交状态、提交描述、订购状态、订购描述、回调状态是否一致。如因生产环境测试不完全所带来的损失将由渠道商自行承担。
			        </div>
		        </div>
	    	</div>
	    </div>
		
	    <div class="layui-form-item text-c">
	    	<br>
	    	<input type='hidden' value='${resp.provider.id}' name='providerId'/>
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
