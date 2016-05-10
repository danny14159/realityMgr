
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

<h1 class="page-header">客户 - 修改</h1>

<form form-ajax class="form-horizontal" id="main-form" action="/customer/update" forward="/customer/">


<div class="col-sm-6">
  <div class="form-group">
    <label for="inputid" class="col-sm-4 control-label">
    	id
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputid" placeholder="" name="id" value="${data.id}"  readonly="readonly">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputname" class="col-sm-4 control-label">
    	姓名	
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputname" placeholder="姓名" name="name" value="${data.name}">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputphone" class="col-sm-4 control-label">
    	电话	
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputphone" placeholder="电话" name="phone" value="${data.phone}">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputsex" class="col-sm-4 control-label">
    	性别	
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputsex" placeholder="性别" name="sex" value="${data.sex}">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputaddress" class="col-sm-4 control-label">
    	现住地	
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputaddress" placeholder="现住地" name="address" value="${data.address}">
    
    </div>
  </div>
  </div>
 
<div class="col-sm-6">
  <div class="form-group">
    <label for="inputoccupation" class="col-sm-4 control-label">
    	职业	
    </label>
    <div class="col-sm-6">
    
   
      <input type="text" class="form-control required" id="inputoccupation" placeholder="职业" name="occupation" value="${data.occupation}">
    
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