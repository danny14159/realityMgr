

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加</title>
<link href="/static/css/bootstrap.min.css" rel="stylesheet"/>
<style type="text/css">
.error{color:red;}.form-group{margin-left: 0!important;margin-right: 0!important;}
</style>
</head>
<body>

<h1 class="page-header">房屋 - 新增</h1>

<form form-ajax class="form-horizontal" id="main-form" action="/house/insert" forward="/house">


<div class="col-sm-6">
  <div class="form-group">
    <label for="inputlocation" class="col-sm-4 control-label">
    	房屋位置
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputlocation" placeholder="房屋位置" name="location">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputbuilding_no" class="col-sm-4 control-label">
    	幢号
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputbuilding_no" placeholder="幢号" name="building_no">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputunit_no" class="col-sm-4 control-label">
    	单元号
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputunit_no" placeholder="单元号" name="unit_no">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputhouse_no" class="col-sm-4 control-label">
    	房号
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputhouse_no" placeholder="房号" name="house_no">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputhouse_type_id" class="col-sm-4 control-label">
    	房型id
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputhouse_type_id" placeholder="房型id，外键" name="house_type_id">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputheight" class="col-sm-4 control-label">
    	层高
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputheight" placeholder="层高" name="height">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputarea" class="col-sm-4 control-label">
    	建筑面积
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputarea" placeholder="建筑面积" name="area">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputinner_area" class="col-sm-4 control-label">
    	套内面积
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputinner_area" placeholder="套内面积" name="inner_area">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputsingle_price" class="col-sm-4 control-label">
    	单价
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputsingle_price" placeholder="单价" name="single_price">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputdelivery_time" class="col-sm-4 control-label">
    	交楼时间
    </label>
    <div class="col-sm-6">
    
      <input type="text" class="form-control required laydate-icon" id="inputdelivery_time" placeholder="交楼时间" name="delivery_time" onclick="laydate()">
   
   
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputdecorate_detail" class="col-sm-4 control-label">
    	装饰详情
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputdecorate_detail" placeholder="装饰详情" name="decorate_detail">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputremark" class="col-sm-4 control-label">
    	备注
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputremark" placeholder="备注" name="remark">
    
    </div>
  </div>
  </div>
 
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-primary btn-sm">提交</button>
      <button type="reset" class="btn btn-default btn-sm">重置</button>
    </div>
  </div>
</form>


<script type="text/javascript" src="/static/js/jquery.min.js"></script>
<script type="text/javascript" src="/static/js/jquery.validate.min.js"></script>
<script type="text/javascript" src="/static/js/messages_zh.min.js"></script>
<script type="text/javascript" src="/static/js/form-ajax.js"></script>
<script type="text/javascript" src="/static/laydate/laydate.js"></script>
<script type="text/javascript">

</script>
</body>
</html>