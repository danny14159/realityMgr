
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改</title>
<link href="/static/css/bootstrap.min.css" rel="stylesheet"/>
<style type="text/css">
.error{color:red;}
</style>
</head>
<body>

<h1 class="page-header">楼盘 - 修改</h1>

<form form-ajax class="form-horizontal" id="main-form" action="/building/update" forward="/building/">


<div class="col-sm-6">
  <div class="form-group">
    <label for="inputid" class="col-sm-4 control-label">
    	id
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputid" placeholder="" name="id" value="${data.id}" readonly="readonly">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputregion" class="col-sm-4 control-label">
    	所在区域	
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputregion" placeholder="所在区域" name="region" value="${data.region}">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputname" class="col-sm-4 control-label">
    	楼盘名称	
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputname" placeholder="楼盘名称" name="name" value="${data.name}">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputaddress" class="col-sm-4 control-label">
    	项目地址	
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputaddress" placeholder="项目地址" name="address" value="${data.address}">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputcode" class="col-sm-4 control-label">
    	项目编码	
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputcode" placeholder="项目编码" name="code" value="${data.code}">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputbuilding_area" class="col-sm-4 control-label">
    	建筑面积	
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputbuilding_area" placeholder="建筑面积" name="building_area" value="${data.building_area}">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputtotal_area" class="col-sm-4 control-label">
    	占地面积	
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputtotal_area" placeholder="占地面积" name="total_area" value="${data.total_area}">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputgreen_rate" class="col-sm-4 control-label">
    	绿化率	
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputgreen_rate" placeholder="绿化率" name="green_rate" value="${data.green_rate}">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputresidences" class="col-sm-4 control-label">
    	总户数	
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputresidences" placeholder="总户数" name="residences" value="${data.residences}">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputopen_date" class="col-sm-4 control-label">
    	开盘日期	
    </label>
    <div class="col-sm-6">
    
      <input type="text" class="form-control required laydate-icon" id="inputopen_date" placeholder="开盘日期" name="open_date" onclick="laydate()" value="<fmt:formatDate value="${data.open_date}" pattern="yyyy-MM-dd"/>">
   
   
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputsale_date" class="col-sm-4 control-label">
    	预售日期	
    </label>
    <div class="col-sm-6">
    
      <input type="text" class="form-control required laydate-icon" id="inputsale_date" placeholder="预售日期" name="sale_date" onclick="laydate()" value="<fmt:formatDate value="${data.sale_date}" pattern="yyyy-MM-dd"/>">
   
   
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputfinish_date" class="col-sm-4 control-label">
    	竣工日期	
    </label>
    <div class="col-sm-6">
    
      <input type="text" class="form-control required laydate-icon" id="inputfinish_date" placeholder="竣工日期" name="finish_date" onclick="laydate()" value="<fmt:formatDate value="${data.finish_date}" pattern="yyyy-MM-dd"/>">
   
   
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputlicense_account" class="col-sm-4 control-label">
    	营业执照注册账号	
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputlicense_account" placeholder="营业执照注册账号" name="license_account" value="${data.license_account}">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputqualification_license" class="col-sm-4 control-label">
    	资质证书账号	
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputqualification_license" placeholder="资质证书账号" name="qualification_license" value="${data.qualification_license}">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputlegal_person" class="col-sm-4 control-label">
    	法人	
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputlegal_person" placeholder="法人" name="legal_person" value="${data.legal_person}">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputlegal_person_phone" class="col-sm-4 control-label">
    	法人联系电话	
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputlegal_person_phone" placeholder="法人联系电话" name="legal_person_phone" value="${data.legal_person_phone}">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputlegal_person_postcode" class="col-sm-4 control-label">
    	法人邮编	
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputlegal_person_postcode" placeholder="法人邮编" name="legal_person_postcode" value="${data.legal_person_postcode}">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputintro" class="col-sm-4 control-label">
    	楼盘介绍	
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputintro" placeholder="楼盘介绍" name="intro" value="${data.intro}">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputremark" class="col-sm-4 control-label">
    	备注	
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputremark" placeholder="备注" name="remark" value="${data.remark}">
    
    </div>
  </div>
  </div>
 
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-primary btn-sm">修改</button>
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