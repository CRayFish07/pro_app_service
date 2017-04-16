<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>专业库</title>
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css">
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
						Brand
					  </a>
					</div>
					
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					  <ul class="nav navbar-nav">
						<li><a href="http://127.0.0.1:8080/pro/pages/index.jsp">首页</a></li>
						<li><a href="http://127.0.0.1:8080/pro/pages/college_search.jsp">高校库</a></li>
						<li class="active"><a href="http://127.0.0.1:8080/pro/pages/major_search.jsp">专业库</a></li>
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

					您现在的位置：<span class="dress"><a href="http://college.gaokao.com/">专业库</a> &gt; 专业搜索</span>

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
							<strong>专业门类：</strong>
							<a class="on" id="01">哲学</a>
							<a id="02">经济学</a>
							<a id="03">法学</a>
							<a id="04">教育学</a>
							<a id="05">文学</a>
							<a id="06">历史学</a>
							<a id="07">理学</a>
							<a id="08">工学</a>
							<a id="09">农学</a>
							<a id="10">医学</a>
							<a id="12">管理学</a>
							<a id="13">艺术学</a>
						</p>
						<strong>专业小类：</strong>
						<p id="condition2">
							
						</p>
						<div class="colist">
							<p>
								<a href="#">字母排名</a>|<a href="#">教育部学科排名</a>
							</p>
							<table id="malist" class="table table-bordered">
								<thead>
									<tr>
										<th>
											专业名称
										</th>
										<th>
											专业代码
										</th>
										<th>
											学制
										</th>
										<th>
											专业详情
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
$("#condition1 a").click(function(){
	$(".on:first").removeAttr("class");
	$(this).attr("class","on");
	var dis = $(".on:first").attr("id");
	$("#condition2").empty();
	$.getJSON("http://127.0.0.1:8080/pro/major_queryAllSpecByDis?disCode="+dis,function(data){
		$.each(data.rows,function(i,item){
			var a = $("<a id='"+item.specCode+"'>"+item.specName+"</a>");
			$("#condition2").append(a);
		});
	});
	$("#malist tbody").empty();
	$.getJSON("http://127.0.0.1:8080/pro/major_queryAllMajorByDis?disCode="+dis,function(data){
		$.each(data.rows,function(i,item){
			var row = $("<tr></tr>");
			var td_1 = $("<td>"+item.majorName+"</td>");
			var td_2 = $("<td>"+item.majorCode+"</td>");
			var td_3 = $("<td>"+item.majorLength+"</td>");
			var td_4 = $("<td><a href='http://127.0.0.1:8080/pro/major_queryMajorById?major.majorCode="+item.majorCode+"' target='_blank'>点击进入</a></td>");
			row.append(td_1);
			row.append(td_2);
			row.append(td_3);
			row.append(td_4);
			$("#malist tbody").append(row);
		});
	});
});

$("#condition2 a").click(function(){
	$(this).attr("class","on");
	var spec = $(".on:eq(1)").attr("id");
	alert("333");
	/**
	$("#malist tbody").empty();
	$.getJSON("http://127.0.0.1:8080/pro/major_queryAllMajorBySpec?specCode="+spec,function(data){
		$.each(data.rows,function(i,item){
			var row = $("<tr></tr>");
			var td_1 = $("<td>"+item.majorName+"</td>");
			var td_2 = $("<td>"+item.majorCode+"</td>");
			var td_3 = $("<td>"+item.majorLength+"</td>");
			var td_4 = $("<td><a href='http://127.0.0.1:8080/pro/major_queryMajorById?major.majorCode="+item.majorCode+"' target='_blank'>点击进入</a></td>");
			row.append(td_1);
			row.append(td_2);
			row.append(td_3);
			row.append(td_4);
			$("#malist tbody").append(row);
		});
	});
	**/
});
</script>
<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.bootcss.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</body>
</html>