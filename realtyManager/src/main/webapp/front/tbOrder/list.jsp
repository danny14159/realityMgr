


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

<h1 class="page-header">订单 - 查看</h1>

<a href="order/insert" class="btn btn-default btn-xs"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span>&nbsp;添加</a><table class="table table-striped table-bordered">
<tr>
	<th><input type="checkbox" onchange="toggleSelectAll(this,$('[name=selectRow]'));"/></th>
	
	
	<th>合同编号</th>
	
	<th>签约日期</th>
	
	<th>客户id</th>
	
	<th>客户名称</th>
	
	<th>客户联系电话</th>
	
	<th>证件类型</th>
	
	<th>证件号码</th>
	
	<th>客户地址</th>
	
	<th>客户备注</th>
	
	<th>房屋id</th>
	
	<th>付款方式</th>
	
	<th>首付款</th>
	
	<th>实售房款</th>
	
	<th>商贷金额</th>
	
	<th>商贷年限</th>
	
	<th>商贷银行</th>
	
	<th>公积金金额</th>
	
	<th>公积金年限</th>
	
	<th>公积金银行</th>
	
	<th>合同备注</th>
	
	<th>操作</th>
</tr>
	<c:forEach items="${data }" var="i">
<tr>
<td><input type="checkbox" checked="checked" name="selectRow"/></td>
	
	<td>
		
		<c:out value="${i.id}"></c:out>
	</td>
	
	<td>
		<fmt:formatDate value="${i.sign_time}" pattern="yyyy-MM-dd HH:mm:ss"/>
		
	</td>
	
	<td>
		
		<c:out value="${i.client_id}"></c:out>
	</td>
	
	<td>
		
		<c:out value="${i.client_name}"></c:out>
	</td>
	
	<td>
		
		<c:out value="${i.client_phone}"></c:out>
	</td>
	
	<td>
		
		<c:out value="${i.client_certifacate_type}"></c:out>
	</td>
	
	<td>
		
		<c:out value="${i.client_certifacate}"></c:out>
	</td>
	
	<td>
		
		<c:out value="${i.client_address}"></c:out>
	</td>
	
	<td>
		
		<c:out value="${i.client_remark}"></c:out>
	</td>
	
	<td>
		<a href="/house/detail/<c:out value="${i.house_id}"></c:out>"><c:out value="${i.house_id}"></c:out></a>
		
	</td>
	
	<td>
		
		<c:out value="${i.pay_method}"></c:out>
	</td>
	
	<td>
		
		<c:out value="${i.initial_payment}"></c:out>
	</td>
	
	<td>
		
		<c:out value="${i.house_price}"></c:out>
	</td>
	
	<td>
		
		<c:out value="${i.loan_amount}"></c:out>
	</td>
	
	<td>
		
		<c:out value="${i.loan_year}"></c:out>
	</td>
	
	<td>
		
		<c:out value="${i.loan_bank}"></c:out>
	</td>
	
	<td>
		
		<c:out value="${i.cpf_amount}"></c:out>
	</td>
	
	<td>
		
		<c:out value="${i.cpf_year}"></c:out>
	</td>
	
	<td>
		
		<c:out value="${i.cpf_bank}"></c:out>
	</td>
	
	<td>
		
		<c:out value="${i.remark}"></c:out>
	</td>
	
		<td>
	<a class="btn btn-xs btn-link" href="/order/detail/${i.id }">查看详情</a>	
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
	$.post('/order/del',{
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