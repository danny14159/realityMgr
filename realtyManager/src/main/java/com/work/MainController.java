package com.work;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.context.web.SpringBootServletInitializer;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.util.WebUtils;

import com.work.bean.TbUser;
import com.work.mapper.TbUserDao;
import com.work.util.M;

@Controller
@SpringBootApplication
@RequestMapping("/app")
public class MainController extends SpringBootServletInitializer{
	
	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(MainController.class);
	}
	
	
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
	public String login(String username,String password,HttpServletRequest req,Model model){
		
		 TbUser u = userDao.load(M.make("username", username).put("password", password).asMap());
		 
		 if(null == u){
			 
			 model.addAttribute("msg", "用户名不存在或密码错误");
			 return "login";
		 }
		 
		 WebUtils.setSessionAttribute(req, ME, u);
		 return "redirect:/app/frame";
	}
	
	@RequestMapping("/frame")
	public String frame(){
		
		return "frame";
	}
	
	public static void main(String[] args) throws Exception {
		SpringApplication.run(MainController.class, args);
	}

}
