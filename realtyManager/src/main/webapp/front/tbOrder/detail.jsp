
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

<h1 class="page-header">订单 - 详情<button onclick="history.go(-1)" class="btn btn-default btn-xs">返回<<</button></h1>



<div class="col-sm-6">
  <div class="form-group">
    <label for="inputid" class="col-sm-4 control-label">
    	合同编号
    </label>
    <div class="col-sm-6">
    
   
    	<c:out value="${data.id }"></c:out>
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputsign_time" class="col-sm-4 control-label">
    	签约日期
    </label>
    <div class="col-sm-6">
    
    	<fmt:formatDate value="${data.sign_time}" pattern="yyyy-MM-dd"/>
   
   
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputclient_id" class="col-sm-4 control-label">
    	客户id
    </label>
    <div class="col-sm-6">
    
   
    	<c:out value="${data.client_id }"></c:out>
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputclient_name" class="col-sm-4 control-label">
    	客户名称
    </label>
    <div class="col-sm-6">
    
   
    	<c:out value="${data.client_name }"></c:out>
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputclient_phone" class="col-sm-4 control-label">
    	客户联系电话
    </label>
    <div class="col-sm-6">
    
   
    	<c:out value="${data.client_phone }"></c:out>
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputclient_certifacate_type" class="col-sm-4 control-label">
    	证件类型
    </label>
    <div class="col-sm-6">
    
   
    	<c:out value="${data.client_certifacate_type }"></c:out>
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputclient_certifacate" class="col-sm-4 control-label">
    	证件号码
    </label>
    <div class="col-sm-6">
    
   
    	<c:out value="${data.client_certifacate }"></c:out>
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputclient_address" class="col-sm-4 control-label">
    	客户地址
    </label>
    <div class="col-sm-6">
    
   
    	<c:out value="${data.client_address }"></c:out>
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputclient_remark" class="col-sm-4 control-label">
    	客户备注
    </label>
    <div class="col-sm-6">
    
   
    	<c:out value="${data.client_remark }"></c:out>
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputhouse_id" class="col-sm-4 control-label">
    	房屋id
    </label>
    <div class="col-sm-6">
    
   
    	<c:out value="${data.house_id }"></c:out>
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputpay_method" class="col-sm-4 control-label">
    	付款方式
    </label>
    <div class="col-sm-6">
    
   
    	<c:out value="${data.pay_method }"></c:out>
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputinitial_payment" class="col-sm-4 control-label">
    	首付款
    </label>
    <div class="col-sm-6">
    
   
    	<c:out value="${data.initial_payment }"></c:out>
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputhouse_price" class="col-sm-4 control-label">
    	实售房款
    </label>
    <div class="col-sm-6">
    
   
    	<c:out value="${data.house_price }"></c:out>
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputloan_amount" class="col-sm-4 control-label">
    	商贷金额
    </label>
    <div class="col-sm-6">
    
   
    	<c:out value="${data.loan_amount }"></c:out>
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputloan_year" class="col-sm-4 control-label">
    	商贷年限
    </label>
    <div class="col-sm-6">
    
   
    	<c:out value="${data.loan_year }"></c:out>
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputloan_bank" class="col-sm-4 control-label">
    	商贷银行
    </label>
    <div class="col-sm-6">
    
   
    	<c:out value="${data.loan_bank }"></c:out>
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputcpf_amount" class="col-sm-4 control-label">
    	公积金金额
    </label>
    <div class="col-sm-6">
    
   
    	<c:out value="${data.cpf_amount }"></c:out>
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputcpf_year" class="col-sm-4 control-label">
    	公积金年限
    </label>
    <div class="col-sm-6">
    
   
    	<c:out value="${data.cpf_year }"></c:out>
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputcpf_bank" class="col-sm-4 control-label">
    	公积金银行
    </label>
    <div class="col-sm-6">
    
   
    	<c:out value="${data.cpf_bank }"></c:out>
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputremark" class="col-sm-4 control-label">
    	合同备注
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