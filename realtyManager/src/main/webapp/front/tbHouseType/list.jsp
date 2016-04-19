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
</tr>
	<c:forEach items="${pager.list }" var="i">
<tr>
<td><input type="checkbox" checked="checked" name="selectRow"/></td>
	<td><c:out value="${i.id}"></c:out></td>
	<td><c:out value="${i.drawing_room}"></c:out></td>
	<td><c:out value="${i.balcony}"></c:out></td>
	<td><c:out value="${i.store_room}"></c:out></td>
	<td><c:out value="${i.loft}"></c:out></td>
	<td><c:out value="${i.bedroom}"></c:out></td>
	<td><c:out value="${i.restroom}"></c:out></td>
	<td><c:out value="${i.garden}"></c:out></td>
	<td><c:out value="${i.kitchen}"></c:out></td>
	<td><c:out value="${i.house_type}"></c:out></td>
	<td><c:out value="${i.remark}"></c:out></td>
	<td><c:out value="${i.tb_house_id}"></c:out></td>
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