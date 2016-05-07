


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

<h1 class="page-header">楼盘 - 查看</h1>

<a href="building/insert" class="btn btn-default btn-xs">添加</a><table class="table table-striped table-bordered">
<tr>
	<th><input type="checkbox" onchange="toggleSelectAll(this,$('[name=selectRow]'));"/></th>
	
	
	<th>id</th>
	
	<th>所在区域</th>
	
	<th>楼盘名称</th>
	
	<th>项目地址</th>
	
	<th>项目编码</th>
	
	<th>建筑面积</th>
	
	<th>占地面积</th>
	
	<th>绿化率</th>
	
	<th>总户数</th>
	
	<th>开盘日期</th>
	
	<th>预售日期</th>
	
	<th>竣工日期</th>
	
	<th>营业执照注册账号</th>
	
	<th>资质证书账号</th>
	
	<th>法人</th>
	
	<th>法人联系电话</th>
	
	<th>法人邮编</th>
	
	<th>楼盘介绍</th>
	
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
		
		<c:out value="${i.region}"></c:out>
	</td>
	
	<td>
		
		<c:out value="${i.name}"></c:out>
	</td>
	
	<td>
		
		<c:out value="${i.address}"></c:out>
	</td>
	
	<td>
		
		<c:out value="${i.code}"></c:out>
	</td>
	
	<td>
		
		<c:out value="${i.building_area}"></c:out>
	</td>
	
	<td>
		
		<c:out value="${i.total_area}"></c:out>
	</td>
	
	<td>
		
		<c:out value="${i.green_rate}"></c:out>
	</td>
	
	<td>
		
		<c:out value="${i.residences}"></c:out>
	</td>
	
	<td>
		<fmt:formatDate value="${i.open_date}" pattern="yyyy-MM-dd"/>
		
	</td>
	
	<td>
		<fmt:formatDate value="${i.sale_date}" pattern="yyyy-MM-dd"/>
		
	</td>
	
	<td>
		<fmt:formatDate value="${i.finish_date}" pattern="yyyy-MM-dd"/>
		
	</td>
	
	<td>
		
		<c:out value="${i.license_account}"></c:out>
	</td>
	
	<td>
		
		<c:out value="${i.qualification_license}"></c:out>
	</td>
	
	<td>
		
		<c:out value="${i.legal_person}"></c:out>
	</td>
	
	<td>
		
		<c:out value="${i.legal_person_phone}"></c:out>
	</td>
	
	<td>
		
		<c:out value="${i.legal_person_postcode}"></c:out>
	</td>
	
	<td>
		
		<c:out value="${i.intro}"></c:out>
	</td>
	
	<td>
		
		<c:out value="${i.remark}"></c:out>
	</td>
	
	<td><button class="btn btn-xs btn-link" onclick="del(${i.id})">删除</button></td>
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
	$.post('/building/del',{
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