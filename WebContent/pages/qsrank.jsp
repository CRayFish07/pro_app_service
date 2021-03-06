<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>学科排名</title>
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>

<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<script src="js/respond.min.js"></script>
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
 .btn_loc{
	margin-right:10px;
	float:left;
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
			    <div class="panel panel-default">
				  <div class="panel-heading">QS排名简介</div>
				  <div class="panel-body">
					2009年与《泰晤士高等教育》终止合作后，QS与美国 《新闻与世界报道》、《朝鲜日报》和英国《太阳报》合作，发布年度世界大学排名。
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
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">
							QS排名一览
						</h3>
					</div>
					<div class="panel-body">
						<table id="qs" class="table table-hover">
							<thead>
								<tr>
									<th>
									排名
									</th>
									<th>
									学校名称
									</th>
									<th>
									所在地
									</th>
									<th>
									详细
									</th>
								</tr>
							</thead>
							<tbody>
							</tbody>
						</table>						
					</div>
				</div>
			</div>
			<div class="col-md-2">
			</div>
		</div>
		
	</div>
	
	<script>
		$(document).ready(function(){
			$.getJSON("http://127.0.0.1:8080/pro/pages/rank_queryAllQSRank",function(data){
				$.each(data.rows,function(i,item){
					var row = $("<tr></tr>");
					var td_1 = $("<td>"+item.rank+"</td>");;
					var td_2 = $("<td>"+item.univName+"</td>");
					var td_3 = $("<td>"+item.univProvince+"</td>");
					var td_4 = $("<td><a href='http://127.0.0.1:8080/pro/univAction_queryUnivById?university.univCode="+item.univCode+"' target='_blank'>点击进入</a></td>");
					row.append(td_1);
					row.append(td_2);
					row.append(td_3);
					row.append(td_4);
					$("#qs tbody").append(row);
				});
			});
		});
	</script>

<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.bootcss.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</body>
</html>