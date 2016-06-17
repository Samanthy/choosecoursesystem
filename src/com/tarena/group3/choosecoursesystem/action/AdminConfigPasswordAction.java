package com.tarena.group3.choosecoursesystem.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.tarena.group3.choosecoursesystem.service.impl.AdminPasswordService;

/**
 * 管理员密码管理的Action
 * @author group3
 *
 */
public class AdminConfigPasswordAction extends Action {
	
	private AdminPasswordService adminPasswordService;
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String user=request.getParameter("user");
		String password=request.getParameter("surePassword");
		String newpassword = request.getParameter("newPassword");
		String account=request.getParameter("account");
		System.out.println("user"+user+" password:"+password+" account:"+account);
		//登录账号和用户类型不能为空
		if(!user.equals("")&&!account.equals("")){
			//如果密码不相同
			if(!newpassword.equals(password)){
				//提示出错信息
				request.setAttribute("password_error","修改失败,用户名或密码错误!");
			}else{
				//是否修改成功，用户名不存在，返回false
				boolean flag=adminPasswordService.configPassword(user, account, password);
				if(!flag){
					System.out.println("flag:"+flag);
					request.setAttribute("password_error","修改失败,用户名或密码错误!");
				}else{
					request.setAttribute("password_succ","修改成功!");
				}
			}
		}else{
			request.setAttribute("password_error","修改失败,请填写登录账号!");
		}
		return mapping.findForward("success");
	}
	
	public AdminPasswordService getAdminPasswordService() {
		return adminPasswordService;
	}
	
	public void setAdminPasswordService(AdminPasswordService adminPasswordService) {
		this.adminPasswordService = adminPasswordService;
	}
	
}
