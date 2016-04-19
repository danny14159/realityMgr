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
	<th>单据编号</th>
	<th>收款日期</th>
	<th>付款方式</th>
	<th>金额</th>
	<th>客户id</th>
	<th>收款人</th>
	<th>现场主管</th>
</tr>
	<c:forEach items="${pager.list }" var="i">
<tr>
<td><input type="checkbox" checked="checked" name="selectRow"/></td>
	<td><c:out value="${i.id}"></c:out></td>
	<td><fmt:formatDate value="${i.date}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
	<td><c:out value="${i.method}"></c:out></td>
	<td><c:out value="${i.amount}"></c:out></td>
	<td><c:out value="${i.client_id}"></c:out></td>
	<td><c:out value="${i.payee}"></c:out></td>
	<td><c:out value="${i.manager}"></c:out></td>
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