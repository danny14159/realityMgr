

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

<h1 class="page-header">收款单 - 新增</h1>

<form form-ajax class="form-horizontal" id="main-form" action="/receipt/insert" forward="/receipt">


<div class="col-sm-6">
  <div class="form-group">
    <label for="inputid" class="col-sm-4 control-label">
    	单据编号
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputid" placeholder="单据编号" name="id">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputdate" class="col-sm-4 control-label">
    	收款日期
    </label>
    <div class="col-sm-6">
    
      <input type="text" class="form-control required laydate-icon" id="inputdate" placeholder="收款日期" name="date" onclick="laydate()">
   
   
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputmethod" class="col-sm-4 control-label">
    	付款方式
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputmethod" placeholder="付款方式" name="method">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputamount" class="col-sm-4 control-label">
    	金额
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputamount" placeholder="金额" name="amount">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputclient_id" class="col-sm-4 control-label">
    	客户id
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputclient_id" placeholder="客户id" name="client_id">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputpayee" class="col-sm-4 control-label">
    	收款人
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputpayee" placeholder="收款人" name="payee">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputmanager" class="col-sm-4 control-label">
    	现场主管
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputmanager" placeholder="现场主管" name="manager">
    
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