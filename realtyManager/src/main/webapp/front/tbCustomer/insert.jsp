

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

<h1 class="page-header">客户 - 新增</h1>

<form form-ajax class="form-horizontal" id="main-form" action="/customer/insert" forward="/customer">


<div class="col-sm-6">
  <div class="form-group">
    <label for="inputname" class="col-sm-4 control-label">
    	姓名
    </label>
    <div class="col-sm-6">
      <input type="text" class="form-control required" id="inputname" placeholder="姓名" name="name">
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputphone" class="col-sm-4 control-label">
    	电话
    </label>
    <div class="col-sm-6">
      <input type="text" class="form-control required" id="inputphone" placeholder="电话" name="phone">
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputsex" class="col-sm-4 control-label">
    	性别
    </label>
    <div class="col-sm-6">
      <input type="text" class="form-control required" id="inputsex" placeholder="性别" name="sex">
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputaddress" class="col-sm-4 control-label">
    	现住地
    </label>
    <div class="col-sm-6">
      <input type="text" class="form-control required" id="inputaddress" placeholder="现住地" name="address">
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputoccupation" class="col-sm-4 control-label">
    	职业
    </label>
    <div class="col-sm-6">
      <input type="text" class="form-control required" id="inputoccupation" placeholder="职业" name="occupation">
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
<script type="text/javascript">

</script>
</body>
</html>