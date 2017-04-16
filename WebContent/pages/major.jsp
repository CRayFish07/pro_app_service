<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>专业页面</title>
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/pagination.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css">
<script src="js/jquery-3.1.1.min.js"></script>
<script src="js/jquery.pagination.js"></script>
    <!--[if lt IE 9]>
      <script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
	<style>
	.table_front{
	font-size: 12px;
	}

	</style>
    </head>
	<script type="text/javascript">
	//点击高校排名分页按钮以后触发的动作
	function handlePaginationClick(new_page_index, pagination_container) {
		$("#univTable tbody").empty();
		var majorCode = $("#majorCode").text();
		$.getJSON("http://127.0.0.1:8080/pro/rank_queryUnivRankByMajor?major.majorCode="+majorCode+"&page="+(new_page_index+1),function(data){
			$.each(data.rows,function(i,item){
				var row = $("<tr></tr>");
				var td_1 = $("<td><a href='#'>"+item.univName+"</a></td>");
				var td_2 = $("<td><a href='#'>"+item.univRank+"</a></td>");
				var td_3 = $("<td><a href='#'>"+item.univScore+"</a></td>");
				//var td_4 = $("<td><a href='#'>全国排名</a></td>");
				row.append(td_1);
				row.append(td_2);
				row.append(td_3);
				//row.append(td_4);
				$("#univTable tbody").append(row);
			});
		});
		return false;
	};
	
	$(function(){
		var rankTotalCount = $("#rankTotalCount").val();
		var univTotalCount = $("#univTotalCount").val();
		$("#News-Pagination").pagination(rankTotalCount, {
			items_per_page:5,
			num_display_entries:1,
			next_text:">",
			prev_text:"<",
			num_edge_entries:1, // 连接分页主体，显示的条目数
			callback:handlePaginationClick
		});
	});
	</script>
    <body>
    <div class="container-fluid">
		<div class="row">
		    <div class="col-md-2">
			</div>
			<div class="col-md-4 column">
			    <div class="row">
					<div class="col-md-5">
						<h2><s:property value="major.majorName"/>
						</h2>
					</div>
					<div class="col-md-2">
						<h3 id="majorCode"><s:property value="major.majorCode"/></h3>
					</div>
				</div>
			</div>
			<div class="col-md-6 column">
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8">
			<ol class="breadcrumb">
				<li>
					<a href="#">首页</a>
				</li>
				<li>
					<a href="#">专业库</a>
				</li>
				<li class="active">
					<s:property value="major.majorName"/>
				</li>
			</ol>
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
				    <h3 class="panel-title">基本信息</h3>
				</div>
			    <div class="panel-body">
				    <div class="row">
					    <div class="col-md-3">
							<span class="label label-default">学制</span>
							<span class="text-primary"><s:property value="major.majorLength"/></span>
						</div>
						<div class="col-md-3">
							<span class="label label-default">就业薪酬</span>
							<span class="text-primary"><s:property value="major.majorPayment"/></span>
						</div>
						<div class="col-md-3">
							<span class="label label-default">学科</span>
							<span class="text-primary"><s:property value="major.specCode"/></span>
						</div>
						<div class="col-md-3">
							<span class="label label-default">授予学位</span>
							<span class="text-primary"><s:property value="major.majorDegree"/></span>
						</div>
					</div>
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
			<div class="row">
				<div class="col-md-8">
					<div class="panel panel-info">
					    <div class="panel-heading">
						    <h3 id="title"  class="panel-title">专业详情</h3>
					    </div>
					    <div id="mainContent"class="panel-body">
					    	<div class='row'>
								<div class='col-md-3'>
									<span class='label label-default'>教学实践</span>
								</div>
							</div><br>
							<div class='row'>
								<div class='col-md-12'>
									<s:property value='major.majorPractice'/>
								</div>
							</div><br>
							<div class='row'>
								<div class='col-md-3'>
									<span class='label label-default'>培养目标</span>
								</div>
							</div>
							<div class='row'>
								<div class='col-md-12'>
									<br><s:property value='major.majorGoal'/>
								</div>
							</div><br>
							<div class='row'>
								<div class='col-md-3'>
									<span class='label label-default'>主干课程</span>
								</div>
							</div>
							<div class='row'>
								<div class='col-md-12'>
									<br><s:property value='major.mainCourse'/>
								</div>
							</div><br>
							<div class='row'>
								<div class='col-md-3'>
									<span class='label label-default'>专业要求</span>
								</div>
							</div>
							<div class='row'>
								<div class='col-md-12'>
									<br><s:property value='major.majorRequire'/>
								</div>
							</div><br>
							<div class='row'>
								<div class='col-md-3'>
									<span class='label label-default'>学生能力</span>
								</div>
							</div>
							<div class='row'>
								<div class='col-md-12'>
									<br><s:property value='major.stuAbility'/>
								</div>
							</div>
					    </div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="panel panel-info">
						<div class="panel-heading">
						    <h3 class="panel-title">信息导航</h3>
						</div>
						<div class="panel-body">
							<div class="row myrow">
								<div class="col-md-6 column">
									<h5>
										<a id="zhuanyexiangqing">专业详情
										</a>
									</h5>
								</div>
								<div class="col-md-6 column">
									<h5>
										<a id="zhuanyejieshao">专业介绍
										</a>
									</h5>
								</div>
							</div>
							<div class="row myrow">
								<div class="col-md-6 column">
									<h5>
										<a id="kaisheyuanxiao">开设院校
										</a>
									</h5>
								</div>
								<div class="col-md-6 column">
									<h5>
										<a href="http://www.shu.edu.cn/IndexPage.html">专业评估
										</a>
									</h5>
								</div>
							</div>
						</div>
					</div>
					<div class="panel panel-info">
						<div class="panel-heading">
						    <h3 class="panel-title">学科排名</h3>
						</div>
						<div class="panel-body">
						    <table id="univTable" class="table table-striped">
								    <thead>
										<tr>
											<th>高校</th>
											<th>排名</th>
											<th>得分</th>
										</tr>
								    </thead>
								    <tbody>
								    </tbody>
							</table>
							<br>
							<div id="News-Pagination">
							</div>
							<input id="rankTotalCount"  type="hidden" value="<s:property value="rankTotalCount"/>"/>
							<input id="univTotalCount"  type="hidden" value="<s:property value="univTotalCount"/>"/>
							
						</div>
					</div>
				</div>
			</div>	
		</div>
		<div class="col-md-2">
		</div>
    </div>
	<script type="text/javascript">
		$(document).ready(function(){
			var majorCode = $("#majorCode").text();
			$.getJSON("http://127.0.0.1:8080/pro/rank_queryUnivRankByMajor?major.majorCode="+majorCode+"&page=1",function(data){
				$.each(data.rows,function(i,item){
					var row = $("<tr></tr>");
					var td_1 = $("<td><a href='#'>"+item.univName+"</a></td>");;
					var td_2 = $("<td><a href='#'>"+item.univRank+"</a></td>");
					var td_3 = $("<td><a href='#'>"+item.univScore+"</a></td>");
					//var td_4 = $("<td><a href='#'>全国排名</a></td>");
					row.append(td_1);
					row.append(td_2);
					row.append(td_3);
					//row.append(td_4);
					$("#univTable tbody").append(row);
				});
			});
		});
	</script>
	<script type="text/javascript">
		$("#zhuanyexiangqing").css("cursor","pointer").click(function(){
			$("#title").html("专业详情");
			$("#mainContent").html("<div class='row'><div class='col-md-3'><span class='label label-default'>教学实践<\/span><\/div><\/div><br><div class='row'><div class='col-md-12'><s:property value='major.majorPractice'/><\/div><\/div><br><div class='row'><div class='col-md-3'><span class='label label-default'>培养目标<\/span><\/div><\/div><div class='row'><div class='col-md-12'><br><s:property value='major.majorGoal'/><\/div><\/div><br><div class='row'><div class='col-md-3'><span class='label label-default'>主干课程<\/span><\/div><\/div><div class='row'><div class='col-md-12'><br><s:property value='major.mainCourse'/><\/div><\/div><br><div class='row'><div class='col-md-3'><span class='label label-default'>专业要求<\/span><\/div><\/div><div class='row'><div class='col-md-12'><br><s:property value='major.majorRequire'/><\/div><\/div><br><div class='row'><div class='col-md-3'><span class='label label-default'>学生能力<\/span><\/div><\/div><div class='row'><div class='col-md-12'><br><s:property value='major.stuAbility'/><\/div><\/div>");
		});
		$("#zhuanyejieshao").css("cursor","pointer").click(function(){
			$("#title").html("专业介绍");
			$("#mainContent").html("<s:property value='major.majorIntro'/>");
		});
		
		$("#kaisheyuanxiao").css("cursor","pointer").click(function(){
			$("#title").html("开设院校");
			var majorCode = $("#majorCode").text();
			$.getJSON("http://127.0.0.1:8080/pro/major_queryAllUnivByMajor?major.majorCode="+majorCode+"&page=1",function(data){		
				$("#mainContent").load("pages/kaisheyuanxiao.html",function(){
					$.each(data.rows,function(i,item){
						var row = $("<tr></tr>");
						var td_1 = $("<td><a href='#'>"+item.univName+"</a></td>");;
						var td_2 = $("<td><a href='#'>"+item.univLevel+"</a></td>");
						var td_3 = $("<td><a href='#'>"+item.univType+"</a></td>");
						var td_4 = $("<td><a href='#'>"+item.univProvince+"</a></td>");
						row.append(td_1);
						row.append(td_2);
						row.append(td_3);
						row.append(td_4);
						$("#kaisheTable tbody").append(row);
					});
				});
			});
		});
		
	</script>
	<script src="http://cdn.bootcss.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    </body>
</html>