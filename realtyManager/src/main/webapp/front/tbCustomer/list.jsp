<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查看</title>
<link href="/static/css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body>

<h1 class="page-header">客户 - 查看</h1>

<a href="customer/insert" class="btn btn-default btn-xs"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span>&nbsp;添加</a>

<form class="form-inline" action="" method="post">
  <div class="form-group">
    <label>姓名：</label>
    <input type="text" class="form-control input-sm" placeholder="搜索姓名" name="name" value="${obj.name }">
  </div>
  <button type="submit" class="btn btn-default btn-xs">搜索</button>
  <a href="" class="btn btn-default btn-xs">查看全部</a>
</form>

<table class="table table-striped table-bordered">
<tr>
	<th><input type="checkbox" onchange="toggleSelectAll(this,$('[name=selectRow]'));"/></th>
	
	
	
	<th>姓名</th>
	
	<th>电话</th>
	
	<th>性别</th>
	
	<th>现住地</th>
	
	<th>职业</th>
	
	<th>操作</th>
</tr>
	<c:forEach items="${data }" var="i">
<tr>
<td><input type="checkbox" checked="checked" name="selectRow"/></td>
	
	<td>
		
		<c:out value="${i.name}"></c:out>
	</td>
	
	<td>
		
		<c:out value="${i.phone}"></c:out>
	</td>
	
	<td>
		
		<c:out value="${i.sex}"></c:out>
	</td>
	
	<td>
		
		<c:out value="${i.address}"></c:out>
	</td>
	
	<td>
		
		<c:out value="${i.occupation}"></c:out>
	</td>
	
	<td>
	<a class="btn btn-xs btn-link" href="/customer/detail/${i.id }">查看详情</a>	
	<a class="btn btn-xs btn-link" href="/customer/update/${i.id }">修改</a>	
	<button class="btn btn-xs btn-link" onclick="del(${i.id})">删除</button>
	</td>
</tr>
</c:forEach>
</table>
<div id="pager"></div>
<script type="text/javascript" src="/static/js/jquery.min.js"></script>
<script type="text/javascript" src="/static/laypage/laypage.js"></script>
<script type="text/javascript">
$(function(){
	laypage({
	    cont: "pager",
	    pages: "${pager.pageCount}", 
	    curr: "${pager.pageNumber}", 
	    jump: function(e, first){ 
	        if(!first){ 
	            location.href = "?ps=${pager.pageSize}&pn="+e.curr;
	        }
	    }
	});
})
function toggleSelectAll(self,$sel){
	if(self.checked)
		$sel.each(function(){
			if(!this.checked) $(this).click();
		});
	else{
		$sel.each(function(){
			if(this.checked) $(this).click();
		});
	}
}

function del(id){
	if(confirm('确认删除此记录？'))
	$.post('/customer/del',{
		id:id
	},function(data){
		if(data){
			alert('操作成功');location.reload();
		}
		else{
			alert('操作失败')
		}
	},'json');
}
</script>
</body>
</html>