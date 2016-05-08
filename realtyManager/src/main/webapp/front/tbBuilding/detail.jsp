
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

<h1 class="page-header">楼盘 - 详情<button onclick="history.go(-1)" class="btn btn-default btn-xs">返回<<</button></h1>



<div class="col-sm-6">
  <div class="form-group">
    <label for="inputid" class="col-sm-4 control-label">
    	楼盘编号
    </label>
    <div class="col-sm-6">
    
   
    	<c:out value="${data.id }"></c:out>
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputregion" class="col-sm-4 control-label">
    	所在区域
    </label>
    <div class="col-sm-6">
    
   
    	<c:out value="${data.region }"></c:out>
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputname" class="col-sm-4 control-label">
    	楼盘名称
    </label>
    <div class="col-sm-6">
    
   
    	<c:out value="${data.name }"></c:out>
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputaddress" class="col-sm-4 control-label">
    	项目地址
    </label>
    <div class="col-sm-6">
    
   
    	<c:out value="${data.address }"></c:out>
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputcode" class="col-sm-4 control-label">
    	项目编码
    </label>
    <div class="col-sm-6">
    
   
    	<c:out value="${data.code }"></c:out>
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputbuilding_area" class="col-sm-4 control-label">
    	建筑面积
    </label>
    <div class="col-sm-6">
    
   
    	<c:out value="${data.building_area }"></c:out>
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputtotal_area" class="col-sm-4 control-label">
    	占地面积
    </label>
    <div class="col-sm-6">
    
   
    	<c:out value="${data.total_area }"></c:out>
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputgreen_rate" class="col-sm-4 control-label">
    	绿化率
    </label>
    <div class="col-sm-6">
    
   
    	<c:out value="${data.green_rate }"></c:out>
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputresidences" class="col-sm-4 control-label">
    	总户数
    </label>
    <div class="col-sm-6">
    
   
    	<c:out value="${data.residences }"></c:out>
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputopen_date" class="col-sm-4 control-label">
    	开盘日期
    </label>
    <div class="col-sm-6">
    
    	<fmt:formatDate value="${data.open_date}" pattern="yyyy-MM-dd"/>
   
   
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputsale_date" class="col-sm-4 control-label">
    	预售日期
    </label>
    <div class="col-sm-6">
    
    	<fmt:formatDate value="${data.sale_date}" pattern="yyyy-MM-dd"/>
   
   
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputfinish_date" class="col-sm-4 control-label">
    	竣工日期
    </label>
    <div class="col-sm-6">
    
    	<fmt:formatDate value="${data.finish_date}" pattern="yyyy-MM-dd"/>
   
   
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputlicense_account" class="col-sm-4 control-label">
    	营业执照注册账号
    </label>
    <div class="col-sm-6">
    
   
    	<c:out value="${data.license_account }"></c:out>
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputqualification_license" class="col-sm-4 control-label">
    	资质证书账号
    </label>
    <div class="col-sm-6">
    
   
    	<c:out value="${data.qualification_license }"></c:out>
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputlegal_person" class="col-sm-4 control-label">
    	法人
    </label>
    <div class="col-sm-6">
    
   
    	<c:out value="${data.legal_person }"></c:out>
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputlegal_person_phone" class="col-sm-4 control-label">
    	法人联系电话
    </label>
    <div class="col-sm-6">
    
   
    	<c:out value="${data.legal_person_phone }"></c:out>
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputlegal_person_postcode" class="col-sm-4 control-label">
    	法人邮编
    </label>
    <div class="col-sm-6">
    
   
    	<c:out value="${data.legal_person_postcode }"></c:out>
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputintro" class="col-sm-4 control-label">
    	楼盘介绍
    </label>
    <div class="col-sm-6">
    
   
    	<c:out value="${data.intro }"></c:out>
    
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