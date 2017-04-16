<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册</title>
</head>
<body>
	<form id="registerForm" action="${pageContext.request.contextPath}/user_regist.action" method="post" novalidate="novalidate">
		<table>
			<tbody>
				<tr>
					<th>用户名:</th>
					<td><input type="text" id="username" name="username" class="text" maxlength="20" /><s:fielderror
								fieldName="username" /></td>
				</tr>
				<tr>
					<th>密&nbsp;&nbsp;码:</th>
					<td><input type="password" id="password" name="password" class="text" maxlength="20" autocomplete="off"><span><s:fielderror
								fieldName="password" /></span></td>
				</tr>
				<tr>
					<th>确认密码:</th>
					<td><input type="password" id="repassword" name="repassword" class="text" maxlength="20" autocomplete="off"></td>
				</tr>
				<tr>
					<th>E-mail:</th>
					<td><input type="text" id="email" name="email" class="text" maxlength="200" /><span><s:fielderror
								fieldName="email" /></span></td>
				</tr>
				<tr>
					<th>性别:</th>
					<td><span> <label> <input type="radio" name="sex" value="male">男
						</label> <label> <input type="radio" name="sex" value="female">女
						</label>
					</span></td>
				</tr>
				<tr>
					<th>地址:</th>
					<td><input type="text" name="addr" class="text" maxlength="200"></td>
				</tr>
				<tr>
					<th>验证码:</th>
					<td><span> <input type="text" id="captcha" name="captcha" class="text captcha" maxlength="4"
							autocomplete="off"><img id="captchaImage" class="captchaImage"
							src="${pageContext.request.contextPath}/image/captcha.jhtml" title="点击更换验证码">
					</span></td>
				</tr>
				<tr>
					<th>&nbsp;</th>
					<td><input type="submit" class="submit" value="注册"></td>
				</tr>
			</tbody>
		</table>
	</form>
</body>
</html>