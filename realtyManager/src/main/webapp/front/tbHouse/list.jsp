


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

<h1 class="page-header">房屋 - 查看</h1>

<a href="house/insert" class="btn btn-default btn-xs"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span>&nbsp;添加</a><table class="table table-striped table-bordered">
<tr>
	<th><input type="checkbox" onchange="toggleSelectAll(this,$('[name=selectRow]'));"/></th>
	
	
	<th>id</th>
	
	<th>房屋位置</th>
	
	<th>幢号</th>
	
	<th>单元号</th>
	
	<th>房号</th>
	
	<th>房型id</th>
	
	<th>层高</th>
	
	<th>建筑面积</th>
	
	<th>套内面积</th>
	
	<th>单价</th>
	
	<th>交楼时间</th>
	
	<th>装饰详情</th>
	
	<th>备注</th>
	
	<th>操作</th>
</tr>
	<c:forEach items="${data }" var="i">
<tr>
<td><input type="checkbox" checked="checked" name="selectRow"/></td>
	
	<td>
		
		<c:out value="${i.id}"></c:out>
	</td>
	
	<td>
		
		<c:out value="${i.location}"></c:out>
	</td>
	
	<td>
		
		<c:out value="${i.building_no}"></c:out>
	</td>
	
	<td>
		
		<c:out value="${i.unit_no}"></c:out>
	</td>
	
	<td>
		
		<c:out value="${i.house_no}"></c:out>
	</td>
	
	<td>
		<a href="/housetype/detail/<c:out value="${i.house_type_id}"></c:out>"><c:out value="${i.house_type_id}"></c:out></a>
		
	</td>
	
	<td>
		
		<c:out value="${i.height}"></c:out>
	</td>
	
	<td>
		
		<c:out value="${i.area}"></c:out>
	</td>
	
	<td>
		
		<c:out value="${i.inner_area}"></c:out>
	</td>
	
	<td>
		
		<c:out value="${i.single_price}"></c:out>
	</td>
	
	<td>
		<fmt:formatDate value="${i.delivery_time}" pattern="yyyy-MM-dd HH:mm:ss"/>
		
	</td>
	
	<td>
		
		<c:out value="${i.decorate_detail}"></c:out>
	</td>
	
	<td>
		
		<c:out value="${i.remark}"></c:out>
	</td>
	
		<td>
	<a class="btn btn-xs btn-link" href="/house/detail/${i.id }">查看详情</a>	
	<a class="btn btn-xs btn-link" href="/house/update/${i.id }">修改</a>	
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
	$.post('/house/del',{
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