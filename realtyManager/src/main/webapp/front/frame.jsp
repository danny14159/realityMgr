<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="/static/css/bootstrap.min.css" rel="stylesheet"/>
<link href="/static/css/dashboard.css" rel="stylesheet"/>
<title>系统后台</title>
</head>
<body>

<nav class="navbar navbar-default navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">房地产管理系统</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <!-- <li><a href="#">Dashboard</a></li>
            <li><a href="#">Settings</a></li>
            <li><a href="#">Profile</a></li> -->
            <li><a href="/app/login"><span class="glyphicon glyphicon-log-out" aria-hidden="true"></span>&nbsp;退出</a></li>
          </ul>
        </div>
      </div>
    </nav>

<div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
          <ul class="nav nav-sidebar">
            <li class="active"><a href="/user" target="main"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>&nbsp;用户管理</a></li>
            <li><a href="/customer" target="main"><span class="glyphicon glyphicon-heart" aria-hidden="true"></span>&nbsp;客户管理</a></li>
            <li><a href="/discount" target="main"><span class="glyphicon glyphicon-time" aria-hidden="true"></span>&nbsp;折扣管理</a></li>
            <li><a href="/schedule" target="main"><span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span>&nbsp;预定管理</a></li>
          </ul>
          <ul class="nav nav-sidebar">
            <li><a href="/building" target="main" class="text-info"><span class="glyphicon glyphicon-th-list" aria-hidden="true"></span>&nbsp;楼盘管理</a></li>
            <li><a href="/housetype" target="main" class="text-info"><span class="glyphicon glyphicon-th-large" aria-hidden="true"></span>&nbsp;房型管理</a></li>
            <li><a href="/house" target="main" class="text-info"><span class="glyphicon glyphicon-th" aria-hidden="true"></span>&nbsp;房屋管理</a></li>
          </ul>
          <ul class="nav nav-sidebar">
            <li><a href="/order" target="main" class="text-danger"><span class="glyphicon glyphicon-file" aria-hidden="true"></span>&nbsp;订单管理</a></li>
            <li><a href="/receipt" target="main" class="text-danger"><span class="glyphicon glyphicon-folder-open" aria-hidden="true"></span>&nbsp;收据管理</a></li>
          </ul>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <iframe name="main" src="/user" style="width:100%;border: none;height: 550px;"></iframe>
        </div>
      </div>
    </div>

<div id="footer">
		<ul class="footer_link">
			<li><a href="#">关于我们</a>|</li>
			<li><a href="#">联系我们</a>|</li>
			<li><a href="#">帮助中心</a>|</li>
			<li style="color: #868686;">All
				Rights Reserved</li>
		</ul>
	</div>上

<script type="text/javascript" src="/static/js/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	$('.nav.nav-sidebar li').click(function(){
		$('.nav.nav-sidebar li').removeClass('active');
		$(this).addClass('active');
	});
})
</script>
</body>
</html>