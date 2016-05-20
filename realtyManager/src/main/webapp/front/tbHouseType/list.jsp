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

<h1 class="page-header">房型 - 查看</h1>

<a href="housetype/insert" class="btn btn-default btn-xs"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span>&nbsp;添加</a>

<form class="form-inline" action="" method="post">
  <div class="form-group">
    <label>套型：</label>
    <select class="form-control input-sm" name="house_type" >
   			<option value=""></option>
   			<option value="422">四室二卫二厅</option>
   			<option value="421">四室二卫一厅</option>
   			<option value="322">三室二卫二厅</option>
   			<option value="321">三室二卫一厅</option>
   			<option value="121">一室二卫一厅</option>
   			<option value="111">一室一卫一厅</option>
   			<option value="221">二室二卫一厅</option>
   			<option value="211">二室一卫一厅</option>
    </select>
  </div>
  <button type="submit" class="btn btn-default btn-xs">搜索</button>
  <a href="" class="btn btn-default btn-xs">查看全部</a>
</form>

<table class="table table-striped table-bordered">
<tr>
	<th><input type="checkbox" onchange="toggleSelectAll(this,$('[name=selectRow]'));"/></th>
	
	
	
	<th>客厅</th>
	
	<th>阳台</th>
	
	<th>储藏室</th>
	
	<th>阁楼</th>
	
	<th>卧室</th>
	
	<th>卫生间</th>
	
	<th>入户花园</th>
	
	<th>厨房</th>
	
	<th>套型</th>
	
	<th>备注</th>
	
	<th>所属楼盘</th>
	
	<th>操作</th>
</tr>
	<c:forEach items="${data }" var="i">
<tr>
<td><input type="checkbox" checked="checked" name="selectRow"/></td>
	
	
	<td>
		
		<c:out value="${i.drawing_room}"></c:out>
	</td>
	
	<td>
		
		<c:out value="${i.balcony}"></c:out>
	</td>
	
	<td>
		
		<c:out value="${i.store_room}"></c:out>
	</td>
	
	<td>
		
		<c:out value="${i.loft}"></c:out>
	</td>
	
	<td>
		
		<c:out value="${i.bedroom}"></c:out>
	</td>
	
	<td>
		
		<c:out value="${i.restroom}"></c:out>
	</td>
	
	<td>
		
		<c:out value="${i.garden}"></c:out>
	</td>
	
	<td>
		
		<c:out value="${i.kitchen}"></c:out>
	</td>
	
	<td>
		<c:choose>
			<c:when test="${i.house_type eq '422' }">四室二卫二厅</c:when>
			<c:when test="${i.house_type eq '421' }">四室二卫一厅</c:when>
			<c:when test="${i.house_type eq '322' }">三室二卫二厅</c:when>
			<c:when test="${i.house_type eq '321' }">三室二卫一厅</c:when>
			<c:when test="${i.house_type eq '121' }">一室二卫一厅</c:when>
			<c:when test="${i.house_type eq '111' }">一室一卫一厅</c:when>
			<c:when test="${i.house_type eq '221' }">二室二卫一厅</c:when>
			<c:when test="${i.house_type eq '211' }">二室一卫一厅</c:when>
		
		</c:choose>
	</td>
	
	<td>
		
		<c:out value="${i.remark}"></c:out>
	</td>
	
	<td>
		
		<c:out value="${i.house_name}"></c:out>
	</td>
	
		<td>
	<a class="btn btn-xs btn-link" href="/housetype/detail/${i.id }">查看详情</a>	
	<a class="btn btn-xs btn-link" href="/housetype/update/${i.id }">修改</a>	
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
	$.post('/housetype/del',{
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