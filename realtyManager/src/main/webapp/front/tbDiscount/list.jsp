


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

<h1 class="page-header">折扣 - 查看</h1>

<a href="discount/insert" class="btn btn-default btn-xs"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span>&nbsp;添加</a><table class="table table-striped table-bordered">
<tr>
	<th><input type="checkbox" onchange="toggleSelectAll(this,$('[name=selectRow]'));"/></th>
	
	
	<th>开始时间</th>
	
	<th>结束时间</th>
	
	<th>几折</th>
	
	<th>操作</th>
</tr>
	<c:forEach items="${data }" var="i">
<tr>
<td><input type="checkbox" checked="checked" name="selectRow"/></td>
	
	
	<td>
		<fmt:formatDate value="${i.degin_time}" pattern="yyyy-MM-dd HH:mm:ss"/>
		
	</td>
	
	<td>
		<fmt:formatDate value="${i.end_time}" pattern="yyyy-MM-dd HH:mm:ss"/>
		
	</td>
	
	<td>
		
		<c:out value="${i.discount}"></c:out>
	</td>
	
		<td>
	<a class="btn btn-xs btn-link" href="/discount/detail/${i.id }">查看详情</a>	
	<a class="btn btn-xs btn-link" href="/discount/update/${i.id }">修改</a>	
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
	$.post('/discount/del',{
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