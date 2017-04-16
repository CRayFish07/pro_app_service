<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>高校库</title>
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="../css/common.css">
<script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<script src="js/respond.min.js"></script>
<![endif]-->
<style>
 p {
    padding: 5px 0;
    border-bottom: 1px dotted #DDDDDD;
    overflow: hidden;
}

p a {
    margin: 3px 0;
    padding: 0 8px;
    white-space: nowrap;
    display: inline-block;
}

p a.on {
    color: #ffffff;
    background: #198CCF;
}
 .colist{
	margin-top:20px;
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
				<a href="http://127.0.0.1:8080/pro/pages/index.jsp"><img src="../img/logo.png" class="img-responsive" alt="Responsive image"></a>
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
						<li class="active"><a href="http://127.0.0.1:8080/pro/pages/college_search.jsp">高校库</a></li>
						<li><a href="http://127.0.0.1:8080/pro/pages/major_search.jsp">专业库</a></li>
						<li><a href="news_search.jsp">资讯库</a></li>
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
				<div class="logoArea">

					您现在的位置：<span class="dress"><a href="http://college.gaokao.com/">高校库</a> &gt; 高校搜索</span>

				</div>
			</div>
			<div class="col-md-2">
			</div>
		</div>
		<div class="row">
			<div class="col-md-2">
			</div>
			<div class="col-md-8">
				<div class="row">
					<div class="col-md-8">
						<p id="condition1">
							<strong>高校所在地：</strong>
							<a class="on" href="#">全部</a>
							<a href="#">北京</a>
							<a href="#">天津</a>
							<a href="#">辽宁</a>
							<a href="#">吉林</a>
							<a href="#">黑龙江</a>
							<a href="#">上海</a>
							<a href="#">江苏</a>
							<a href="#">浙江</a>
							<a href="#">安徽</a>
							<a href="#">福建</a>
							<a href="#">山东</a>
							<a href="#">湖北</a>
							<a href="#">湖南</a>
							<a href="#">广东</a>
							<a href="#">重庆</a>
							<a href="#">四川</a>
							<a href="#">陕西</a>
							<a href="#">甘肃</a>
							<a href="#">河北</a>
							<a href="#">山西</a>
							<a href="#">内蒙古</a>
							<a href="#">河南</a>
							<a href="#">海南</a>
							<a href="#">广西</a>
							<a href="#">贵州</a>
							<a href="#">云南</a>
							<a href="#">西藏</a>
							<a href="#">青海</a>
							<a href="#">宁夏</a>
							<a href="#">新疆</a>
							<a href="#">江西</a>
							<a href="#">香港</a>
							<a href="#">澳门</a>
							<a href="#">台湾</a>
						</p>
						<p id="condition2">
							<strong>高校类型：</strong>
							<a class="on" href="#">全部</a>
							<a href="#">综合</a>
							<a href="#">工科</a>
							<a href="#">农业</a>
							<a href="#">师范</a>
							<a href="#">民族</a>
							<a href="#">林业</a>
							<a href="#">医药</a>
							<a href="#">语言</a>
							<a href="#">财经</a>
							<a href="#">体育</a>
							<a href="#">艺术</a>
							<a href="#">政法</a>
							<a href="#">军事</a>
						</p>
						<div class="colist">
							<table id="sclist" class="table table-bordered">
								<thead>
									<tr>
										<th>
											院校名称
										</th>
										<th>
											所在地
										</th>
										<th>
											院校类型
										</th>
										<th>
											武书连排名
										</th>
										<th>
											校友会排名
										</th>
										<th>
											详情
										</th>
									</tr>
								</thead>
								<tbody>
									
								</tbody>
							</table>
						</div>
						<ul class="pagination">
							<li>
								 <a href="#">Prev</a>
							</li>
							<li>
								 <a href="#">1</a>
							</li>
							<li>
								 <a href="#">2</a>
							</li>
							<li>
								 <a href="#">3</a>
							</li>
							<li>
								 <a href="#">4</a>
							</li>
							<li>
								 <a href="#">5</a>
							</li>
							<li>
								 <a href="#">Next</a>
							</li>
						</ul>
					</div>
					<div class="col-md-4">
					</div>
					</div>
				</div>
			</div>
			<div class="col-md-2 mycol">
			</div>
		</div>
	</div>
<script type="text/javascript">
$(document).ready(function(){
	var provin = "all";
	var type = "all";
	$.getJSON("http://127.0.0.1:8080/pro/univAction_queryAllUnivByPT?univProvince="+provin+"&univType="+type,function(data){
		$.each(data.rows,function(i,item){
			var row = $("<tr></tr>");
			var td_1 = $("<td>"+item.univName+"</td>");;
			var td_2 = $("<td>"+item.univProvince+"</td>");
			var td_3 = $("<td>"+item.univType+"</td>");
			var td_4 = $("<td>"+item.univWslrank+"</td>");
			var td_5 = $("<td>"+item.univXyhrank+"</td>");
			var td_6 = $("<td><a href='http://127.0.0.1:8080/pro/univAction_queryUnivById?university.univCode="+item.univCode+"' target='_blank'>点击进入</a></td>");
			row.append(td_1);
			row.append(td_2);
			row.append(td_3);
			row.append(td_4);
			row.append(td_5);
			row.append(td_6);
			$("#sclist tbody").append(row);
		});
	});
});
</script>
<script type="text/javascript">
	$("#condition1 a").click(function(){
		$(".on:first").removeAttr("class");
		$(this).attr("class","on");
		var provin = $(".on:first").text();
		var type = $(".on:eq(1)").text();
		if(provin=='全部'){
			provin='all';
		}
		if(type=='全部'){
			type='all';
		}
		$("#sclist tbody").empty();
		$.getJSON("http://127.0.0.1:8080/pro/univAction_queryAllUnivByPT?univProvince="+provin+"&univType="+type,function(data){
			$.each(data.rows,function(i,item){
				var row = $("<tr></tr>");
				var td_1 = $("<td>"+item.univName+"</td>");;
				var td_2 = $("<td>"+item.univProvince+"</td>");
				var td_3 = $("<td>"+item.univType+"</td>");
				var td_4 = $("<td>"+item.univWslrank+"</td>");
				var td_5 = $("<td>"+item.univXyhrank+"</td>");
				var td_6 = $("<td><a href='http://127.0.0.1:8080/pro/univAction_queryUnivById?university.univCode="+item.univCode+"' target='_blank'>点击进入</a></td>");
				row.append(td_1);
				row.append(td_2);
				row.append(td_3);
				row.append(td_4);
				row.append(td_5);
				row.append(td_6);
				$("#sclist tbody").append(row);
			});
		});
	});
	$("#condition2 a").click(function(){
		$(".on:eq(1)").removeAttr("class");
		$(this).attr("class","on");
		var provin = $(".on:first").text();
		var type = $(".on:eq(1)").text();
		if(provin=='全部'){
			provin='all';
		}
		if(type=='全部'){
			type='all';
		}
		$("#sclist tbody").empty();
		$.getJSON("http://127.0.0.1:8080/pro/univAction_queryAllUnivByPT?univProvince="+provin+"&univType="+type,function(data){
			$.each(data.rows,function(i,item){
				var row = $("<tr></tr>");
				var td_1 = $("<td>"+item.univName+"</td>");;
				var td_2 = $("<td>"+item.univProvince+"</td>");
				var td_3 = $("<td>"+item.univType+"</td>");
				var td_4 = $("<td>"+item.univWslrank+"</td>");
				var td_5 = $("<td>"+item.univXyhrank+"</td>");
				var td_6 = $("<td><a href='http://127.0.0.1:8080/pro/univAction_queryUnivById?university.univCode="+item.univCode+"' target='_blank'>点击进入</a></td>");
				row.append(td_1);
				row.append(td_2);
				row.append(td_3);
				row.append(td_4);
				row.append(td_5);
				row.append(td_6);
				$("#sclist tbody").append(row);
			});
		});
	});
</script>
<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.bootcss.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</body>
</html>