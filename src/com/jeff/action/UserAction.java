package com.jeff.action;

import org.apache.struts2.ServletActionContext;
import com.jeff.model.Puser;
import com.jeff.service.UserService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.interceptor.annotations.InputConfig;

public class UserAction extends ActionSupport implements ModelDriven<Puser>{
	private Puser puser = new Puser();
	private UserService userService;
	
	@Override
	public Puser getModel() {
		return puser;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	//��ҳ��תע��ҳ��
	public String registPage(){
		return "registPageSuccess";
	}
	
	//ע�Ṧ��
	@InputConfig(resultName="registFailed")
	public String regist() {
		userService.regist(puser);
		return "registSuccess";
	}
	
	//��¼����
	@InputConfig(resultName="loginFailed")
	public String login(){
		Puser existPuser = userService.login(puser);
		if(existPuser == null){
			this.addActionError("�û����������");
			return "loginFailed";
		}else {
			//�����û���Ϣ����session
			ServletActionContext.getRequest().getSession().setAttribute("existPuser", existPuser);
			return "loginSuccess";
		}		
	}
}
