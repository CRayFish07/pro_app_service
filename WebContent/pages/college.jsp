<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>高校页面</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/pagination.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/common.css">
<script src="js/jquery-3.1.1.min.js"></script>
<script src="js/jquery.pagination.js"></script>
<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<script src="js/respond.min.js"></script>
<![endif]-->
<style>
 .feature{
	margin-top:40px;
	float:left;
 }
 .left{
     background-color:#ddd;
     padding:10px 0;
     padding-bottom:500px;
 }
 .progress{
     margin-top:10px;
 }
 .mbtn{
	margin-top:30px;
 }
 .myrow{
	margin-bottom:10px;
 }
 .jsd{
   margin-left:15px;
 }
 .jsda{
   margin:30px 0px 0px 135px;
 }
 .jsdb{
   margin:0px 0px 20px 25px;
 }
 .myul li.key{
	margin-left:3px;
	float:left;
 }
 .myul li.time{
    margin-right:2px;
	list-style-type:none;
	text-align:right;
	clear:right;
 }
 .login modal margin on DENGLU{
    margin-right:0px;
 }
 .university-name-adjustment{
 	margin-left:0px;
	margin-top:50px;
 }
 
</style>

</head>
<script type="text/javascript">
//点击分页按钮以后触发的动作
function handlePaginationClick(new_page_index, pagination_container) {
	$("#majorTable tbody").empty();
	var univCode = $("#univCode").text();
	$.getJSON("http://127.0.0.1:8080/pro/rank_querySpecRankByUniv?university.univCode="+univCode+"&page="+(new_page_index+1),function(data){
		$.each(data.rows,function(i,item){
			var row = $("<tr></tr>");
			var td_1 = $("<td><a href='#'>"+(i+1)+"</a></td>");;
			var td_2 = $("<td><a href='#'>"+item.specName+"</a></td>");
			var td_3 = $("<td><a href='#'>"+item.univRank+"</a></td>");
			//var td_4 = $("<td><a href='#'>全国排名</a></td>");
			row.append(td_1);
			row.append(td_2);
			row.append(td_3);
			//row.append(td_4);
			$("#majorTable tbody").append(row);
		});
	});
    return false;
};
$(function(){
	var total = $("#total").val();
	$("#News-Pagination").pagination(total, {
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
<!-- 模态框（Modal） -->
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
						<div class="item item-account">
							<input type="text" name="form_email" id="form_email" value="" class="inp" placeholder="邮箱 / 手机号" tabindex="1">
						</div>
						<div class="item item-passwd">
							<input name="form_password" placeholder="密码" id="form_password" class="inp" type="password" tabindex="2">						
							<a href="#">帮助</a>						
						</div>
					 </div>
					 <div class="col-md-3">
						
					 </div>				 
				</div>
			</div>			
				<div class="row">
					<div class="col-md-3">			
					</div>
					<div class="col-md-6">
						<div class="col-md-5">
							<label for="form_remember">
								 <input name="remember" type="checkbox" id="form_remember" tabindex="4">记住我
							</label>
						</div>
						<div class="col-md-7">
							<div>
								<a href="#">登录
								</a>
							</div>
						</div>						
					</div>
					<div class="col-md-3">			
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
			<div class="col-md-2">
				<img src="img/uni01.jpg" width="140" height="180" class="img-responsive" alt="Responsive image">
			</div>
			<div class="col-md-3">
				<div class="university-name-adjustment">
					<h4 id="univName"><s:property value="university.univName"/>
					</h4>
				</div>
			</div>
			<div class="col-md-3 feature">
			</div>
			<div class="col-md-2">
			</div>
		</div>
		<div class="row">		
			<div class="col-md-2 column">
			</div>
			<div class="col-md-8 column">
				<ul class="breadcrumb">
					<li>
						 <a href="#">首页</a>
					</li>
					<li>
						 <a href="#">高校库</a>
					</li>
					<li class="active">
						高校详情
					</li>
				</ul>
			</div>
			<div class="col-md-2 column">
			</div>
		</div>
		<div class="row">
			<div class="col-md-2 column">
			</div>
			<div class="col-md-8 column">
			    <div class="panel panel-info">
					<div class="panel-heading">
						<div class="row">
						  <div class="col-md-12">
							<h3 class="panel-title">基本信息</h3>
						  </div>
						</div>
					</div>
					<div class="panel-body">
					    <div class="row">
							<div class="col-md-2">
							    <img src="img/uni01-01.jpg" class="img-responsive" alt="Shanghai University school scenery image">
								<a href="http://www.shu.edu.cn/IndexPage.html">校园风光</a>
							</div>
							<div class="col-md-10">
								<div class="row myrow">
									<div class="col-md-1 column">
										<span class="label label-default">院校代码</span>
									</div>
									<div class="col-md-3 column">
										<span id="univCode" class="text-primary"><s:property value="university.univCode"/></span>
									</div>
									<div class="col-md-1 column">
										<span class="label label-default">院校隶属</span>
									</div>
									<div class="col-md-3 column">
										<span class="text-primary"><s:property value="university.univSubjection"/></span>
									</div>
									<div class="col-md-1">
									    <span class="label label-default">所在地区</span>
									</div>
									<div class="col-md-3">
									    <span class="text-primary"><s:property value="university.univProvince"/></span>
									</div>
								</div>
								<div class="row myrow">
									<div class="col-md-1 column">
										<span class="label label-default">院校类型</span>
									</div>
									<div class="col-md-3 column">
										<span class="text-primary"><s:property value="university.univType"/></span>
									</div>
									<div class="col-md-1 column">
										<span class="label label-default">校友会排名</span>
									</div>
									<div class="col-md-3 column">
										<span class="text-primary">20</span>
									</div>
									<div class="col-md-1 column">
										<span class="label label-default"></span>
									</div>
									<div class="col-md-3 column">
										<span class="text-primary"></span>
									</div>
								</div>
							</div>
						</div>
					</div>
			    </div>
				<div class="row">
					<div class="col-md-8 column">
                        <div class="panel panel-info">
						    <div class="panel-heading">
							    <div class="row">
								  <div class="col-md-8">
									<h3 id="title" class="panel-title">录取分数</h3>
								  </div>
								  <div class="col-md-4">
								  </div>
								</div>   
							</div>
							<div id="mainContent"  class="panel-body">
							<!-- 录取分数线插图、表格 -->
								<div class="row">
									<div class="col-md-3 column">
										<select id="provin" class="form-control">
											<option value="北京" selected="selected">北京</option>
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
									<div class="col-md-3 column">
										<select id="artsci" class="form-control">
											<option value="文科" selected="selected">文科</option>
											<option value="理科">理科</option>
										</select>
									</div>
									<div class="col-md-3 column">
										<select id="batch" class="form-control">
											<option value="本科一批" selected="selected">本科一批</option>
											<option value="本科二批">本科二批</option>
											<option value="本科三批">本科三批</option>
											<option value="提前">提前</option>
										</select>
									</div>
								</div>
								<div class="row">
									<table id="scoreTable" class="table">
										<thead>
											<tr>
												<th>
													年份
												</th>
												<th>
													最高分
												</th>
												<th>
													平均分
												</th>
												<th>
													省控线
												</th>
												<th>
													线差
												</th>
											</tr>
										</thead>
										<tbody>
										</tbody>
									</table>
								</div>
							</div>										
						</div>
					</div>
					<div class="col-md-4 column">
					    <div class="panel panel-info">
						    <div class="panel-heading">
								<div class="row">
									<div class="col-md-8">
									    <h3 class="panel-title">信息导航</h3>
									</div>
									<div class="col-md-4">
									</div>
							    </div>
						    </div>
							<div class="panel-body">
							    <div class="row myrow">
									<div class="col-md-6 column">
										<h5>
											<a id="yuanxiaojianjie">院校简介
											</a>
										</h5>
									</div>
									<div class="col-md-6 column">
										<h5>
											<a id="luqufenshu">录取分数
											</a>
										</h5>
									</div>
								</div>
                                <div class="row myrow">
									<div class="col-md-6 column">
										<h5>
											<a id="zhongdianxueke">重点学科
											</a>
										</h5>
									</div>
									<div class="col-md-6 column">
										<h5>
											<a id="kaishezhuanye">开设专业
											</a>
										</h5>
									</div>
								</div>  								
							</div>
						</div>
						<div class="panel panel-info">
						   <div class="panel-heading">
							  <div class="row">
								  <div class="col-md-8">
									<h3 class="panel-title">学科排名</h3>
								  </div>
								  <div class="col-md-4">
								  <button type="submit" class="btn btn-default btn-xs" >
									<span class="glyphicon glyphicon-plus"></span> 更多
								  </button>
								  </div>
							  </div>
						   </div>
						    <div class="panel-body">
								<table id="majorTable" class="table table-striped">
								    <thead>
										<tr>
											<th>序号</th>
											<th>学科名</th>
											<th>国内排名</th>
										</tr>
								    </thead>
								    <tbody>
								    </tbody>
								</table>
								<br>
								<div id="News-Pagination">
								</div>
								<input type="hidden"  id="total"  value="<s:property value="totalCount"/>"/>
						    </div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-2 column">
			</div>
		</div>
	</div>
<script type="text/javascript">
	$(document).ready(function(){
		var univCode = $("#univCode").text();
		var univName = $("#univName").text();
		var provin = $("#provin").val();
		var artsci = $("#artsci").val();
		var batch = $("#batch").val();
		$.getJSON("http://127.0.0.1:8080/pro/rank_querySpecRankByUniv?university.univCode="+univCode+"&page=1",function(data){
			$.each(data.rows,function(i,item){
				var row = $("<tr></tr>");
				var td_1 = $("<td><a href='#'>"+(i+1)+"</a></td>");;
				var td_2 = $("<td><a href='#'>"+item.specName+"</a></td>");
				var td_3 = $("<td><a href='#'>"+item.univRank+"</a></td>");
				//var td_4 = $("<td><a href='#'>全国排名</a></td>");
				row.append(td_1);
				row.append(td_2);
				row.append(td_3);
				//row.append(td_4);
				$("#majorTable tbody").append(row);
			});
		});
		$.getJSON("http://127.0.0.1:8080/pro/score_queryCollegeScoreLine?collegeScoreLine.univName="+univName+"&collegeScoreLine.province="+provin+"&collegeScoreLine.artsScience="+artsci+"&collegeScoreLine.batch="+batch,function(data){
			$.each(data.rows,function(i,item){
				var row = $("<tr></tr>");
				var td_1 = $("<td><a href='#'>"+item.year+"</a></td>");
				var td_2 = $("<td><a href='#'>"+item.highestScore+"</a></td>");
				var td_3 = $("<td><a href='#'>"+item.averageScore+"</a></td>");
				var td_4 = $("<td><a href='#'>"+item.provinceScore+"</a></td>");
				var td_5 = $("<td><a href='#'>"+item.fencha+"</a></td>");
				row.append(td_1);
				row.append(td_2);
				row.append(td_3);
				row.append(td_4);
				row.append(td_5);
				$("#scoreTable tbody").append(row);
			});
		});
	});
</script>
<script type="text/javascript">
	var univCode = $("#univCode").text();
	$("#yuanxiaojianjie").css("cursor","pointer").click(function(){
		$("#title").html("院校简介");
		$("#mainContent").html("<s:property value='university.univIntro'/>");
	});
	$("#luqufenshu").css("cursor","pointer").attr("href","http://127.0.0.1:8080/pro/univAction_queryUnivById?university.univCode="+univCode);
	$("#zhongdianxueke").css("cursor","pointer").click(function(){
		$("#title").html("重点学科");
		$("#mainContent").html("<div class='row'><div class='col-md-3'><span class='label label-default'>钢铁冶金<\/span><\/div><\/div><br><div class='row'><div class='col-md-12'>成立于1960年的上海大学“钢铁冶金”学科经过四十多年的发展，已经成为国内冶金领域特色鲜明的国家重点学科。“十五”期间，在教育部的指导和地方政府的鼎力支持，以及兄弟院校与冶金企业的大力帮助下，学科面向社会和行业需求，坚持人才培养、科学研究和社会服务三大功能，坚持队伍建设和基地建设并举，坚持基础研究引导下的适度超前研究，取得了巨大的进步。学科点的特色研究方向是：钢铁材料的先进冶炼技术、电磁场下的冶金过程研究、金属凝固理论与细晶技术、冶金熔体物理化学及相关技术和理论、钢铁材料的强韧化技术。<\/div><\/div><br><div class='row'><div class='col-md-3'><span class='label label-default'>流体力学<\/span><\/div><\/div><div class='row'><div class='col-md-12'><br>1984年，钱伟长先生创建了上海市应用数学和力学研究所，二十余年来，在钱先生的教育思想和学术理念指导下，本学科取得了长足进步。1985年、1996年先后被评为上海市教委重点学科，2000年获教育部批准设立力学一级学科博士点，2006年获准建立“上海市力学在能源工程中的应用重点实验室”，2007年建立国家级力学实验教学示范中心，2001年、2005年分别评为上海市重点学科和优势学科，2007年被评为国家重点学科。<\/div><\/div><br><div class='row'><div class='col-md-3'><span class='label label-default'>社会学<\/span><\/div><\/div><div class='row'><div class='col-md-12'><br>上海大学社会学学科以“立足上海，依托长三角，引领学科发展，培育学派风格”为发展目标，围绕“现代社会中的人类合作机制”的核心论题，置身中国社会经济建设和世界社会学学科发展的大环境，努力培育符合国家与地方社会建设和管理需求，契合世界学科发展潮流的研究方向和学科生长点，创建学科平台，打造学术团队。在组织决策分析、社会网络与社会分层、基层社区研究等方向形成了自己的优势，并培育出民间社会认同等新的研究方向，确立了本学科在全国社会学领域中的独特地位。<\/div><\/div><br><div class='row'><div class='col-md-3'><span class='label label-default'>机械电子工程<\/span><\/div><\/div><div class='row'><div class='col-md-12'><br>该学科是国家211工程和上海市的重点学科建设点，2001年通过教育部评审获准为国家重点学科建设点。该学科1992年获准硕士授予点、1996年获准博士授予点。2003年该学科所属机械工程一级学科获准博士授予点，2004年该一级学科获准博士后流动工作站。 连续二十多年，该学科先后得到上海市政府、上海市教委多期重点学科建设和创新团队建设资助，特别是在“十一五”期间，还得到国家发改委的重点学科建设、上海市教委高校高水平特色项目等资助。该学科的“机械自动化与机器人实验室”于1999年被认定为上海市重点实验室，2005年该实验室在上海市重点实验室的评估中得分“优”。1999年该学科的“上海大学机电一体工程有限公司”被认定为“国家863计划智能机器人主题产业化基地”。2007年由该学科牵头负责的“新型显示技术与系统集成教育部重点实验室”通过教育部验收。2009年，该学科牵头负责的“有机光电显示设计与制造专业技术研发平台”被认定为“上海市公共研发平台”。<\/div><\/div>");
	});
	$("#kaishezhuanye").css("cursor","pointer").click(function(){
		$("#title").html("开设专业");
		$("#mainContent").load("pages/kaishezhuanye.html");
	});
</script>
<script type="text/javascript">
	$("#provin").change(function(){
		var univName = $("#univName").text();
		var provin = $("#provin").val();
		var artsci = $("#artsci").val();
		var batch = $("#batch").val();
		$("#scoreTable tbody").empty();
		$.getJSON("http://127.0.0.1:8080/pro/score_queryCollegeScoreLine?collegeScoreLine.univName="+univName+"&collegeScoreLine.province="+provin+"&collegeScoreLine.artsScience="+artsci+"&collegeScoreLine.batch="+batch,function(data){
			$.each(data.rows,function(i,item){
				var row = $("<tr></tr>");
				var td_1 = $("<td><a href='#'>"+item.year+"</a></td>");
				var td_2 = $("<td><a href='#'>"+item.highestScore+"</a></td>");
				var td_3 = $("<td><a href='#'>"+item.averageScore+"</a></td>");
				var td_4 = $("<td><a href='#'>"+item.provinceScore+"</a></td>");
				var td_5 = $("<td><a href='#'>"+item.fencha+"</a></td>");
				row.append(td_1);
				row.append(td_2);
				row.append(td_3);
				row.append(td_4);
				row.append(td_5);
				$("#scoreTable tbody").append(row);
			});
		});
	});
	$("#artsci").change(function(){
		var univName = $("#univName").text();
		var provin = $("#provin").val();
		var artsci = $("#artsci").val();
		var batch = $("#batch").val();
		$("#scoreTable tbody").empty();
		$.getJSON("http://127.0.0.1:8080/pro/score_queryCollegeScoreLine?collegeScoreLine.univName="+univName+"&collegeScoreLine.province="+provin+"&collegeScoreLine.artsScience="+artsci+"&collegeScoreLine.batch="+batch,function(data){
			$.each(data.rows,function(i,item){
				var row = $("<tr></tr>");
				var td_1 = $("<td><a href='#'>"+item.year+"</a></td>");
				var td_2 = $("<td><a href='#'>"+item.highestScore+"</a></td>");
				var td_3 = $("<td><a href='#'>"+item.averageScore+"</a></td>");
				var td_4 = $("<td><a href='#'>"+item.provinceScore+"</a></td>");
				var td_5 = $("<td><a href='#'>"+item.fencha+"</a></td>");
				row.append(td_1);
				row.append(td_2);
				row.append(td_3);
				row.append(td_4);
				row.append(td_5);
				$("#scoreTable tbody").append(row);
			});
		});
	});
	$("#batch").change(function(){
		var univName = $("#univName").text();
		var provin = $("#provin").val();
		var artsci = $("#artsci").val();
		var batch = $("#batch").val();
		$("#scoreTable tbody").empty();
		$.getJSON("http://127.0.0.1:8080/pro/score_queryCollegeScoreLine?collegeScoreLine.univName="+univName+"&collegeScoreLine.province="+provin+"&collegeScoreLine.artsScience="+artsci+"&collegeScoreLine.batch="+batch,function(data){
			$.each(data.rows,function(i,item){
				var row = $("<tr></tr>");
				var td_1 = $("<td><a href='#'>"+item.year+"</a></td>");
				var td_2 = $("<td><a href='#'>"+item.highestScore+"</a></td>");
				var td_3 = $("<td><a href='#'>"+item.averageScore+"</a></td>");
				var td_4 = $("<td><a href='#'>"+item.provinceScore+"</a></td>");
				var td_5 = $("<td><a href='#'>"+item.fencha+"</a></td>");
				row.append(td_1);
				row.append(td_2);
				row.append(td_3);
				row.append(td_4);
				row.append(td_5);
				$("#scoreTable tbody").append(row);
			});
		});
	});
</script>
<script src="http://cdn.bootcss.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</body>
</html>