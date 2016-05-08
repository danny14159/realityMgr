
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

<h1 class="page-header">折扣 - 详情<button onclick="history.go(-1)" class="btn btn-default btn-xs">返回<<</button></h1>


<div class="col-sm-6">
  <div class="form-group">
    <label for="inputdegin_time" class="col-sm-4 control-label">
    	开始时间
    </label>
    <div class="col-sm-6">
    
    	<fmt:formatDate value="${data.degin_time}" pattern="yyyy-MM-dd"/>
   
   
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputend_time" class="col-sm-4 control-label">
    	结束时间
    </label>
    <div class="col-sm-6">
    
    	<fmt:formatDate value="${data.end_time}" pattern="yyyy-MM-dd"/>
   
   
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputdiscount" class="col-sm-4 control-label">
    	几折
    </label>
    <div class="col-sm-6">
    
   
    	<c:out value="${data.discount }"></c:out>
    
    </div>
  </div>
  </div>
 

<script type="text/javascript" src="/static/js/jquery.min.js"></script>
<script type="text/javascript" src="/static/laydate/laydate.js"></script>
<script type="text/javascript">

</script>
</body>
</html>