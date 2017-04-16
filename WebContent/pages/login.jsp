<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html lang="zh-cn">
    <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>专业页面-计算机科学与技术</title>

    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
	<style>
	.table_front{
	font-size: 12px;
	}

	
	@{

    ViewBag.Title = "Register";

    Layout = "~/Views/Shared/_Layout.cshtml";

	}

	@section RenderCSS{

	.list-widget{

	width:450px;

	border: 1px solid #DDD;

	border-radius: 3px;

	position: relative;

	border-top: 1px solid #EEE;

	background: white;

	padding: 10px;

	overflow: hidden;

	margin:0 auto 5px auto;

	}

	.control-group .control-label{

	width:100px;

	}

	.control-group .controls{

	margin-left:120px;

	}

	 

	#showMoreInfo{

	width: 600px;

	padding: 30px; 

	display:none;

	background: #FFF;

	border-radius: 5px; -moz-border-radius: 5px; -webkit-border-radius: 5px;

	box-shadow: 0px 0px 4px rgba(0,0,0,0.7); -webkit-box-shadow: 0 0 4px rgba(0,0,0,0.7); -moz-box-shadow: 0 0px 4px rgba(0,0,0,0.7);

	}

	#showMoreInfo p { color: #666; text-shadow: none; }

	 

	#lean_overlay {

		position: fixed;

		z-index:100;

		top: 0px;

		left: 0px;

		height:100%;

		width:100%;

		background: #000;

		display: none;

	}

	 

	 

	.modal_close { position: absolute; top: 12px; right: 12px; display: block; width: 14px; height: 14px; background: url(http://leanmodal.finelysliced.com.au/img/modal_close.png); z-index: 2; }

	}

	@section RenderJSFile{

	<script type="text/javascript" src="http://leanmodal.finelysliced.com.au/js/jquery.leanModal.min.js"></script>

	 

	 

	<script charset="utf-8" src="http://www.kindsoft.net/ke4/kindeditor-all-min.js?t=20130421.js"></script>

	<script>

		KindEditor.ready(function (K) {

			window.editor = K.create('#editor_id');

		});

	</script>

	 

	 

	}

	@section RenderJQReady{

	$('a[rel*=leanModal]').leanModal({ top : 200, closeButton: ".modal_close" });       

	}
	</style>
    </head>
    <body>
    <div class="container-fluid">
		<div class="row">
		    <div class="col-md-2">
			</div>
			<div class="col-md-8 column">
			    
				<div class="list-widget">			
					<textarea id="editor_id" name="content" style="width:700px;height:300px;">
					<strong>广告</strong>
					</textarea>
				</div>

				<div class="list-widget">
				  <form class="form-horizontal">
					<fieldset>
					  <div id="legend" class="">
						<legend class=""><span style="margin-left:40px;">欢迎登陆</span></legend>
					  </div>
					<div class="control-group">

				 

						  <!-- Text input-->

						  <label class="control-label" for="input01">用户名称：</label>

						  <div class="controls">

							<input type="text" placeholder="请输入你的昵称" class="input-xlarge">

							<p class="help-block"></p>

						  </div>

					</div>

				 

					<div class="control-group">

				 

						  <!-- Text input-->

						  <label class="control-label" for="input01">登陆密码：</label>

						  <div class="controls">

							<input type="text" placeholder="请输入您的登陆密码" class="input-xlarge">

							<p class="help-block"></p>

						  </div>

					</div>

					<div class="control-group">

						  <label class="control-label"></label>

				 

						  <!-- Button -->

						  <div class="controls">

							<button class="btn btn-success">欢迎登陆</button>

						  </div>

					</div>

				 

					</fieldset>

				  </form>

				 

				</div>

				<div class="list-widget">

				  <form class="form-horizontal" action="">

					<fieldset>

					  <div id="legend" class="">

						<legend class=""><span style="margin-left:40px;">欢迎注册</span></legend>

					  </div>

					<div class="control-group">

				 

						  <!-- Text input-->

						  <label class="control-label" for="input01">用户名称：</label>

						  <div class="controls">

							<input type="text" placeholder="请输入你的昵称" class="input-xlarge"/>

							<p class="help-block">该昵称将用于登陆和显示</p>

						  </div>

						</div>

				 

					<div class="control-group">

				 

						  <!-- Text input-->

						  <label class="control-label" for="input01">邮件地址：</label>

						  <div class="controls">

							<input type="text" placeholder="请输入您的邮件地址" class="input-xlarge"/>

							<p class="help-block">方便找回密码和及时获取站里活动信息</p>

						  </div>

						</div><div class="control-group">

				 

						  <!-- Text input-->

						  <label class="control-label" for="input01">登陆密码：</label>

						  <div class="controls">

							<input type="text" placeholder="请输入您登陆的密码" class="input-xlarge"/>

							<p class="help-block">请使用字母，数字，和符号的组合</p>

						  </div>

						</div>

					<div class="control-group">

				 

						  <!-- Text input-->

						  <label class="control-label" for="input01">确认密码：</label>

						  <div class="controls">

							<input type="text" placeholder="请再次输入上面的密码" class="input-xlarge"/>

							<p class="help-block"></p>

						  </div>

						</div><div class="control-group">

						  <label class="control-label"></label>

						  <div class="controls">

					  <!-- Multiple Checkboxes -->

					  <label class="checkbox"><a rel="leanModal" href="#showMoreInfo">查看本站规定及相关协议</a></label>

					  <label class="checkbox">

						<input type="checkbox" value="我同意本站明文规定及相关协议"/>

						我同意本站明文规定及相关协议

					  </label>

					  <label class="checkbox">

						<input type="checkbox" value="自动登录"/>

						自动登录

					  </label>

				  </div>

				 

						</div><div class="control-group">

						  <label class="control-label"></label>

				 

						  <!-- Button -->

						  <div class="controls">

							<button class="btn btn-success">注册用户</button>

						  </div>

						</div>

					</fieldset>

				  </form>

				  </div>

				  <div id="showMoreInfo">

					   <h3 class="title">

							高考帮用户注册协议</h3>

						<div class="mainbody cls">

							<div class="treaty_wrap">

								<div class="body">

									<div class="jScrollArea">

										<p>

											在注册前，敬请您阅读以下内容，在进行注册程序过程中点击"立即注册"按钮即表示您已完全接受本协议项下的全部条款。一经用户成功注册，本协议立即生效。如果发生纠纷，注册会员不得以未仔细阅读为由进行抗辩。
										</p>
									
										<p style="margin-bottom: 15px;">

											1.3如果您在18周岁以下，您只能在父母或监护人的监护参与下才能使用本站。
										</p>

									</div>

								</div>

							</div>

						</div>

				  </div>
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
			</div>
			<div class="col-md-2 column">
			</div>
		</div>
	</div>
	
	

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
	<script src="http://cdn.bootcss.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    </body>
</html>