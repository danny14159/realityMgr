package com.work.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.util.WebUtils;

import com.work.bean.TbUser;
import com.work.mapper.TbUserDao;
import com.work.util.AjaxReturn;
import com.work.util.M;

@RequestMapping("/app")
@Controller
public class MainController {
	
	@Resource
	private TbUserDao userDao;
	
	public final static String ME = "me";

	/**login page
	 * @return
	 */
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String login() {

		return "login";
	}
	
	/**获取当前登录对象
	 * @param req
	 * @return
	 */
	public static TbUser getCurrentUser(HttpServletRequest req){
		
		return (TbUser)WebUtils.getSessionAttribute(req, ME);
	}
	
	/**login request
	 * @param username
	 * @param password
	 * @return
	 */
	@RequestMapping(value="/login",method=RequestMethod.POST)
	@ResponseBody
	public Object login(String username,String password,HttpServletRequest req){
		
		 TbUser u = userDao.load(M.make("username", username).put("password", password).asMap());
		 
		 if(null == u){
			 
			 return new AjaxReturn(false, "用户名或密码不存在");
		 }
		 
		 WebUtils.setSessionAttribute(req, ME, u);
		 return new AjaxReturn(true);
	}
}
