<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>列表页面</title>
</head>
<body>
<form class="form-inline">
<button type="submit" class="btn btn-default">查找</button>
</form><table class="table table-striped">
<tr>
	<th><input type="checkbox" onchange="toggleSelectAll(this,$('[name=selectRow]'));"/></th>
	<th>id</th>
	<th>房屋位置</th>
	<th>幢号</th>
	<th>单元号</th>
	<th>房号</th>
	<th>房型id，外键</th>
	<th>层高</th>
	<th>建筑面积</th>
	<th>套内面积</th>
	<th>单价</th>
	<th>交楼时间</th>
	<th>装饰详情</th>
	<th>备注</th>
</tr>
	<c:forEach items="${pager.list }" var="i">
<tr>
<td><input type="checkbox" checked="checked" name="selectRow"/></td>
	<td><c:out value="${i.id}"></c:out></td>
	<td><c:out value="${i.location}"></c:out></td>
	<td><c:out value="${i.building_no}"></c:out></td>
	<td><c:out value="${i.unit_no}"></c:out></td>
	<td><c:out value="${i.house_no}"></c:out></td>
	<td><c:out value="${i.house_type_id}"></c:out></td>
	<td><c:out value="${i.height}"></c:out></td>
	<td><c:out value="${i.area}"></c:out></td>
	<td><c:out value="${i.inner_area}"></c:out></td>
	<td><c:out value="${i.single_price}"></c:out></td>
	<td><fmt:formatDate value="${i.delivery_time}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
	<td><c:out value="${i.decorate_detail}"></c:out></td>
	<td><c:out value="${i.remark}"></c:out></td>
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
	            location.href = "?ps=${pager.pageSize}$pn="+e.curr;
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
</script>
</body>
</html>