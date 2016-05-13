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

<h1 class="page-header">房屋 - 详情<button onclick="history.go(-1)" class="btn btn-default btn-xs">返回<<</button></h1>



<div class="col-sm-6">
  <div class="form-group">
    <label for="inputid" class="col-sm-4 control-label">
    	房屋编号
    </label>
    <div class="col-sm-6">
    
   
    	<c:out value="${data.id }"></c:out>
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputlocation" class="col-sm-4 control-label">
    	房屋位置
    </label>
    <div class="col-sm-6">
    
   
    	<c:out value="${data.location }"></c:out>
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputbuilding_no" class="col-sm-4 control-label">
    	幢号
    </label>
    <div class="col-sm-6">
    
   
    	<c:out value="${data.building_no }"></c:out>
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputunit_no" class="col-sm-4 control-label">
    	单元号
    </label>
    <div class="col-sm-6">
    
   
    	<c:out value="${data.unit_no }"></c:out>
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputhouse_no" class="col-sm-4 control-label">
    	房号
    </label>
    <div class="col-sm-6">
    
   
    	<c:out value="${data.house_no }"></c:out>
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputhouse_type_id" class="col-sm-4 control-label">
    	房型id
    </label>
    <div class="col-sm-6">
    
   
    <a href="/housetype/detail/<c:out value="${data.house_type_id}"></c:out>"><c:out value="${data.house_type_id}"></c:out></a>
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputheight" class="col-sm-4 control-label">
    	层高
    </label>
    <div class="col-sm-6">
    
   
    	<c:out value="${data.height }"></c:out>
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputarea" class="col-sm-4 control-label">
    	建筑面积
    </label>
    <div class="col-sm-6">
    
   
    	<c:out value="${data.area }"></c:out>
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputinner_area" class="col-sm-4 control-label">
    	套内面积
    </label>
    <div class="col-sm-6">
    
   
    	<c:out value="${data.inner_area }"></c:out>
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputsingle_price" class="col-sm-4 control-label">
    	单价
    </label>
    <div class="col-sm-6">
    
   
    	<c:out value="${data.single_price }"></c:out>
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputdelivery_time" class="col-sm-4 control-label">
    	交楼时间
    </label>
    <div class="col-sm-6">
    
    	<fmt:formatDate value="${data.delivery_time}" pattern="yyyy-MM-dd"/>
   
   
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputdecorate_detail" class="col-sm-4 control-label">
    	装饰详情
    </label>
    <div class="col-sm-6">
    
   
    	<c:out value="${data.decorate_detail }"></c:out>
    
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
 

<script type="text/javascript" src="/static/js/jquery.min.js"></script>
<script type="text/javascript" src="/static/laydate/laydate.js"></script>
<script type="text/javascript">

</script>
</body>
</html>