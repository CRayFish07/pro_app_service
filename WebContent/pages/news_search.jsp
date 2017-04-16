<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>新闻资讯</title>
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<script src="js/respond.min.js"></script>
<![endif]-->
<style>
 .btn_loc{
	margin-right:10px;
	float:left;
 }
 .myul li.key{
	margin-right:50px;
	float:left;
 }
 .myul li.title{
	list-style-type:none;
	margin-right:100px;
	float:left;
 }
 .myul li.time{
	list-style-type:none;
	text-align:right;
	clear:right;
 }
 .myul2 li{
	list-style: none;
	float: left;
    height: 23px;
	margin-top:5px;
    margin-left: 8px;
    padding-top: 7px;
 }
 .myul2 a{
	display: block;
    width: 55px;
    height: 23px;
    text-align: center;
    line-height: 23px;
    float: left;
    background: #f8f8f8;
    color: #0073BE;
	-webkit-border-radius: 2px;
	text-decoration: none;
    outline: 0;
 }
 .rm30{ 	
	margin-right:30px;
	color:green;
 }
</style>

</head>

<body>
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">登录</h4>
				</div>
				<div class="modal-body">
					<div class="row">
					  <input type="hidden" value="index_nav" name="source">
						 <div class="col-md-3">
							
						 </div>
						 <div class="col-md-6">
							<form class="form-horizontal" role="form">
							  <div class="form-group">
								<label for="userName" class="col-sm-3 control-label">帐 号</label>
								<div class="col-sm-8">
								  <input type="text" class="form-control" id="userName" placeholder="name">
								</div>
							  </div>
							  <div class="form-group">
								<label for="userPassword" class="col-sm-3 control-label">密 码</label>
								<div class="col-sm-8">
								  <input type="password" class="form-control" id="userPassword" placeholder="Password">
								</div>
							  </div>
							  <div class="form-group">
								<div class="col-sm-2">
								  <button type="submit" class="btn btn-default">登录</button>
								</div>
							  </div>
							</form>
							<!--
							<div class="item item-account">
								<input type="text" name="form_email" id="form_email" value="" class="inp" placeholder="邮箱 / 手机号" tabindex="1">
							</div>
							<div class="item item-passwd">
								<input name="form_password" placeholder="密码" id="form_password" class="inp" type="password" tabindex="2">						
								<a href="#">帮助</a>						
							</div>
							-->
						 </div>
						 <div class="col-md-3">
							
						 </div>				 
					</div>
				</div>						
				<div class="modal-footer">			    
					<!-- 转接注册modal -->
				</div>			
			</div><!-- /.modal-content -->
		</div><!-- /.modal -->
	</div><!-- /.modal -->
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-2">
			</div>
			<div class="col-md-3 logo">
				<img src="../img/logo.png" class="img-responsive" alt="Responsive image">
			</div>
			<div class="col-md-2">
			</div>
			<div class="col-md-3 feature">
			
				<div class="jsd">	
				
				<a data-toggle="modal" href="#myModal">登录
				
				</a>&nbsp;|&nbsp;
				<a href="" target="_blank">注册
				</a>
				</div>			    
				<form class="navbar-form navbar-left" role="search">
					<div class="form-group">
						<input type="text" class="form-control" placeholder="Search">
					</div>
					<button type="submit" class="btn btn-default">
						<span class="glyphicon glyphicon-search"></span> 搜索
					</button>
				</form>
			</div>
			<div class="col-md-2">
			</div>
		</div>
		<div class="row">
			<div class="col-md-2">
			</div>
			<div class="col-md-8">
				<nav class="navbar navbar-default">

				  <div class="container-fluid">
				  
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
					  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					  </button>
					  <a class="navbar-brand" href="#">
						导航栏
					  </a>
					</div>
					
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					  <ul class="nav navbar-nav">
					  	<li><a href="http://127.0.0.1:8080/pro/pages/index.jsp">首页</a></li>
						<li><a href="college_search.jsp">高校库</a></li>
						<li><a href="major_search.jsp">专业库</a></li>
						<li class="active"><a href="news_search.jsp">资讯库</a></li>
					  </ul>	  
					</div>
				  </div>
				</nav>
			</div>
			<div class="col-md-2">
			</div>
		</div>
		<div class="row">
			<div class="col-md-2">
			</div>
			<div class="col-md-8">
				<div class="row">
					<div id="allnews" class="col-md-10">
						<h4 class="text-primary">资讯
						</h4>
						<hr>
					</div>
					<div class="col-md-2">
					</div>
				</div>
			</div>
			<div class="col-md-2">
			</div>
		</div>
	</div>
<script type="text/javascript">
$(document).ready(function(){
	$.getJSON("http://127.0.0.1:8080/pro/news_queryNewsByLabel?newsLabel=高考新闻",function(data){
		$.each(data.rows,function(i,item){
			var str="<ul class='myul'><li class='key'><a href='#'>["+item.newsLabel+"]</a></li><li class='title'><a target='_blank' href='http://127.0.0.1:8080/pro/pages/news_detail.jsp?newsid="+item.newsId+"'>"+item.newsTitle+"</a></li><li class='time'>"+item.newsDate+"</li></ul>";
			$("#allnews").append(str);
		});
	});
});
</script>
<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.bootcss.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</body>
</html>