<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/view/commons/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
  <title>layui</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <link href="${ctx}/staticlib/plugs/layui/css/layui.css?v=${flowVersion}" rel="stylesheet" type="text/css" />
  <!-- <link rel="stylesheet" href="//res.layui.com/layui/dist/css/layui.css"  media="all"> -->
  <!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->
</head>
<body>
<p style="color: #999">注：该例子读取的是静态模拟数据</p>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
  <legend>转化静态表格</legend>
</fieldset>
 
<div class="layui-btn-group demoTable">
  <button class="layui-btn" data-type="parseTable">转化为数据表格</button>
</div>
<table class="layui-table" lay-skin="line" lay-filter="parse-table-demo">
  <thead>
    <tr>
      <th lay-data="{field:'username', width:200}">昵称</th>
      <th lay-data="{field:'joinTime', width:150}">加入时间</th>
      <th lay-data="{field:'sign', width:300}">签名</th>
    </tr> 
  </thead>
  <tbody>
    <tr>
      <td>贤心1</td>
      <td>2016-11-28</td>
      <td>人生就像是一场修行a</td>
    </tr>
    <tr>
      <td>贤心2</td>
      <td>2016-11-29</td>
      <td>人生就像是一场修行b</td>
    </tr>
    <tr>
      <td>贤心3</td>
      <td>2016-11-30</td>
      <td>人生就像是一场修行c</td>
    </tr>
  </tbody>
</table>
<script type="text/javascript" src="${ctx}/staticlib/plugs/layui/layui.js?v=${flowVersion}"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>
layui.use('table', function(){
  var table = layui.table;
  table.init('parse-table-demo');
});
</script>
</body>
</html>