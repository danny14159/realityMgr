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

<h1 class="page-header">房型 - 新增</h1>

<form form-ajax class="form-horizontal" id="main-form" action="/housetype/insert" forward="/housetype">

<div class="col-sm-6">
  <div class="form-group">
    <label for="inputdrawing_room" class="col-sm-4 control-label">
    	客厅
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputdrawing_room" placeholder="客厅" name="drawing_room">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputbalcony" class="col-sm-4 control-label">
    	阳台
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputbalcony" placeholder="阳台" name="balcony">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputstore_room" class="col-sm-4 control-label">
    	储藏室
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputstore_room" placeholder="储藏室" name="store_room">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputloft" class="col-sm-4 control-label">
    	阁楼
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputloft" placeholder="阁楼" name="loft">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputbedroom" class="col-sm-4 control-label">
    	卧室
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputbedroom" placeholder="卧室" name="bedroom">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputrestroom" class="col-sm-4 control-label">
    	卫生间
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputrestroom" placeholder="卫生间" name="restroom">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputgarden" class="col-sm-4 control-label">
    	入户花园
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputgarden" placeholder="入户花园" name="garden">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputkitchen" class="col-sm-4 control-label">
    	厨房
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputkitchen" placeholder="厨房" name="kitchen">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputhouse_type" class="col-sm-4 control-label">
    	套型
    </label>
    <div class="col-sm-6">
    
   		<select class="form-control" name="house_type">
   			<option value="422">四室二卫二厅</option>
   			<option value="421">四室二卫一厅</option>
   			<option value="322">三室二卫二厅</option>
   			<option value="321">三室二卫一厅</option>
   			<option value="121">一室二卫一厅</option>
   			<option value="111">一室一卫一厅</option>
   			<option value="221">二室二卫一厅</option>
   			<option value="211">二室一卫一厅</option>
   		</select>
    
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
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputtb_house_id" class="col-sm-4 control-label">
    	所属楼盘
    </label>
    <div class="col-sm-6">
    
   		<select name="tb_house_id" class="form-control required">
   			<c:forEach items="${build }" var="i">
   				<option value="${i.id }">${i.name }</option>
   			</c:forEach>
   		</select>
    
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