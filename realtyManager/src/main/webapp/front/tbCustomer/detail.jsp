
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
.error{color:red;}
.col-sm-6{margin: 5px 0}
</style>
</head>
<body>

<h1 class="page-header">客户 - 详情<button onclick="history.go(-1)" class="btn btn-default btn-xs">返回<<</button></h1>



<div class="col-sm-6">
  <div class="form-group">
    <label for="inputid" class="col-sm-4 control-label">
    	客户编号
    </label>
    <div class="col-sm-6">
    
   
    	<c:out value="${data.id }"></c:out>
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputname" class="col-sm-4 control-label">
    	姓名
    </label>
    <div class="col-sm-6">
    
   
    	<c:out value="${data.name }"></c:out>
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputphone" class="col-sm-4 control-label">
    	电话
    </label>
    <div class="col-sm-6">
    
   
    	<c:out value="${data.phone }"></c:out>
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputsex" class="col-sm-4 control-label">
    	性别
    </label>
    <div class="col-sm-6">
    
   
    	<c:out value="${data.sex }"></c:out>
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputaddress" class="col-sm-4 control-label">
    	现住地
    </label>
    <div class="col-sm-6">
    
   
    	<c:out value="${data.address }"></c:out>
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputoccupation" class="col-sm-4 control-label">
    	职业
    </label>
    <div class="col-sm-6">
    
   
    	<c:out value="${data.occupation }"></c:out>
    
    </div>
  </div>
  </div>
 

<script type="text/javascript" src="/static/js/jquery.min.js"></script>
<script type="text/javascript" src="/static/laydate/laydate.js"></script>
<script type="text/javascript">

</script>
</body>
</html>