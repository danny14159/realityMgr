
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改</title>
<link href="/static/css/bootstrap.min.css" rel="stylesheet"/>
<style type="text/css">
.error{color:red;}
</style>
</head>
<body>

<h1 class="page-header">房型 - 修改</h1>

<form form-ajax class="form-horizontal" id="main-form" action="/housetype/update" forward="/housetype/">


<div class="col-sm-6">
  <div class="form-group">
    <label for="inputid" class="col-sm-4 control-label">
    	id
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputid" placeholder="" name="id" value="${data.id}" readonly="readonly">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputdrawing_room" class="col-sm-4 control-label">
    	客厅	
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputdrawing_room" placeholder="客厅" name="drawing_room" value="${data.drawing_room}">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputbalcony" class="col-sm-4 control-label">
    	阳台	
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputbalcony" placeholder="阳台" name="balcony" value="${data.balcony}">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputstore_room" class="col-sm-4 control-label">
    	储藏室	
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputstore_room" placeholder="储藏室" name="store_room" value="${data.store_room}">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputloft" class="col-sm-4 control-label">
    	阁楼	
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputloft" placeholder="阁楼" name="loft" value="${data.loft}">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputbedroom" class="col-sm-4 control-label">
    	卧室	
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputbedroom" placeholder="卧室" name="bedroom" value="${data.bedroom}">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputrestroom" class="col-sm-4 control-label">
    	卫生间	
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputrestroom" placeholder="卫生间" name="restroom" value="${data.restroom}">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputgarden" class="col-sm-4 control-label">
    	入户花园	
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputgarden" placeholder="入户花园" name="garden" value="${data.garden}">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputkitchen" class="col-sm-4 control-label">
    	厨房	
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputkitchen" placeholder="厨房" name="kitchen" value="${data.kitchen}">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputhouse_type" class="col-sm-4 control-label">
    	套型	
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputhouse_type" placeholder="套型" name="house_type" value="${data.house_type}">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputremark" class="col-sm-4 control-label">
    	备注	
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputremark" placeholder="备注" name="remark" value="${data.remark}">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputtb_house_id" class="col-sm-4 control-label">
    	所属楼盘	
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputtb_house_id" placeholder="所属楼盘" name="tb_house_id" value="${data.tb_house_id}">
    
    </div>
  </div>
  </div>
 
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-primary btn-sm">修改</button>
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