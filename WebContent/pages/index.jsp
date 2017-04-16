<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>高校学科专业推荐</title>
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<script src="js/respond.min.js"></script>
<![endif]-->
<style>

.myul li.title {
	padding-left:10px;
	float: left;
}

.myul li.time {
	list-style-type: none;
	text-align: right;
	clear: right;
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
						<div class="col-md-3"></div>
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
						<div class="col-md-3"></div>
					</div>
				</div>
				<div class="modal-footer">
					<!-- 转接注册modal -->
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div>
	<!-- /.modal -->
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-3 logo">
				<a href="http://127.0.0.1:8080/pro/pages/index.jsp"><img src="${pageContext.request.contextPath}/img/logo.png" class="img-responsive" alt="Responsive image"></a>
			</div>
			<div class="col-md-2"></div>
			<div class="col-md-3 feature">

				<div class="jsd">

					<a data-toggle="modal" href="#myModal">登录 </a>&nbsp;|&nbsp; <a href="" target="_blank">注册 </a>
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
			<div class="col-md-2"></div>
		</div>
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<nav class="navbar navbar-default">

					<div class="container-fluid">

						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
								aria-expanded="false">
								<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
							<a class="navbar-brand" href="#"> Brand </a>
						</div>

						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav">
								<li class="active"><a href="http://127.0.0.1:8080/pro/pages/index.jsp">首页</a></li>
								<li><a href="http://127.0.0.1:8080/pro/pages/college_search.jsp">高校库</a></li>
								<li><a href="http://127.0.0.1:8080/pro/pages/major_search.jsp">专业库</a></li>
								<li><a href="http://127.0.0.1:8080/pro/pages/news_search.jsp">资讯库</a></li>
							</ul>
						</div>
					</div>
				</nav>
			</div>
			<div class="col-md-2"></div>
		</div>
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-3">
				<div class="panel panel-success">
					<div class="panel-heading">快速导航</div>
					<div class="panel-body">
						<form class="form-horizontal" role="form">
							<div class="form-group">
								<div class="col-sm-4">
									<select id="provin" class="form-control">
										<option value="-1" selected="selected">省份</option>
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
										<option value="-1" select="selected">高校类</option>
										<option value="综合">综合</option>
										<option value="工科">工科</option>
										<option value="农业">农业</option>
										<option value="师范">师范</option>
										<option value="民族">民族</option>
										<option value="林业">林业</option>
										<option value="医药">医药</option>
										<option value="语言">语言</option>
										<option value="财经">财经</option>
										<option value="体育">体育</option>
										<option value="艺术">艺术</option>
										<option value="政法">政法</option>
										<option value="军事">军事</option>
									</select>
								</div>
								<button type="button" class="btn btn-default">高校查询</button>
							</div>
						</form>
						<form class="form-horizontal" role="form">
							<div class="form-group">
								<div class="col-sm-4">
									<select id="dis1" class="form-control">
										<option value="-1" selected="selected">门类</option>
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
									<select id="spec1" class="form-control">
										<option value="-1" select="selected">专业类</option>
									</select>
								</div>
								<button type="button" class="btn btn-default">专业查询</button>
							</div>
						</form>
						<form class="form-horizontal" role="form">
							<div class="form-group">
								<div class="col-sm-4">
									<select id="dis2" class="form-control">
										<option value="-1" selected="selected">门类</option>
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
									<select id="spec2" class="form-control">
										<option value="-1" select="selected">专业类</option>
									</select>
								</div>
								<button type="button" class="btn btn-default">学科排名</button>
							</div>
						</form>
					</div>
				</div>
			</div>
			<div class="col-md-5">
				<div class="panel panel-info">
					<div class="panel-heading">
						<div class="row">
							<div class="col-md-6">
								<h3 class="panel-title">热门资讯</h3>
							</div>
							
						</div>
					</div>
					<div id="spotnews" class="panel-body">
					</div>
				</div>
			</div>
			<div class="col-md-2">
			</div>
		</div>
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<div class="panel panel-info">
					<div class="panel-heading">
						<div class="row">
							<div class="col-md-6">
								<h3 class="panel-title">高校排行榜</h3>
							</div>
						</div>
					</div>
					<div class="panel-body">
						<div class="tabbable" id="tabs-844094">
							<ul class="nav nav-tabs">
								<li class="active">
									 <a href="#panel-657838" data-toggle="tab">校友会排行</a>
								</li>
								<li>
									 <a href="#panel-637056" data-toggle="tab">武书连排行</a>
								</li>
								<li>
									 <a href="#panel-657834" data-toggle="tab">QS世界大学排名</a>
								</li>
								<li>
									 <a href="#panel-657835" data-toggle="tab">上海交大世界大学学术排名</a>
								</li>
							</ul>
							<div class="tab-content">
								<div class="tab-pane active" id="panel-657838">
									<table id="xyh" class="table table-striped table-condensed">
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
									<a href="http://127.0.0.1:8080/pro/pages/xyhrank.jsp">查看全部</a>
								</div>
								<div class="tab-pane" id="panel-637056">
									<table id="wsl" class="table table-striped table-condensed">
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
									<a href="http://127.0.0.1:8080/pro/pages/wslrank.jsp">查看全部</a>
								</div>
								<div class="tab-pane" id="panel-657834">
									<table id="qs" class="table table-striped table-condensed">
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
									<a href="http://127.0.0.1:8080/pro/pages/qsrank.jsp">查看全部</a>
								</div>
								<div class="tab-pane" id="panel-657835">
									<table id="jd" class="table table-striped table-condensed">
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
									<a href="http://127.0.0.1:8080/pro/pages/jdrank.jsp">查看全部</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-2"></div>
		</div>
	</div>
	<script>
		$(document).ready(function(){
			$.getJSON("http://127.0.0.1:8080/pro/pages/rank_queryXYHRank",function(data){
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
					$("#xyh tbody").append(row);
				});
			});
			$.getJSON("http://127.0.0.1:8080/pro/pages/rank_queryWSLRank",function(data){
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
					$("#wsl tbody").append(row);
				});
			});
			$.getJSON("http://127.0.0.1:8080/pro/pages/rank_queryQSRank",function(data){
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
			$.getJSON("http://127.0.0.1:8080/pro/pages/rank_queryJDRank",function(data){
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
					$("#jd tbody").append(row);
				});
			});
			$.getJSON("http://127.0.0.1:8080/pro/news_queryNewsByHotAndDate?hot=1",function(data){
				$.each(data.rows,function(i,item){
					var str="<ul class='myul'><li class='title'><a target='_blank' href='http://127.0.0.1:8080/pro/pages/news_detail.jsp?newsid="+item.newsId+"'>"+item.newsTitle+"</a></li><li class='time'>‎"+item.newsDate+"‎</li></ul>"
					$("#spotnews").append(str);
				});
			});
		});
		
		$("#dis1").change(function(){
			var dis = $("#dis1").val();
			$.getJSON("http://127.0.0.1:8080/pro/major_queryAllSpecByDis?disCode="+dis,function(data){
				$.each(data.rows,function(i,item){
					var str="<option value='"+item.specCode+"'>"+item.specName+"</option>";
					$("#spec1").append(str);
				});
			});
		});
		
		$("#dis2").change(function(){
			var dis = $("#dis2").val();
			$.getJSON("http://127.0.0.1:8080/pro/major_queryAllSpecByDis?disCode="+dis,function(data){
				$.each(data.rows,function(i,item){
					var str="<option value='"+item.specCode+"'>"+item.specName+"</option>";
					$("#spec2").append(str);
				});
			});
		});
	</script>
	<script src="http://cdn.bootcss.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</body>
</html>