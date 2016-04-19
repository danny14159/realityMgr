package com.work.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.work.bean.TbOrder;
import com.work.mapper.BasicDao;
import com.work.mapper.TbOrderDao;

@Controller
@RequestMapping("/order")
public class OrderController extends BasicController<TbOrder>{
	
	@Resource
	private TbOrderDao tbOrderDao;
	
	public static final String PREFIX="tbOrder/";

	@Override
	protected String getPrefix() {
		return PREFIX;
	}

	@Override
	protected BasicDao<TbOrder> getDao() {
		return tbOrderDao;
	}


}
