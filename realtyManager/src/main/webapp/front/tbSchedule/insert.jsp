

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

<h1 class="page-header">预定</h1>

<form form-ajax class="form-horizontal" id="main-form" action="/schedule/insert" forward="/schedule">


<div class="col-sm-6">
  <div class="form-group">
    <label for="inputbook_time" class="col-sm-4 control-label">
    	预定时间
    </label>
    <div class="col-sm-6">
    
      <input type="text" class="form-control required laydate-icon" id="inputbook_time" placeholder="预定时间" name="book_time" onclick="laydate()">
   
   
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputclient_id" class="col-sm-4 control-label">
    	客户
    </label>
    <div class="col-sm-6">
    
    <select class="form-control" name="client_id">
    <c:forEach items="${customers }" var="i">
    	<option value="${i.id }">${i.name }</option>
    </c:forEach>
   </select>
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputhouse_id" class="col-sm-4 control-label">
    	房屋编号：
    </label>
    <div class="col-sm-6">
    
   
       <select class="form-control" name="house_id">
    <c:forEach items="${houses }" var="i">
    	<option value="${i.id }">${i.id }</option>
    </c:forEach>
   </select>
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputpayed_money" class="col-sm-4 control-label">
    	已交款
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputpayed_money" placeholder="填写已交金额" name="payed_money">
    
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