package com.work.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.work.bean.TbOrder;
import com.work.mapper.BasicDao;
import com.work.mapper.TbCustomerDao;
import com.work.mapper.TbHouseDao;
import com.work.mapper.TbOrderDao;

@Controller
@RequestMapping("/order")
public class OrderController extends BasicController<TbOrder>{
	
	@Resource
	private TbOrderDao tbOrderDao;
	@Resource
	private TbCustomerDao tbCustomerDao;
	@Resource
	private TbHouseDao tbHouseDao;
	
	public static final String PREFIX="tbOrder/";

	@Override
	protected String getPrefix() {
		return PREFIX;
	}

	@Override
	protected BasicDao<TbOrder> getDao() {
		return tbOrderDao;
	}

	@Override
	public String add(Model model) {
		model.addAttribute("customer", tbCustomerDao.list(null));
		model.addAttribute("houses", tbHouseDao.list(null));
		return super.add(model);
	}
}
