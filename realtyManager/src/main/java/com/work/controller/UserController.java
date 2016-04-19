package com.work.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.work.bean.TbUser;
import com.work.mapper.BasicDao;
import com.work.mapper.TbUserDao;

@Controller
@RequestMapping("/user")
public class UserController extends BasicController<TbUser>{
	
	@Resource
	private TbUserDao tbUserDao;
	
	public static final String PREFIX="tbUser/";

	@Override
	protected String getPrefix() {
		return PREFIX;
	}

	@Override
	protected BasicDao<TbUser> getDao() {
		return tbUserDao;
	}


}
