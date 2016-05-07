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

<h1 class="page-header">订单 - 新增</h1>

<form form-ajax class="form-horizontal" id="main-form" action="/order/insert" forward="/order">


<div class="col-sm-6">
  <div class="form-group">
    <label for="inputid" class="col-sm-4 control-label">
    	合同编号
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputid" placeholder="合同编号" name="id">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputsign_time" class="col-sm-4 control-label">
    	签约日期
    </label>
    <div class="col-sm-6">
    
      <input type="text" class="form-control required laydate-icon" id="inputsign_time" placeholder="签约日期" name="sign_time" onclick="laydate()">
   
   
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputclient_id" class="col-sm-4 control-label">
    	客户
    </label>
    <div class="col-sm-6">
    
       <select name="client_id" class="form-control required">
   			<c:forEach items="${customer }" var="i">
   				<option value="${i.id }">${i.name }</option>
   			</c:forEach>
   		</select>
   
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputclient_name" class="col-sm-4 control-label">
    	客户名称
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputclient_name" placeholder="客户名称" name="client_name">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputclient_phone" class="col-sm-4 control-label">
    	客户联系电话
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputclient_phone" placeholder="客户联系电话" name="client_phone">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputclient_certifacate_type" class="col-sm-4 control-label">
    	证件类型
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputclient_certifacate_type" placeholder="证件类型" name="client_certifacate_type">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputclient_certifacate" class="col-sm-4 control-label">
    	证件号码
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputclient_certifacate" placeholder="证件号码" name="client_certifacate">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputclient_address" class="col-sm-4 control-label">
    	客户地址
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputclient_address" placeholder="客户地址" name="client_address">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputclient_remark" class="col-sm-4 control-label">
    	客户备注
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputclient_remark" placeholder="客户备注" name="client_remark">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputhouse_id" class="col-sm-4 control-label">
    	房屋编号
    </label>
    <div class="col-sm-6">
    
   
    <select name="house_id" class="form-control required">
   			<c:forEach items="${houses }" var="i">
   				<option value="${i.id }">${i.id }</option>
   			</c:forEach>
   		</select>
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputpay_method" class="col-sm-4 control-label">
    	付款方式
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputpay_method" placeholder="付款方式" name="pay_method">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputinitial_payment" class="col-sm-4 control-label">
    	首付款
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputinitial_payment" placeholder="首付款" name="initial_payment">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputhouse_price" class="col-sm-4 control-label">
    	实售房款
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputhouse_price" placeholder="实售房款" name="house_price">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputloan_amount" class="col-sm-4 control-label">
    	商贷金额
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputloan_amount" placeholder="商贷金额" name="loan_amount">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputloan_year" class="col-sm-4 control-label">
    	商贷年限
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputloan_year" placeholder="商贷年限" name="loan_year">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputloan_bank" class="col-sm-4 control-label">
    	商贷银行
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputloan_bank" placeholder="商贷银行" name="loan_bank">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputcpf_amount" class="col-sm-4 control-label">
    	公积金金额
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputcpf_amount" placeholder="公积金金额" name="cpf_amount">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputcpf_year" class="col-sm-4 control-label">
    	公积金年限
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputcpf_year" placeholder="公积金年限" name="cpf_year">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputcpf_bank" class="col-sm-4 control-label">
    	公积金银行
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputcpf_bank" placeholder="公积金银行" name="cpf_bank">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputremark" class="col-sm-4 control-label">
    	合同备注
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputremark" placeholder="合同备注" name="remark">
    
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