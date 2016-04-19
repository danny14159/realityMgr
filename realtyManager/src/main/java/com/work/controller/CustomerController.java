package com.work.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.work.bean.TbCustomer;
import com.work.mapper.BasicDao;
import com.work.mapper.TbCustomerDao;

@Controller
@RequestMapping("/customer")
public class CustomerController extends BasicController<TbCustomer>{
	
	@Resource
	private TbCustomerDao tbCustomerDao;
	
	public static final String PREFIX="tbCustomer/";

	@Override
	protected String getPrefix() {
		return PREFIX;
	}

	@Override
	protected BasicDao<TbCustomer> getDao() {
		return tbCustomerDao;
	}


}
