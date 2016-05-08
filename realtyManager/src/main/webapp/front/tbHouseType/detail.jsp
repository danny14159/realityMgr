
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>详情</title>
<link href="/static/css/bootstrap.min.css" rel="stylesheet"/>
<style type="text/css">
.error{color:red;}.col-sm-6{margin: 5px 0}
</style>
</head>
<body>

<h1 class="page-header">房型 - 详情<button onclick="history.go(-1)" class="btn btn-default btn-xs">返回<<</button></h1>



<div class="col-sm-6">
  <div class="form-group">
    <label for="inputid" class="col-sm-4 control-label">
    	房型编号
    </label>
    <div class="col-sm-6">
    
   
    	<c:out value="${data.id }"></c:out>
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputdrawing_room" class="col-sm-4 control-label">
    	客厅
    </label>
    <div class="col-sm-6">
    
   
    	<c:out value="${data.drawing_room }"></c:out>
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputbalcony" class="col-sm-4 control-label">
    	阳台
    </label>
    <div class="col-sm-6">
    
   
    	<c:out value="${data.balcony }"></c:out>
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputstore_room" class="col-sm-4 control-label">
    	储藏室
    </label>
    <div class="col-sm-6">
    
   
    	<c:out value="${data.store_room }"></c:out>
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputloft" class="col-sm-4 control-label">
    	阁楼
    </label>
    <div class="col-sm-6">
    
   
    	<c:out value="${data.loft }"></c:out>
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputbedroom" class="col-sm-4 control-label">
    	卧室
    </label>
    <div class="col-sm-6">
    
   
    	<c:out value="${data.bedroom }"></c:out>
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputrestroom" class="col-sm-4 control-label">
    	卫生间
    </label>
    <div class="col-sm-6">
    
   
    	<c:out value="${data.restroom }"></c:out>
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputgarden" class="col-sm-4 control-label">
    	入户花园
    </label>
    <div class="col-sm-6">
    
   
    	<c:out value="${data.garden }"></c:out>
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputkitchen" class="col-sm-4 control-label">
    	厨房
    </label>
    <div class="col-sm-6">
    
   
    	<c:out value="${data.kitchen }"></c:out>
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputhouse_type" class="col-sm-4 control-label">
    	套型
    </label>
    <div class="col-sm-6">
    
   
    	<c:out value="${data.house_type }"></c:out>
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputremark" class="col-sm-4 control-label">
    	备注
    </label>
    <div class="col-sm-6">
    
   
    	<c:out value="${data.remark }"></c:out>
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputtb_house_id" class="col-sm-4 control-label">
    	所属楼盘
    </label>
    <div class="col-sm-6">
    
   
    	<c:out value="${data.tb_house_id }"></c:out>
    
    </div>
  </div>
  </div>
 

<script type="text/javascript" src="/static/js/jquery.min.js"></script>
<script type="text/javascript" src="/static/laydate/laydate.js"></script>
<script type="text/javascript">

</script>
</body>
</html>