<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css">
<script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
<!--[if lt IE 9]>
<script src="./js/html5shiv.js"></script>
<script src="./js/respond.min.js"></script>
<![endif]-->
<style>
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
							<form class="form-horizontal" role="form" action="${pageContext.request.contextPath}/user_login.action">
							  <div class="form-group">
								<label for="userName" class="col-sm-3 control-label">帐 号</label>
								<div class="col-sm-8">
								  <input type="text" class="form-control" id="userName" name="username" placeholder="name">
								</div>
							  </div>
							  <div class="form-group">
								<label for="userPassword" class="col-sm-3 control-label">密 码</label>
								<div class="col-sm-8">
								  <input type="password" class="form-control" id="userPassword" name="password" placeholder="Password">
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
				<img src="${pageContext.request.contextPath}/img/logo.png" class="img-responsive" alt="Responsive image">
			</div>
			<div class="col-md-2">
			</div>
			<div class="col-md-3 feature">
			
				<div class="jsd">	
				
				<a data-toggle="modal" href="#myModal">登录
				
				</a>&nbsp;|&nbsp;
				<a href="${pageContext.request.contextPath}/user_registPage.action" target="_blank">注册
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
						Brand
					  </a>
					</div>
					
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					  <ul class="nav navbar-nav">
						<li class="active"><a href="index.html">首页</a></li>
						<li><a href="pages/college.html">高校库</a></li>
						<li><a href="#">专业库</a></li>
						<li><a href="pages/news.html">高校资讯</a></li>
						<li><a href="#">学科排名</a></li>
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
			<div class="col-md-5">
				<div class="panel panel-success">
					<div class="panel-heading">
						快速导航   
					</div>
					<div class="panel-body">
						<form class="form-horizontal" role="form">
						  <div class="form-group">
							<div class="col-sm-4">
								<select id="provin" class="form-control">
									<option value="-1" selected="selected">请选择省份</option>
									<option value="北京">北京</option>
									<option value="天津">天津</option>
									<option value="河北">河北</option>
									<option value="山西">山西</option>
									<option value="内蒙古">内蒙古</option>
									<option value="辽宁">辽宁</option>
									<option value="吉林">吉林</option>
									<option value="黑龙江">黑龙江</option>
									<option value="上海">上海</option>
									<option value="江苏">江苏</option>
									<option value="浙江">浙江</option>
									<option value="安徽">安徽</option>
									<option value="福建">福建</option>
									<option value="江西">江西</option>
									<option value="山东">山东</option>
									<option value="河南">河南</option>
									<option value="湖北">湖北</option>
									<option value="湖南">湖南</option>
									<option value="广东">广东</option>
									<option value="广西">广西</option>
									<option value="海南">海南</option>
									<option value="四川">四川</option>
									<option value="重庆">重庆</option>
									<option value="贵州">贵州</option>
									<option value="云南">云南</option>
									<option value="西藏">西藏</option>
									<option value="陕西">陕西</option>
									<option value="甘肃">甘肃</option>
									<option value="青海">青海</option>
									<option value="宁夏">宁夏</option>
									<option value="新疆">新疆</option>
									<option value="武汉">武汉</option>
								</select>
							</div>
							<div class="col-sm-4">
								<select id="univ" class="form-control">
									<option value="-1" select="selected">请选择高校</option>
								</select>
							</div>
							<button type="button" class="btn btn-default">高校查询</button>
						  </div>
						</form>
						<form class="form-horizontal" role="form">
							<div class="form-group">
							<div class="col-sm-4">
								<select id="dis" class="form-control">
									<option value="-1" selected="selected">学科门类</option>
									<option value="01">哲学</option>
									<option value="02">经济学</option>
									<option value="03">法学类</option>
									<option value="04">教育学</option>
									<option value="05">文学</option>
									<option value="06">历史学</option>
									<option value="07">理学</option>
									<option value="08">工学</option>
									<option value="09">农学</option>
									<option value="10">医学</option>
									<option value="12">管理学</option>
									<option value="13">艺术学</option>
								</select>
							</div>
							<div class="col-sm-4">
								<select id="spec" class="form-control">
									<option value="-1" select="selected">专业类</option>
								</select>
							</div>
							<button type="button" class="btn btn-default">专业查询</button>
						  </div>
						</form>
						<form class="form-horizontal" role="form">
							<div class="form-group">
							<div class="col-sm-4">
								<select id="dis" class="form-control">
									<option value="-1" selected="selected">学科门类</option>
									<option value="01">哲学</option>
									<option value="02">经济学</option>
									<option value="03">法学类</option>
									<option value="04">教育学</option>
									<option value="05">文学</option>
									<option value="06">历史学</option>
									<option value="07">理学</option>
									<option value="08">工学</option>
									<option value="09">农学</option>
									<option value="10">医学</option>
									<option value="12">管理学</option>
									<option value="13">艺术学</option>
								</select>
							</div>
							<div class="col-sm-4">
								<select id="spec" class="form-control">
									<option value="-1" select="selected">专业类</option>
								</select>
							</div>
							<button type="button" class="btn btn-default">学科排名</button>
						  </div>
						</form>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="panel panel-success">
					<div class="panel-heading">
						登录   
					</div>
					<div class="panel-body">
						<form class="form-horizontal" role="form" method="get" action="${pageContext.request.contextPath}/user_login.action">
						  <div class="form-group">
							<label for="userName" class="col-sm-3 control-label">帐 号</label>
							<div class="col-sm-8">
							  <input type="text" class="form-control" id="userName" name="username" placeholder="name">
							</div>
							<s:fielderror fieldName="username"/>
						  </div>
						  <div class="form-group">
							<label for="userPassword" class="col-sm-3 control-label">密 码</label>
							<div class="col-sm-8">
							  <input type="password" class="form-control" id="userPassword" name="password" placeholder="Password">
							</div>
							<s:fielderror fieldName="password"/>
						  </div>
						  <div class="form-group">
							<div class="col-sm-2">
							  <button type="submit" class="btn btn-default">登录</button>
							</div>
						  </div>
						</form>
					</div>
				</div>
			</div>
			<div class="col-md-2">
			</div>
		</div>
		<div class="row">
			<div class="col-md-2">
			</div>
			<div class="col-md-8">
				<div class="panel panel-info">
                   <div class="panel-heading">
					  <div class="row">
						  <div class="col-md-6">
							<h3 class="panel-title">热门资讯</h3>
						  </div>
						  <div class="col-md-1 col-md-offset-5">
						  <button type="submit" class="btn btn-default btn-xs" >
							<span class="glyphicon glyphicon-plus"></span> 更多
						  </button>
						  </div>
					  </div>
                   </div>
                   <div class="panel-body">
						<ul class="myul">
							<li class="key">
								<a href="pages/news_list.html">[北京大学]</a>
							</li>
							<li class="title">
								<a href="pages/news_detail.html">三成大学毕业生工作半年就跳槽 缺少职业规划</a>
							</li>
							<li class="time">
								‎2016‎年‎10‎月‎12‎日
							</li>
						</ul>
						<ul class="myul">
							<li class="key">
								<a href="#">[北京大学]</a>
							</li>
							<li class="title">
								<a>2017江苏高中学业水平测试必修科目考试时间公布</a>
							</li>
							<li class="time">
								‎2016‎年‎10‎月‎12‎日
							</li>
						</ul>
						<ul class="myul">
							<li class="key">
								<a href="#">[北京大学]</a>
							</li>
							<li class="title">
								<a>重庆实施居住证办法 子女满足条件可就地高考</a>
							</li>
							<li class="time">
								‎2016‎年‎10‎月‎12‎日
							</li>
						</ul>
                   </div>
                </div>
			</div>
			<div class="col-md-2">
			</div>
		</div>
	</div>
	<s:actionerror/>

<script>
	$(document).ready(function(){
		$("#provin").change(function(){
			var provin = $("#provin option:selected").val();
			$.get("http://127.0.0.1:8080/mvntest/univ_query.action?university.univProvince="+provin,function(data,status){
				alert("Data: " + data + "\nStatus: " + status);
			});
		});
	});
</script>
<script src="http://cdn.bootcss.com/bootstrap/3.2.0/./js/bootstrap.min.js"></script>
</body>
</html>